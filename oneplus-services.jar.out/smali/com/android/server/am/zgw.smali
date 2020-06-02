.class public Lcom/android/server/am/zgw;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/zgw$tsu;,
        Lcom/android/server/am/zgw$zta;,
        Lcom/android/server/am/zgw$you;,
        Lcom/android/server/am/zgw$ssp;,
        Lcom/android/server/am/zgw$sis;,
        Lcom/android/server/am/zgw$rtg;
    }
.end annotation


# static fields
.field public static final ACTION_NOTIFICATION_LISTENER_UPDATE:Ljava/lang/String; = "action.appboot.notification_listener_update"

.field private static final ACTION_TEST:Ljava/lang/String; = "com.haha.action.test"

.field private static Ak:Ljava/lang/String; = null

.field private static Bk:Ljava/lang/String; = null

.field private static Ck:Ljava/lang/String; = null

.field private static final DEFAULT:I = -0x1

.field private static Dk:Ljava/lang/String; = null

.field private static final Ek:Ljava/lang/String; = "AppBoot"

.field private static Fk:Z = false

.field private static final Gk:Ljava/lang/String; = "com.google.android.gms"

.field private static Hk:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static Ik:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field private static Jk:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/zgw$rtg;",
            ">;"
        }
    .end annotation
.end field

.field private static Kk:Ljava/lang/Object; = null

.field private static Lk:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MSG_GET_ONLINECONFIG:I = 0x3

.field public static Mk:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final Nk:I = 0x1

.field public static final Ok:I = 0x2

.field private static final PROP_DEBUG:Ljava/lang/String; = "persist.sys.appboot.debug"

.field public static final Pk:I = 0x4

.field private static Qk:Ljava/util/ArrayList; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final Rk:I = 0x1

.field private static final Sk:I = 0x2

.field public static final TAG:Ljava/lang/String; = "OnePlusAppBootManager"

.field private static final Tk:I = 0x15

.field private static final Uk:I = 0x16

.field public static final VERSION:I = 0xf5d2e0

.field private static final Vk:I = 0x17

.field private static final Wk:I = 0x1f

.field private static final XML_ATTR_SWITCH:Ljava/lang/String; = "switch"

.field private static final XML_ATTR_VERSION:Ljava/lang/String; = "version"

.field private static final XML_TAG_NAMESPACE:Ljava/lang/String; = ""

.field private static final XML_TAG_PKG:Ljava/lang/String; = "pkg"

.field private static final Xk:I = 0x20

.field private static final Yk:I = 0x21

.field private static final Zk:Ljava/lang/String; = "/data/system/appboot/appboot.xml"

.field private static final _k:Ljava/lang/String; = "/system/etc/presetlist.xml"

.field private static final al:Ljava/lang/String; = "/system/etc/appbootspecial.xml"

.field private static final bl:Ljava/lang/String; = "appboot"

.field public static ck:Z = false

.field private static final cl:Ljava/lang/String; = "prelist"

.field public static dk:Z = false

.field private static final dl:Ljava/lang/String; = "package"

.field public static ek:Z = false

.field private static final el:Ljava/lang/String; = "flag"

.field private static fk:Z = false

.field private static final fl:Ljava/lang/String; = "setted"

.field private static gk:Z = false

.field private static final gl:Ljava/lang/String; = "boot"

.field private static final hk:Ljava/lang/String; = "persist.sys.appboot.using"

.field private static final hl:Ljava/lang/String; = "action"

.field private static final ik:Ljava/lang/String; = "persist.sys.appboot.allow"

.field private static final il:Ljava/lang/String; = "caller"

.field private static final jk:Ljava/lang/String; = "persist.sys.appboot.flags"

.field private static final jl:Ljava/lang/String; = "callee"

.field private static final kk:Ljava/lang/String; = "persist.sys.oem.region"

.field private static final kl:Ljava/lang/String; = "2"

.field private static final lk:Ljava/lang/String; = "gsm.sim.operator.iso-country"

.field private static final ll:Ljava/lang/String; = ""

.field private static mPkgMap:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/zgw$sis;",
            ">;"
        }
    .end annotation
.end field

.field private static mPms:Lcom/android/server/pm/PackageManagerService; = null

.field private static mRegion:Ljava/lang/String; = null

.field private static mScreenOn:Z = false

.field private static final mk:Ljava/lang/String; = "persist.sys.appboot.blacklist"

.field private static final ml:J = 0xea60L

.field private static final nk:Ljava/lang/String; = "persist.sys.assert.panic"

.field private static final nl:I = 0x8

.field private static ol:J = 0x0L

.field private static opSmartPowerControl:Lcom/android/server/i; = null

.field private static final pk:Ljava/lang/String; = "persist.sys.rp.debug"

.field private static pl:I = 0x0

.field private static final qk:Ljava/lang/String; = "persist.sys.appboot.usersetted"

.field private static ql:I = 0x0

.field private static final rk:Ljava/lang/String; = "persist.sys.appboot.recorder"

.field public static sDebug:Z = false

.field public static sInUsing:Z = false

.field private static sInstance:Lcom/android/server/am/zgw; = null

.field private static final sk:Ljava/lang/String; = "persist.sys.appboot.restartservice"

.field private static sl:Z = false

.field public static tk:Z = false

.field private static tl:Z = false

.field public static uk:Z = false

.field public static final vk:J = 0x5265c00L

.field private static wk:I = 0x0

.field public static final xk:I = 0x1

.field private static yk:I = 0x0

.field private static final zk:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"


# instance fields
.field private Aj:Lcom/oneplus/config/ConfigObserver;

.field private Bj:Z

.field private Cj:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Dj:Z

.field private Ej:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Fj:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Gj:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Hj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Ij:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Jj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Kj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Lj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Mj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Nj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Oj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Pj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Qj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Rj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Sj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Tj:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private Uj:Z

.field private Vj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Wj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field Xj:Landroid/os/HandlerThread;

.field Yj:Lcom/android/server/am/zgw$you;

.field private Zj:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _j:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private ak:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private bk:Lcom/android/server/am/zgw$tsu;

.field private mAms:Lcom/android/server/am/ActivityManagerService;

.field private mContext:Landroid/content/Context;

.field private mGeneralReceiver:Landroid/content/BroadcastReceiver;

.field private mPackageReceiver:Landroid/content/BroadcastReceiver;

.field private mRecorder:Lcom/android/server/am/oxb;

.field private mResolver:Landroid/content/ContentResolver;

.field private mSettingsObserver:Lcom/android/server/am/zgw$ssp;

.field private yj:Ljava/lang/String;

.field private zj:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x1a

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/zgw;->sInUsing:Z

    sput-boolean v0, Lcom/android/server/am/zgw;->ck:Z

    sput-boolean v2, Lcom/android/server/am/zgw;->sDebug:Z

    sput-boolean v0, Lcom/android/server/am/zgw;->dk:Z

    sput-boolean v2, Lcom/android/server/am/zgw;->ek:Z

    sput-boolean v2, Lcom/android/server/am/zgw;->fk:Z

    sput-boolean v2, Lcom/android/server/am/zgw;->gk:Z

    sget-boolean v1, Lcom/android/server/am/zgw;->sInUsing:Z

    sput-boolean v1, Lcom/android/server/am/zgw;->tk:Z

    new-array v1, v0, [I

    aput v0, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    xor-int/2addr v1, v0

    const-string v3, "persist.sys.appboot.restartservice"

    invoke-static {v3, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/zgw;->uk:Z

    const/16 v1, 0xa

    sput v1, Lcom/android/server/am/zgw;->wk:I

    sput v2, Lcom/android/server/am/zgw;->yk:I

    const-string v1, ""

    sput-object v1, Lcom/android/server/am/zgw;->mRegion:Ljava/lang/String;

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/am/zgw;->Ak:Ljava/lang/String;

    sput-object v1, Lcom/android/server/am/zgw;->Bk:Ljava/lang/String;

    sput-object v1, Lcom/android/server/am/zgw;->Ck:Ljava/lang/String;

    sput-object v1, Lcom/android/server/am/zgw;->Dk:Ljava/lang/String;

    sput-boolean v0, Lcom/android/server/am/zgw;->mScreenOn:Z

    sput-boolean v0, Lcom/android/server/am/zgw;->Fk:Z

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/server/am/zgw;->Hk:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/server/am/zgw;->Ik:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/server/am/zgw;->mPkgMap:Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lcom/android/server/am/zgw;->Jk:Ljava/util/HashMap;

    sput-object v1, Lcom/android/server/am/zgw;->sInstance:Lcom/android/server/am/zgw;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v1, Lcom/android/server/am/zgw;->Kk:Ljava/lang/Object;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/am/zgw;->Lk:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    const-string v3, "com.dangdang.buy2.keepalive.service.RestartJobService"

    const-string v4, "com.dewmobile.sensor.MyJobService"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/android/server/am/zgw;->Mk:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    const-string v3, "com.google."

    const-string v4, "com.android.vending"

    const-string v5, "com.oneplus."

    const-string v6, "net.oneplus."

    filled-new-array {v3, v4, v5, v6}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v1, Lcom/android/server/am/zgw;->Qk:Ljava/util/ArrayList;

    const-wide/32 v3, 0xea60

    sput-wide v3, Lcom/android/server/am/zgw;->ol:J

    const/16 v1, 0x8

    sput v1, Lcom/android/server/am/zgw;->pl:I

    const/16 v1, 0x384

    sput v1, Lcom/android/server/am/zgw;->ql:I

    new-array v1, v0, [I

    aput v0, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/zgw;->sl:Z

    sget-boolean v1, Lcom/android/server/am/zgw;->sl:Z

    xor-int/2addr v0, v1

    sput-boolean v0, Lcom/android/server/am/zgw;->tl:Z

    return-void
.end method

.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/zgw;->mResolver:Landroid/content/ContentResolver;

    iput-object v0, p0, Lcom/android/server/am/zgw;->mSettingsObserver:Lcom/android/server/am/zgw$ssp;

    iput-object v0, p0, Lcom/android/server/am/zgw;->yj:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/am/zgw;->zj:Ljava/lang/String;

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/zgw;->Bj:Z

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/zgw;->Cj:Ljava/util/HashSet;

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/zgw;->Dj:Z

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/zgw;->Ej:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/zgw;->Fj:Ljava/util/HashSet;

    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/zgw;->Gj:Ljava/util/HashSet;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/zgw;->Hj:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/zgw;->Ij:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/zgw;->Jj:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/zgw;->Kj:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/zgw;->Lj:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/zgw;->Mj:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/zgw;->Nj:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "cn.jpush.android.service.PushService"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/android/server/am/zgw;->Oj:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    const-string v4, "android.appwidget.action.APPWIDGET_UPDATE"

    const-string v5, "android.appwidget.action.APPWIDGET_BIND"

    const-string v6, "android.appwidget.action.APPWIDGET_CONFIGURE"

    const-string v7, "android.appwidget.action.APPWIDGET_DELETED"

    const-string v8, "android.appwidget.action.APPWIDGET_UPDATE_OPTIONS"

    const-string v9, "android.appwidget.action.APPWIDGET_DISABLED"

    const-string v10, "android.appwidget.action.APPWIDGET_ENABLED"

    filled-new-array/range {v4 .. v10}, [Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Lcom/android/server/am/zgw;->Pj:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/zgw;->Qj:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/zgw;->Rj:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/zgw;->Sj:Ljava/util/ArrayList;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Lcom/android/server/am/zgw;->Tj:Ljava/util/HashMap;

    iput-boolean v1, p0, Lcom/android/server/am/zgw;->Uj:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/zgw;->Vj:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    const-string v3, "android"

    const-string v4, "com.android.nfc"

    const-string v5, "com.oneplus.speechassist"

    filled-new-array {v3, v4, v5}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/server/am/zgw;->Wj:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/am/ugm;

    invoke-direct {v1, p0}, Lcom/android/server/am/ugm;-><init>(Lcom/android/server/am/zgw;)V

    iput-object v1, p0, Lcom/android/server/am/zgw;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lcom/android/server/am/zgw;->mAms:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/zgw;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/am/vdb;

    invoke-direct {v1, p0}, Lcom/android/server/am/vdb;-><init>(Lcom/android/server/am/zgw;)V

    iput-object v1, p0, Lcom/android/server/am/zgw;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    iput-object v0, p0, Lcom/android/server/am/zgw;->Xj:Landroid/os/HandlerThread;

    iput-object v0, p0, Lcom/android/server/am/zgw;->Yj:Lcom/android/server/am/zgw$you;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/zgw;->Zj:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/zgw;->_j:Lcom/android/internal/app/ProcessMap;

    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/zgw;->ak:Lcom/android/internal/app/ProcessMap;

    sput-object p1, Lcom/android/server/am/zgw;->mPms:Lcom/android/server/pm/PackageManagerService;

    sget-boolean p1, Lcom/android/server/am/zgw;->sInUsing:Z

    const-string v0, "persist.sys.appboot.using"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/am/zgw;->sInUsing:Z

    sget-boolean p1, Lcom/android/server/am/zgw;->sDebug:Z

    const-string v0, "persist.sys.appboot.debug"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/am/zgw;->sDebug:Z

    sget-boolean p1, Lcom/android/server/am/zgw;->ek:Z

    const-string v0, "persist.sys.assert.panic"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/am/zgw;->ek:Z

    sget-boolean p1, Lcom/android/server/am/zgw;->ck:Z

    const-string v0, "persist.sys.appboot.blacklist"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/am/zgw;->ck:Z

    const-string p1, "persist.sys.appboot.flags"

    invoke-static {p1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    sput p1, Lcom/android/server/am/zgw;->yk:I

    const-string p1, "persist.sys.oem.region"

    const-string v0, ""

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcom/android/server/am/zgw;->mRegion:Ljava/lang/String;

    const-string p1, "persist.sys.rp.debug"

    invoke-static {p1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    sput-boolean p1, Lcom/android/server/am/zgw;->fk:Z

    sget-boolean p1, Lcom/android/server/am/zgw;->sInUsing:Z

    if-eqz p1, :cond_0

    sput-boolean p1, Lcom/android/server/am/zgw;->tk:Z

    invoke-virtual {p0}, Lcom/android/server/am/zgw;->hb()I

    :cond_0
    return-void
.end method

.method private Yc()V
    .locals 2

    const-string p0, "OnePlusAppBootManager"

    const-string v0, "# dump # VERSION # 16110304"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# dump # sInUsing # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/zgw;->sInUsing:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# dump # mAppBootSwitch # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/zgw;->tk:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# dump # sDebug # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/zgw;->sDebug:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# dump # sDebugOemlog # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/zgw;->ek:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# dump # sBlackListEnable # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/zgw;->ck:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# dump # mGlobalFlags # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/zgw;->yk:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/server/am/zgw;->Jk:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/ArrayList;
    .locals 1

    sget-object v0, Lcom/android/server/am/zgw;->Lk:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1500()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/zgw;->fk:Z

    return v0
.end method

.method static synthetic access$200(Ljava/lang/String;)Z
    .locals 0

    invoke-static {p0}, Lcom/android/server/am/zgw;->rb(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$2100()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/zgw;->gk:Z

    return v0
.end method

.method static synthetic access$300()Lcom/android/server/i;
    .locals 1

    sget-object v0, Lcom/android/server/am/zgw;->opSmartPowerControl:Lcom/android/server/i;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    sget v0, Lcom/android/server/am/zgw;->wk:I

    return v0
.end method

.method static synthetic bb()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/server/am/zgw;->mPkgMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic bio(Lcom/android/server/am/zgw;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/zgw;->nm()V

    return-void
.end method

.method private bud(J)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "sendNextChangeRuleMsg # "

    invoke-static {v0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/zgw;->Yj:Lcom/android/server/am/zgw$you;

    const/16 v0, 0x20

    invoke-virtual {p0, v0, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private static cno(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5

    const-string v0, "IOException # writeStringToFile # "

    const-string v1, "OnePlusAppBootManager"

    if-nez p1, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_1
    invoke-virtual {v3}, Ljava/io/File;->createNewFile()Z

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Exception # "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " not exist"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    return p0

    :cond_2
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p0, 0x1

    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return p0

    :catchall_0
    move-exception p0

    move-object v2, v3

    goto :goto_3

    :catch_1
    move-exception p0

    move-object v2, v3

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catch_2
    move-exception p0

    :goto_1
    :try_start_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 p0, -0x3

    if-eqz v2, :cond_3

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return p0

    :goto_3
    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_4

    :catch_4
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_4
    throw p0
.end method

.method static synthetic cno(Lcom/android/server/am/zgw;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/zgw;->Yc()V

    return-void
.end method

.method public static eb()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/am/zgw;->sInUsing:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sget-object v1, Lcom/android/server/am/zgw;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/zgw$sis;

    invoke-virtual {v2}, Lcom/android/server/am/zgw$sis;->_a()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    invoke-static {v2}, Lcom/android/server/am/zgw$sis;->you(Lcom/android/server/am/zgw$sis;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method public static g(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/zgw$sis;->_a()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/zgw$sis;->Ya()I

    move-result p0

    and-int/lit8 p0, p0, 0x20

    if-eqz p0, :cond_0

    return v1

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private gwm(Lcom/android/server/am/ProcessRecord;)Z
    .locals 3

    iget p0, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    sget v0, Lcom/android/server/am/zgw;->ql:I

    const-string v1, "OnePlusAppBootManager"

    const/4 v2, 0x0

    if-ge p0, v0, :cond_1

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isCanForceStopAbnormalProcess r.curAdj <= mThresholdAdj:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/server/am/zgw;->ql:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", return false"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2

    :cond_1
    iget p0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {p0}, Lcom/android/server/am/AppRecordManager;->getProcState(I)I

    move-result p0

    const/4 v0, 0x6

    if-gt p0, v0, :cond_3

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_2

    const-string p0, "isCanForceStopAbnormalProcess r.getCurProcState() <= ActivityManager.PROCESS_STATE_BOUND_FOREGROUND_SERVICE, return false"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2

    :cond_3
    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/OnePlusUtil$zta;->A()I

    move-result p0

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-eq p0, v0, :cond_5

    invoke-static {}, Lcom/android/server/OnePlusUtil$you;->getInstance()Lcom/android/server/OnePlusUtil$you;

    move-result-object p0

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, p1}, Lcom/android/server/OnePlusUtil$you;->gck(I)Z

    move-result p0

    if-nez p0, :cond_5

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_4

    const-string p0, "isCanForceStopAbnormalProcess r.uid is fg, return false"

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v2

    :cond_5
    const/4 p0, 0x1

    return p0
.end method

.method private ha(Z)V
    .locals 5

    sget-object p0, Lcom/android/server/am/zgw;->Hk:Ljava/util/HashMap;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/am/zgw;->Hk:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object v2

    if-eqz p1, :cond_0

    sget-object v3, Lcom/android/server/am/zgw;->Hk:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Lcom/android/server/am/zgw$sis;->setAction(I)V

    goto :goto_0

    :cond_0
    sget-object v3, Lcom/android/server/am/zgw;->Hk:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/android/server/am/zgw$sis;->getAction()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x2

    invoke-virtual {v2, v1}, Lcom/android/server/am/zgw$sis;->setAction(I)V

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public static isNotAppUserSetted(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/zgw$sis;->_a()I

    move-result p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic kth(Lcom/android/server/am/zgw;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/zgw;->om()V

    return-void
.end method

.method private lm()V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "autoChangeRule"

    invoke-static {v0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_0
    sget-boolean v0, Lcom/android/server/am/zgw;->gk:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/am/zgw;->mRecorder:Lcom/android/server/am/oxb;

    invoke-virtual {p0}, Lcom/android/server/am/oxb;->clearRecords()V

    :cond_1
    return-void
.end method

.method private mm()V
    .locals 5

    sget-object p0, Lcom/android/server/am/zgw;->Hk:Ljava/util/HashMap;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/am/zgw;->Hk:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-string v2, "OnePlusAppBootManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# dump # HugePowerPkg # "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static myLog(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/zgw;->dk:Z

    const-string v1, "OnePlusAppBootManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#cuid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cpid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private nm()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# dumpList mServiceActionBlackList # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/zgw;->Kj:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusAppBootManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpList mRestartServiceWhiteList # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/zgw;->Lj:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpList mServiceActionWhiteList # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/zgw;->Mj:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpList mServiceClassBlackList # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/zgw;->Nj:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpList mBroadcastIntentClassBlackList # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/zgw;->Sj:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpList mBroadcastIntentActionWhiteList # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/zgw;->Qj:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpList mBroadcastIntentActionBlackList # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/zgw;->Rj:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpList mActivityClassBlackList # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/zgw;->Hj:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpList mProviderClassBlackList # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/zgw;->Ij:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpList mProviderCallerWhiteList # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/zgw;->Jj:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpList mKillPackageProcessName # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/zgw;->Tj:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpList mHostAppForServiceList # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/zgw;->Wj:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# dumpList mProcessAbnormalKilledWhiteList # "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/zgw;->Zj:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private om()V
    .locals 7

    sget-object p0, Lcom/android/server/am/zgw;->Kk:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/am/zgw;->mPkgMap:Ljava/util/HashMap;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/am/zgw;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-ge v0, v1, :cond_0

    const-string v0, "OnePlusAppBootManager"

    const-string v1, " # dump # mPkgMap = null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    sget-object v2, Lcom/android/server/am/zgw;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/zgw$sis;

    add-int/2addr v0, v1

    const-string v4, "OnePlusAppBootManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# dump # "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic oxb(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/zgw;->mScreenOn:Z

    return p0
.end method

.method private pb(Ljava/lang/String;)I
    .locals 3

    sget-boolean v0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "forceStopPkg # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/zgw;->mAms:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_4

    if-eqz p1, :cond_4

    :try_start_0
    invoke-static {p1}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/zgw$sis;->getAction()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    sget-object v1, Lcom/android/server/am/zgw;->Dk:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 p0, 0x3

    return p0

    :cond_2
    sget-object v1, Lcom/android/server/am/zgw;->Ck:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 p0, 0x4

    return p0

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/zgw;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object p0, p0, Lcom/android/server/am/zgw;->mAms:Lcom/android/server/am/ActivityManagerService;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {p0, p1, v2}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Lcom/android/server/am/zgw$sis;->lqr(I)V

    monitor-exit v1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception# forceStopPkg: forceStopPkg error : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnePlusAppBootManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    const/4 p0, -0x1

    return p0
.end method

.method private pm()V
    .locals 15

    const-string v0, "mProviderClassBlackList size "

    const-string v1, "mActivityClassBlackList size "

    const-string v2, "mBroadcastIntentActionBlackList size "

    const-string v3, "mBroadcastIntentActionWhiteList size "

    const-string v4, "mBroadcastIntentClassBlackList size "

    const-string v5, "mServiceClassBlackList size "

    const-string v6, "mServiceActionWhiteList size "

    const-string v7, "mServiceActionBlackList size "

    const-string v8, "readXml_specialList"

    invoke-static {v8}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/io/File;

    const-string v9, "/system/etc/appbootspecial.xml"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-nez v9, :cond_0

    const-string p0, "readXml_specialList # file don\'t exist!"

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v9, 0x0

    :try_start_0
    new-instance v10, Ljava/io/FileInputStream;

    invoke-direct {v10, v8}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v8

    invoke-interface {v8, v10, v9}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_1
    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v9

    const/4 v11, 0x2

    const/4 v12, 0x1

    if-ne v9, v11, :cond_11

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v13, "svcActB"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    sget-boolean v13, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v13, :cond_2

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "1. svcActB # value="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_2
    if-eqz v11, :cond_11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-le v13, v12, :cond_11

    iget-object v13, p0, Lcom/android/server/am/zgw;->Kj:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_3
    const-string v13, "svcActW"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    sget-boolean v13, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v13, :cond_4

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "2. svcActW # value="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_4
    if-eqz v11, :cond_11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-le v13, v12, :cond_11

    iget-object v13, p0, Lcom/android/server/am/zgw;->Mj:Ljava/util/ArrayList;

    goto :goto_0

    :cond_5
    const-string v13, "svcClsB"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    sget-boolean v13, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v13, :cond_6

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "3. svcClsB # value="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_6
    if-eqz v11, :cond_11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-le v13, v12, :cond_11

    iget-object v13, p0, Lcom/android/server/am/zgw;->Nj:Ljava/util/ArrayList;

    goto :goto_0

    :cond_7
    const-string v13, "brdClsB"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    sget-boolean v13, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v13, :cond_8

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "4. brdClsB # value="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_8
    if-eqz v11, :cond_11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-le v13, v12, :cond_11

    iget-object v13, p0, Lcom/android/server/am/zgw;->Sj:Ljava/util/ArrayList;

    goto/16 :goto_0

    :cond_9
    const-string v13, "brdActW"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    sget-boolean v13, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v13, :cond_a

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "5. brdActW # value="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_a
    if-eqz v11, :cond_11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-le v13, v12, :cond_11

    iget-object v13, p0, Lcom/android/server/am/zgw;->Qj:Ljava/util/ArrayList;

    goto/16 :goto_0

    :cond_b
    const-string v13, "brdActB"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    sget-boolean v13, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v13, :cond_c

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "6. brdActB # value="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_c
    if-eqz v11, :cond_11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-le v13, v12, :cond_11

    iget-object v13, p0, Lcom/android/server/am/zgw;->Rj:Ljava/util/ArrayList;

    goto/16 :goto_0

    :cond_d
    const-string v13, "actClsB"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    sget-boolean v13, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v13, :cond_e

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "7. actClsB # value="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_e
    if-eqz v11, :cond_11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-le v13, v12, :cond_11

    iget-object v13, p0, Lcom/android/server/am/zgw;->Hj:Ljava/util/ArrayList;

    goto/16 :goto_0

    :cond_f
    const-string v13, "pvdClsB"

    invoke-virtual {v13, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_11

    invoke-interface {v8}, Lorg/xmlpull/v1/XmlPullParser;->nextText()Ljava/lang/String;

    move-result-object v11

    sget-boolean v13, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v13, :cond_10

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "8. pvdClsB # value="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_10
    if-eqz v11, :cond_11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v13

    if-le v13, v12, :cond_11

    iget-object v13, p0, Lcom/android/server/am/zgw;->Ij:Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    :cond_11
    :goto_1
    if-ne v9, v12, :cond_1

    :try_start_2
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    sget-boolean v8, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v8, :cond_13

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/zgw;->Kj:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/zgw;->Mj:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/zgw;->Nj:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/zgw;->Sj:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/zgw;->Qj:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/zgw;->Rj:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/zgw;->Hj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_5

    :catchall_0
    move-exception v8

    goto/16 :goto_6

    :catch_1
    move-exception v8

    move-object v9, v10

    goto :goto_3

    :catchall_1
    move-exception v8

    move-object v10, v9

    goto/16 :goto_6

    :catch_2
    move-exception v8

    :goto_3
    :try_start_3
    const-string v10, "OnePlusAppBootManager"

    const-string v11, "readXml_specialList # failed parsing "

    invoke-static {v10, v11, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v9, :cond_12

    :try_start_4
    invoke-virtual {v9}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v8

    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    :cond_12
    :goto_4
    sget-boolean v8, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v8, :cond_13

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/zgw;->Kj:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/zgw;->Mj:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/zgw;->Nj:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/zgw;->Sj:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/zgw;->Qj:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/zgw;->Rj:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/zgw;->Hj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_5
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/zgw;->Ij:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_13
    return-void

    :goto_6
    if-eqz v10, :cond_14

    :try_start_5
    invoke-virtual {v10}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_7

    :catch_4
    move-exception v9

    invoke-virtual {v9}, Ljava/io/IOException;->printStackTrace()V

    :cond_14
    :goto_7
    sget-boolean v9, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v9, :cond_15

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/zgw;->Kj:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/zgw;->Mj:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/zgw;->Nj:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/zgw;->Sj:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/zgw;->Qj:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/zgw;->Rj:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/zgw;->Hj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/zgw;->Ij:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_15
    throw v8
.end method

.method private static qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;
    .locals 5

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " !!!!!!!Exception # getAppBootInfo # pkgName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_0
    sget-object v0, Lcom/android/server/am/zgw;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/zgw$sis;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/am/zgw$sis;

    invoke-direct {v0, p0}, Lcom/android/server/am/zgw$sis;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/am/zgw;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v1, p0}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/zgw$sis;->zta(Landroid/content/pm/PackageParser$Package;)V

    sget-object v1, Lcom/android/server/am/zgw;->Kk:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/am/zgw;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
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
    const-string v2, "OnePlusAppBootManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fatal Exception # getAppBootInfo # "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    monitor-exit v1

    goto :goto_2

    :goto_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    :goto_2
    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# getAppBootInfo # abi="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_2
    return-object v0
.end method

.method private qm()Z
    .locals 5

    sget v0, Lcom/android/server/am/zgw;->yk:I

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

    const-string v2, "cn"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iput-boolean v1, p0, Lcom/android/server/am/zgw;->Bj:Z

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/server/am/zgw;->cjf(Z)V

    goto :goto_1

    :cond_1
    const-string v2, "in"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    iput-boolean v4, p0, Lcom/android/server/am/zgw;->Bj:Z

    if-eqz v2, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/server/am/zgw;->cjf(Z)V

    goto :goto_1

    :cond_3
    move v1, v4

    :goto_1
    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-nez p0, :cond_4

    if-eqz v1, :cond_5

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "responseSIMStateChanged # mccCountry="

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", ret="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OnePlusAppBootManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v1
.end method

.method private static rb(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/android/server/am/zgw;->Qk:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-boolean v1, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# isPackageInPresetWhitelist # whitelist-pkg # pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_2
    return v0

    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private registerGeneralReceiver()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/zgw;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p0, "OnePlusAppBootManager"

    const-string v0, "Fatal Exception # registerGeneralReceiver # mContext=null"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v1, "com.haha.action.test"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/am/zgw;->mRegion:Ljava/lang/String;

    const-string v2, "CN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    sget v1, Lcom/android/server/am/zgw;->yk:I

    and-int/lit8 v1, v1, 0x1

    if-nez v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/zgw;->qm()Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/zgw;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/am/zgw;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private registerPackageReceiver()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/zgw;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p0, "OnePlusAppBootManager"

    const-string v0, "Fatal Exception # registerPackageReceiver # mContext=null"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/android/server/am/zgw;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/server/am/zgw;->mPackageReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private rm()V
    .locals 6

    sget-object p0, Lcom/android/server/am/zgw;->Jk:Ljava/util/HashMap;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/am/zgw;->Jk:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/zgw$rtg;

    iget v2, v1, Lcom/android/server/am/zgw$rtg;->mAction:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    iget-object v1, v1, Lcom/android/server/am/zgw$rtg;->mPkgName:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/zgw$sis;->_a()I

    move-result v2

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v2, :cond_1

    const-string v2, "OnePlusAppBootManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "resumeWhiteListFromOnlineConfig : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/am/zgw$sis;->Za()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v1, v3}, Lcom/android/server/am/zgw$sis;->setAction(I)V

    goto :goto_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic rtg(Lcom/android/server/am/zgw;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/zgw;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private rtg(Lorg/json/JSONArray;)V
    .locals 11

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3f

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "forceSwitch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/am/zgw;->ub(Ljava/lang/String;)V

    const-string v4, "OnePlusAppBootManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] AppBoot forceSwitch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "policyTimes"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/server/am/zgw;->wk:I

    const-string v3, "OnePlusAppBootManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] AppBoot policyTimes: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/zgw;->wk:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pre_pkg_map"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sget-object v3, Lcom/android/server/am/zgw;->Jk:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_e

    :try_start_1
    const-string v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v5, v0

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "package"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "flag"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "action"

    invoke-virtual {v6, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    sget-object v9, Lcom/android/server/am/zgw;->Jk:Ljava/util/HashMap;

    new-instance v10, Lcom/android/server/am/zgw$rtg;

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-direct {v10, p0, v7, v8, v6}, Lcom/android/server/am/zgw$rtg;-><init>(Lcom/android/server/am/zgw;Ljava/lang/String;II)V

    invoke-virtual {v9, v7, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v6, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "resolveAppBootConfigFromJSON # "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v8, Lcom/android/server/am/zgw;->Jk:Ljava/util/HashMap;

    invoke-virtual {v8, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_4
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception p1

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1

    :cond_5
    :goto_2
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "job_control"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/zgw;->Fk:Z

    const-string v3, "OnePlusAppBootManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] AppBoot job control: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/am/zgw;->Fk:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "func_canProviderGo"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/am/zgw;->Bj:Z

    const-string v3, "OnePlusAppBootManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] func_provider: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/server/am/zgw;->Bj:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "svcActB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/zgw;->Kj:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_e

    :try_start_3
    iget-object v5, p0, Lcom/android/server/am/zgw;->Kj:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move v5, v0

    :goto_3
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_9

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/zgw;->Kj:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_8

    iget-object v7, p0, Lcom/android/server/am/zgw;->Kj:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_9
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    const-string v3, "[OnlineConfig] update svcActB success"

    invoke-static {v3}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_e

    goto :goto_4

    :catchall_1
    move-exception p1

    :try_start_5
    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    :cond_a
    :goto_4
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pvdCerW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/zgw;->Jj:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_e

    :try_start_7
    iget-object v5, p0, Lcom/android/server/am/zgw;->Jj:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move v5, v0

    :goto_5
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_c

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/zgw;->Jj:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_b

    iget-object v7, p0, Lcom/android/server/am/zgw;->Jj:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_b
    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_c
    monitor-exit v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    const-string v3, "[OnlineConfig] update pvdCerW success"

    invoke-static {v3}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V
    :try_end_8
    .catch Lorg/json/JSONException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_e

    goto :goto_6

    :catchall_2
    move-exception p1

    :try_start_9
    monitor-exit v4
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    throw p1

    :cond_d
    :goto_6
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "svcActW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/zgw;->Mj:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_a
    .catch Lorg/json/JSONException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_e

    :try_start_b
    iget-object v5, p0, Lcom/android/server/am/zgw;->Mj:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move v5, v0

    :goto_7
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_f

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/zgw;->Mj:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_e

    iget-object v7, p0, Lcom/android/server/am/zgw;->Mj:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_e
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_f
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    const-string v3, "[OnlineConfig] update svcActW success"

    invoke-static {v3}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V
    :try_end_c
    .catch Lorg/json/JSONException; {:try_start_c .. :try_end_c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_e

    goto :goto_8

    :catchall_3
    move-exception p1

    :try_start_d
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw p1

    :cond_10
    :goto_8
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "rActPkg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/zgw;->Ej:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_e
    .catch Lorg/json/JSONException; {:try_start_e .. :try_end_e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0
    .catchall {:try_start_e .. :try_end_e} :catchall_e

    :try_start_f
    iget-object v5, p0, Lcom/android/server/am/zgw;->Ej:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move v5, v0

    :goto_9
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_12

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/zgw;->Ej:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_11

    iget-object v7, p0, Lcom/android/server/am/zgw;->Ej:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_11
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_12
    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    const-string v3, "[OnlineConfig] update rActPkg success"

    invoke-static {v3}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V
    :try_end_10
    .catch Lorg/json/JSONException; {:try_start_10 .. :try_end_10} :catch_1
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0
    .catchall {:try_start_10 .. :try_end_10} :catchall_e

    goto :goto_a

    :catchall_4
    move-exception p1

    :try_start_11
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_4

    :try_start_12
    throw p1

    :cond_13
    :goto_a
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "svcClsB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/zgw;->Nj:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_12
    .catch Lorg/json/JSONException; {:try_start_12 .. :try_end_12} :catch_1
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0
    .catchall {:try_start_12 .. :try_end_12} :catchall_e

    :try_start_13
    iget-object v5, p0, Lcom/android/server/am/zgw;->Nj:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move v5, v0

    :goto_b
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_15

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/zgw;->Nj:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_14

    iget-object v7, p0, Lcom/android/server/am/zgw;->Nj:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_14
    add-int/lit8 v5, v5, 0x1

    goto :goto_b

    :cond_15
    monitor-exit v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_5

    :try_start_14
    const-string v3, "[OnlineConfig] update svcClsB success"

    invoke-static {v3}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V
    :try_end_14
    .catch Lorg/json/JSONException; {:try_start_14 .. :try_end_14} :catch_1
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0
    .catchall {:try_start_14 .. :try_end_14} :catchall_e

    goto :goto_c

    :catchall_5
    move-exception p1

    :try_start_15
    monitor-exit v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_5

    :try_start_16
    throw p1

    :cond_16
    :goto_c
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "brdClsB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/zgw;->Sj:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_16
    .catch Lorg/json/JSONException; {:try_start_16 .. :try_end_16} :catch_1
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0
    .catchall {:try_start_16 .. :try_end_16} :catchall_e

    :try_start_17
    iget-object v5, p0, Lcom/android/server/am/zgw;->Sj:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move v5, v0

    :goto_d
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_18

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/zgw;->Sj:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_17

    iget-object v7, p0, Lcom/android/server/am/zgw;->Sj:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_17
    add-int/lit8 v5, v5, 0x1

    goto :goto_d

    :cond_18
    monitor-exit v4
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_6

    :try_start_18
    const-string v3, "[OnlineConfig] update brdClsB success"

    invoke-static {v3}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V
    :try_end_18
    .catch Lorg/json/JSONException; {:try_start_18 .. :try_end_18} :catch_1
    .catch Ljava/lang/Exception; {:try_start_18 .. :try_end_18} :catch_0
    .catchall {:try_start_18 .. :try_end_18} :catchall_e

    goto :goto_e

    :catchall_6
    move-exception p1

    :try_start_19
    monitor-exit v4
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_6

    :try_start_1a
    throw p1

    :cond_19
    :goto_e
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "brdActW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1c

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/zgw;->Qj:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_1a
    .catch Lorg/json/JSONException; {:try_start_1a .. :try_end_1a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1a .. :try_end_1a} :catch_0
    .catchall {:try_start_1a .. :try_end_1a} :catchall_e

    :try_start_1b
    iget-object v5, p0, Lcom/android/server/am/zgw;->Qj:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move v5, v0

    :goto_f
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1b

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/zgw;->Qj:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1a

    iget-object v7, p0, Lcom/android/server/am/zgw;->Qj:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1a
    add-int/lit8 v5, v5, 0x1

    goto :goto_f

    :cond_1b
    monitor-exit v4
    :try_end_1b
    .catchall {:try_start_1b .. :try_end_1b} :catchall_7

    :try_start_1c
    const-string v3, "[OnlineConfig] update brdActW success"

    invoke-static {v3}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V
    :try_end_1c
    .catch Lorg/json/JSONException; {:try_start_1c .. :try_end_1c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_1c} :catch_0
    .catchall {:try_start_1c .. :try_end_1c} :catchall_e

    goto :goto_10

    :catchall_7
    move-exception p1

    :try_start_1d
    monitor-exit v4
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_7

    :try_start_1e
    throw p1

    :cond_1c
    :goto_10
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "appAbnormalKillSwitch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    sput-boolean v3, Lcom/android/server/am/zgw;->tl:Z

    const-string v3, "OnePlusAppBootManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] sAbnormalKillSwitch: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/am/zgw;->tl:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "appAbnormalKillW"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/zgw;->Zj:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_1e
    .catch Lorg/json/JSONException; {:try_start_1e .. :try_end_1e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1e .. :try_end_1e} :catch_0
    .catchall {:try_start_1e .. :try_end_1e} :catchall_e

    :try_start_1f
    iget-object v5, p0, Lcom/android/server/am/zgw;->Zj:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move v5, v0

    :goto_11
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_1f

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/zgw;->Zj:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1e

    iget-object v7, p0, Lcom/android/server/am/zgw;->Zj:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1e
    add-int/lit8 v5, v5, 0x1

    goto :goto_11

    :cond_1f
    monitor-exit v4
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_8

    :try_start_20
    const-string v3, "[OnlineConfig] update appStartW success"

    invoke-static {v3}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V
    :try_end_20
    .catch Lorg/json/JSONException; {:try_start_20 .. :try_end_20} :catch_1
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_20} :catch_0
    .catchall {:try_start_20 .. :try_end_20} :catchall_e

    goto :goto_12

    :catchall_8
    move-exception p1

    :try_start_21
    monitor-exit v4
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_8

    :try_start_22
    throw p1

    :cond_20
    :goto_12
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "killed_timeout"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_21

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-long v3, v3

    sput-wide v3, Lcom/android/server/am/zgw;->ol:J

    const-string v3, "OnePlusAppBootManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] killed_timeout: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v5, Lcom/android/server/am/zgw;->ol:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_21
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "killed_maxcount"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_22

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    sput v3, Lcom/android/server/am/zgw;->pl:I

    const-string v3, "OnePlusAppBootManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] mAbnormalKilledMaxCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/am/zgw;->pl:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_22
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "brdActB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_25

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/zgw;->Rj:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_22
    .catch Lorg/json/JSONException; {:try_start_22 .. :try_end_22} :catch_1
    .catch Ljava/lang/Exception; {:try_start_22 .. :try_end_22} :catch_0
    .catchall {:try_start_22 .. :try_end_22} :catchall_e

    :try_start_23
    iget-object v5, p0, Lcom/android/server/am/zgw;->Rj:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move v5, v0

    :goto_13
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_24

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/zgw;->Rj:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_23

    iget-object v7, p0, Lcom/android/server/am/zgw;->Rj:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v5, v5, 0x1

    goto :goto_13

    :cond_24
    monitor-exit v4
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_9

    :try_start_24
    const-string v3, "[OnlineConfig] update brdActB success"

    invoke-static {v3}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V
    :try_end_24
    .catch Lorg/json/JSONException; {:try_start_24 .. :try_end_24} :catch_1
    .catch Ljava/lang/Exception; {:try_start_24 .. :try_end_24} :catch_0
    .catchall {:try_start_24 .. :try_end_24} :catchall_e

    goto :goto_14

    :catchall_9
    move-exception p1

    :try_start_25
    monitor-exit v4
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_9

    :try_start_26
    throw p1

    :cond_25
    :goto_14
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "actClsB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_28

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/zgw;->Hj:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_26
    .catch Lorg/json/JSONException; {:try_start_26 .. :try_end_26} :catch_1
    .catch Ljava/lang/Exception; {:try_start_26 .. :try_end_26} :catch_0
    .catchall {:try_start_26 .. :try_end_26} :catchall_e

    :try_start_27
    iget-object v5, p0, Lcom/android/server/am/zgw;->Hj:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move v5, v0

    :goto_15
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_27

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/zgw;->Hj:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_26

    iget-object v7, p0, Lcom/android/server/am/zgw;->Hj:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_26
    add-int/lit8 v5, v5, 0x1

    goto :goto_15

    :cond_27
    monitor-exit v4
    :try_end_27
    .catchall {:try_start_27 .. :try_end_27} :catchall_a

    :try_start_28
    const-string v3, "[OnlineConfig] update actClsB success"

    invoke-static {v3}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V
    :try_end_28
    .catch Lorg/json/JSONException; {:try_start_28 .. :try_end_28} :catch_1
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_0
    .catchall {:try_start_28 .. :try_end_28} :catchall_e

    goto :goto_16

    :catchall_a
    move-exception p1

    :try_start_29
    monitor-exit v4
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_a

    :try_start_2a
    throw p1

    :cond_28
    :goto_16
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "hostAppSvc"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2b

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/zgw;->Wj:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_2a
    .catch Lorg/json/JSONException; {:try_start_2a .. :try_end_2a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_0
    .catchall {:try_start_2a .. :try_end_2a} :catchall_e

    :try_start_2b
    iget-object v5, p0, Lcom/android/server/am/zgw;->Wj:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move v5, v0

    :goto_17
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2a

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/zgw;->Wj:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_29

    iget-object v7, p0, Lcom/android/server/am/zgw;->Wj:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_29
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    :cond_2a
    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_b

    :try_start_2c
    const-string v3, "[OnlineConfig] update hostAppSvc success"

    invoke-static {v3}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V
    :try_end_2c
    .catch Lorg/json/JSONException; {:try_start_2c .. :try_end_2c} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2c .. :try_end_2c} :catch_0
    .catchall {:try_start_2c .. :try_end_2c} :catchall_e

    goto :goto_18

    :catchall_b
    move-exception p1

    :try_start_2d
    monitor-exit v4
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_b

    :try_start_2e
    throw p1

    :cond_2b
    :goto_18
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "pvdClsB"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/zgw;->Ij:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_2e
    .catch Lorg/json/JSONException; {:try_start_2e .. :try_end_2e} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2e .. :try_end_2e} :catch_0
    .catchall {:try_start_2e .. :try_end_2e} :catchall_e

    :try_start_2f
    iget-object v5, p0, Lcom/android/server/am/zgw;->Ij:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move v5, v0

    :goto_19
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_2d

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/zgw;->Ij:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_2c

    iget-object v7, p0, Lcom/android/server/am/zgw;->Ij:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2c
    add-int/lit8 v5, v5, 0x1

    goto :goto_19

    :cond_2d
    monitor-exit v4
    :try_end_2f
    .catchall {:try_start_2f .. :try_end_2f} :catchall_c

    :try_start_30
    const-string v3, "[OnlineConfig] update pvdClsB success"

    invoke-static {v3}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V
    :try_end_30
    .catch Lorg/json/JSONException; {:try_start_30 .. :try_end_30} :catch_1
    .catch Ljava/lang/Exception; {:try_start_30 .. :try_end_30} :catch_0
    .catchall {:try_start_30 .. :try_end_30} :catchall_e

    goto :goto_1a

    :catchall_c
    move-exception p1

    :try_start_31
    monitor-exit v4
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_c

    :try_start_32
    throw p1

    :cond_2e
    :goto_1a
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_oemKillProcessName"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_30

    iget-object v3, p0, Lcom/android/server/am/zgw;->Tj:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->clear()V

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v4, v0

    :goto_1b
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_30

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "package"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ProcessName"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v7, v0

    :goto_1c
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_2f

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v6, v8}, Lcom/android/server/am/zgw;->tsu(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1c

    :cond_2f
    add-int/lit8 v4, v4, 0x1

    goto :goto_1b

    :cond_30
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_oemProcessNameEnable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_31

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/server/am/zgw;->Uj:Z

    :cond_31
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "config_record"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_38

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v4, v0

    :goto_1d
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_38

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "name"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "record"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_32

    const-string v7, "value"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    sput-boolean v7, Lcom/android/server/am/zgw;->gk:Z

    const-string v7, "persist.sys.appboot.recorder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    sget-boolean v9, Lcom/android/server/am/zgw;->gk:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "record "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v8, Lcom/android/server/am/zgw;->gk:Z

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_32
    const-string v7, "mdm"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_33

    const-string v7, "value"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    iget-object v8, p0, Lcom/android/server/am/zgw;->mRecorder:Lcom/android/server/am/oxb;

    invoke-virtual {v8, v7}, Lcom/android/server/am/oxb;->hmo(Z)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "record mdm "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_33
    const-string v7, "local"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_34

    const-string v7, "value"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    iget-object v8, p0, Lcom/android/server/am/zgw;->mRecorder:Lcom/android/server/am/oxb;

    invoke-virtual {v8, v7}, Lcom/android/server/am/oxb;->ire(Z)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "record local "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_34
    const-string v7, "level"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_35

    const-string v7, "value"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/am/zgw;->mRecorder:Lcom/android/server/am/oxb;

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/android/server/am/oxb;->irq(I)V

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "record level "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_35
    const-string v7, "special"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_37

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    const-string v7, "value"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v7, v0

    :goto_1e
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_36

    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "record ignore apps add: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1e

    :cond_36
    iget-object v5, p0, Lcom/android/server/am/zgw;->mRecorder:Lcom/android/server/am/oxb;

    invoke-virtual {v5, v6}, Lcom/android/server/am/oxb;->you(Ljava/util/ArrayList;)V

    :cond_37
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1d

    :cond_38
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "restartServiceSwitch"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3b

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/am/zgw;->uk:Z

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eq v4, v5, :cond_3a

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/zgw;->uk:Z

    const-string v4, "persist.sys.appboot.restartservice"

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_39

    const-string v5, "true"

    goto :goto_1f

    :cond_39
    const-string v5, "false"

    :goto_1f
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3a
    const-string v4, "OnePlusAppBootManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] AppBoot restartServiceSwitch: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3b
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "restartServiceBlackList"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3e

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/zgw;->Lj:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_32
    .catch Lorg/json/JSONException; {:try_start_32 .. :try_end_32} :catch_1
    .catch Ljava/lang/Exception; {:try_start_32 .. :try_end_32} :catch_0
    .catchall {:try_start_32 .. :try_end_32} :catchall_e

    :try_start_33
    iget-object v4, p0, Lcom/android/server/am/zgw;->Lj:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    move v4, v0

    :goto_20
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_3d

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/zgw;->Lj:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3c

    iget-object v6, p0, Lcom/android/server/am/zgw;->Lj:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3c
    add-int/lit8 v4, v4, 0x1

    goto :goto_20

    :cond_3d
    monitor-exit v3
    :try_end_33
    .catchall {:try_start_33 .. :try_end_33} :catchall_d

    :try_start_34
    const-string v2, "[OnlineConfig] update mRestartServiceWhiteList success"

    invoke-static {v2}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V
    :try_end_34
    .catch Lorg/json/JSONException; {:try_start_34 .. :try_end_34} :catch_1
    .catch Ljava/lang/Exception; {:try_start_34 .. :try_end_34} :catch_0
    .catchall {:try_start_34 .. :try_end_34} :catchall_e

    goto :goto_21

    :catchall_d
    move-exception p1

    :try_start_35
    monitor-exit v3
    :try_end_35
    .catchall {:try_start_35 .. :try_end_35} :catchall_d

    :try_start_36
    throw p1

    :cond_3e
    :goto_21
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_3f
    const-string p1, "OnePlusAppBootManager"

    const-string v0, "[OnlineConfig] AppBoot updated complete"

    invoke-static {p1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catch Lorg/json/JSONException; {:try_start_36 .. :try_end_36} :catch_1
    .catch Ljava/lang/Exception; {:try_start_36 .. :try_end_36} :catch_0
    .catchall {:try_start_36 .. :try_end_36} :catchall_e

    sget-boolean p1, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p1, :cond_40

    const-string p1, "after resolveAppBootConfigFromJSON # specialList:"

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mServiceActionBlackList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Kj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mServiceActionWhiteList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Mj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mServiceClassBlackList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Nj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mBroadcastIntentClassBlackList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Sj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mBroadcastIntentActionWhiteList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Qj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mBroadcastIntentActionBlackList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Rj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mRestartServiceWhiteList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Lj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mActivityClassBlackList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Hj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mProviderClassBlackList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Ij:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mProviderCallerWhiteList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Jj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mHostAppForServiceList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Wj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_22
    const-string v0, "mProcessAbnormalKilledWhiteList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/zgw;->Zj:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    goto/16 :goto_23

    :catchall_e
    move-exception p1

    goto/16 :goto_25

    :catch_0
    move-exception p1

    :try_start_37
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_37 .. :try_end_37} :catchall_e

    sget-boolean p1, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p1, :cond_40

    const-string p1, "after resolveAppBootConfigFromJSON # specialList:"

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mServiceActionBlackList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Kj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mServiceActionWhiteList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Mj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mServiceClassBlackList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Nj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mBroadcastIntentClassBlackList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Sj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mBroadcastIntentActionWhiteList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Qj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mBroadcastIntentActionBlackList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Rj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mRestartServiceWhiteList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Lj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mActivityClassBlackList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Hj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mProviderClassBlackList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Ij:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mProviderCallerWhiteList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Jj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mHostAppForServiceList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Wj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_22

    :catch_1
    move-exception p1

    :try_start_38
    const-string v0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] JSONException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_38
    .catchall {:try_start_38 .. :try_end_38} :catchall_e

    sget-boolean p1, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p1, :cond_40

    const-string p1, "after resolveAppBootConfigFromJSON # specialList:"

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mServiceActionBlackList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Kj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mServiceActionWhiteList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Mj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mServiceClassBlackList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Nj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mBroadcastIntentClassBlackList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Sj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mBroadcastIntentActionWhiteList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Qj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mBroadcastIntentActionBlackList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Rj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mRestartServiceWhiteList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Lj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mActivityClassBlackList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Hj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mProviderClassBlackList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Ij:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mProviderCallerWhiteList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Jj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mHostAppForServiceList size "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Wj:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_22

    :cond_40
    :goto_23
    sget-object p0, Lcom/android/server/am/zgw;->Jk:Ljava/util/HashMap;

    const/4 p1, 0x1

    if-nez p0, :cond_41

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    if-ge p0, p1, :cond_41

    return-void

    :cond_41
    sget-object v0, Lcom/android/server/am/zgw;->Kk:Ljava/lang/Object;

    monitor-enter v0

    :try_start_39
    sget-object p0, Lcom/android/server/am/zgw;->mPkgMap:Ljava/util/HashMap;

    if-nez p0, :cond_42

    sget-object p0, Lcom/android/server/am/zgw;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->size()I

    move-result p0

    if-ge p0, p1, :cond_42

    monitor-exit v0

    return-void

    :cond_42
    monitor-exit v0
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_10

    sget-object p0, Lcom/android/server/am/zgw;->Jk:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_43
    :goto_24
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_46

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/zgw$rtg;

    if-eqz v0, :cond_43

    iget-object v1, v0, Lcom/android/server/am/zgw$rtg;->mPkgName:Ljava/lang/String;

    if-eqz v1, :cond_43

    iget v1, v0, Lcom/android/server/am/zgw$rtg;->gi:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_43

    sget-object v1, Lcom/android/server/am/zgw;->Kk:Ljava/lang/Object;

    monitor-enter v1

    :try_start_3a
    sget-object v2, Lcom/android/server/am/zgw;->mPkgMap:Ljava/util/HashMap;

    iget-object v3, v0, Lcom/android/server/am/zgw$rtg;->mPkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/zgw$sis;

    if-eqz v2, :cond_45

    invoke-virtual {v2}, Lcom/android/server/am/zgw$sis;->getAction()I

    move-result v3

    iget v4, v0, Lcom/android/server/am/zgw$rtg;->mAction:I

    if-eq v3, v4, :cond_45

    iget v3, v0, Lcom/android/server/am/zgw$rtg;->mAction:I

    if-eq v3, p1, :cond_44

    iget v3, v0, Lcom/android/server/am/zgw$rtg;->mAction:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_45

    :cond_44
    iget v0, v0, Lcom/android/server/am/zgw$rtg;->mAction:I

    invoke-virtual {v2, v0}, Lcom/android/server/am/zgw$sis;->setAction(I)V

    :cond_45
    monitor-exit v1

    goto :goto_24

    :catchall_f
    move-exception p0

    monitor-exit v1
    :try_end_3a
    .catchall {:try_start_3a .. :try_end_3a} :catchall_f

    throw p0

    :cond_46
    return-void

    :catchall_10
    move-exception p0

    :try_start_3b
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3b .. :try_end_3b} :catchall_10

    throw p0

    :goto_25
    sget-boolean v0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v0, :cond_47

    const-string v0, "after resolveAppBootConfigFromJSON # specialList:"

    invoke-static {v0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mServiceActionBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/zgw;->Kj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mServiceActionWhiteList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/zgw;->Mj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mServiceClassBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/zgw;->Nj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBroadcastIntentClassBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/zgw;->Sj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBroadcastIntentActionWhiteList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/zgw;->Qj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBroadcastIntentActionBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/zgw;->Rj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mRestartServiceWhiteList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/zgw;->Lj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mActivityClassBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/zgw;->Hj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mProviderClassBlackList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/zgw;->Ij:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mProviderCallerWhiteList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/zgw;->Jj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mHostAppForServiceList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/zgw;->Wj:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mProcessAbnormalKilledWhiteList size "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/zgw;->Zj:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_47
    throw p1
.end method

.method private sb(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/zgw;->Fj:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/zgw;->Fj:Ljava/util/HashSet;

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

.method static synthetic sis(Lcom/android/server/am/zgw;)Lcom/android/server/am/oxb;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/zgw;->mRecorder:Lcom/android/server/am/oxb;

    return-object p0
.end method

.method static synthetic sis(Lcom/android/server/am/zgw;Ljava/lang/String;)Lcom/android/server/am/zgw$sis;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/zgw;->vb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object p0

    return-object p0
.end method

.method private sis(Ljava/lang/String;ZI)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object p0

    sget-boolean v0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateHugePowerPackage # pkgName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", add="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " abi="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusAppBootManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/android/server/am/zgw;->Hk:Ljava/util/HashMap;

    monitor-enter v0

    const/4 v1, 0x2

    if-eqz p2, :cond_2

    if-ne p3, v1, :cond_2

    :try_start_0
    sget-object v2, Lcom/android/server/am/zgw;->Hk:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    sget-object v2, Lcom/android/server/am/zgw;->Hk:Ljava/util/HashMap;

    invoke-virtual {p0}, Lcom/android/server/am/zgw$sis;->getAction()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    if-nez p2, :cond_4

    const/4 v2, 0x4

    if-ne p3, v2, :cond_4

    sget-object v2, Lcom/android/server/am/zgw;->Hk:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/am/zgw;->Hk:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/server/am/zgw$sis;->setAction(I)V

    :cond_3
    sget-object v2, Lcom/android/server/am/zgw;->Hk:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p1, Lcom/android/server/am/zgw;->mScreenOn:Z

    if-nez p1, :cond_5

    if-eqz p2, :cond_5

    if-ne p3, v1, :cond_5

    invoke-virtual {p0}, Lcom/android/server/am/zgw$sis;->getAction()I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_5

    invoke-virtual {p0, v1}, Lcom/android/server/am/zgw$sis;->setAction(I)V

    :cond_5
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method static synthetic ssp(Lcom/android/server/am/zgw;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/zgw;->lm()V

    return-void
.end method

.method private tb(Ljava/lang/String;)V
    .locals 1

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# removeAppBootInfo # pkgName="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lcom/android/server/am/zgw;->Kk:Ljava/lang/Object;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/am/zgw;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic tsu(Lcom/android/server/am/zgw;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/zgw;->tb(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic tsu(Lcom/android/server/am/zgw;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/zgw;->qm()Z

    move-result p0

    return p0
.end method

.method private ub(Ljava/lang/String;)V
    .locals 1

    const-string p0, "persist.sys.appboot.usersetted"

    const-string v0, "0"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v0, "1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "skip forceSwitch cause user has setted switch before!"

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    return-void

    :cond_0
    const-string p0, "on"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    :goto_0
    sput-boolean p0, Lcom/android/server/am/zgw;->tk:Z

    goto :goto_1

    :cond_1
    const-string p0, "off"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    const/4 p0, 0x0

    goto :goto_0

    :cond_2
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "switch = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OnePlusAppBootManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private ugm(Lcom/android/server/am/ProcessRecord;)Z
    .locals 4

    const-string v0, "OnePlusAppBootManager"

    const/4 v1, 0x0

    if-eqz p1, :cond_11

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_0

    goto/16 :goto_2

    :cond_0
    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v2

    if-nez v2, :cond_2

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_1

    const-string p0, "isCareProcess r is not app, return false"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return v1

    :cond_2
    iget-boolean v2, p1, Lcom/android/server/am/ProcessRecord;->killedByAm:Z

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isCrashing()Z

    move-result v2

    if-nez v2, :cond_4

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isSilentAnr()Z

    move-result v2

    if-nez v2, :cond_4

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_3

    const-string p0, "isCareProcess r is killedByAm, return false"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1

    :cond_4
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_5

    goto :goto_1

    :cond_5
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-eqz v2, :cond_d

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_6
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/zgw$sis;->getAction()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_7

    const-string p0, "isCareProcess r OnePlusAppBootInfo is whitelist, return false"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v1

    :cond_8
    iget-object p0, p0, Lcom/android/server/am/zgw;->Zj:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_a

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_9

    const-string p0, "isCareProcess r is abnormalKilledWhiteList, return false"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return v1

    :cond_a
    iget p0, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    sget p1, Lcom/android/server/am/zgw;->ql:I

    if-ge p0, p1, :cond_c

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "isCareProcess r curAdj Smaller than mThresholdAdj:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget p1, Lcom/android/server/am/zgw;->ql:I

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", return false"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    return v1

    :cond_c
    return v3

    :cond_d
    :goto_0
    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_e

    const-string p0, "isCareProcess r packageName is error, return false"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return v1

    :cond_f
    :goto_1
    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_10

    const-string p0, "isCareProcess r processName is error, return false"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    return v1

    :cond_11
    :goto_2
    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_12

    const-string p0, "isCareProcess r info is error, return false"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    return v1
.end method

.method private vb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;
    .locals 4

    if-nez p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " !!!!!!!Exception # updateAppBootInfo # pkgName = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lcom/android/server/am/zgw;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/zgw$sis;

    if-nez p0, :cond_1

    new-instance p0, Lcom/android/server/am/zgw$sis;

    invoke-direct {p0, p1}, Lcom/android/server/am/zgw$sis;-><init>(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/am/zgw;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/am/zgw$sis;->zta(Landroid/content/pm/PackageParser$Package;)V

    sget-object v0, Lcom/android/server/am/zgw;->Kk:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/zgw;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    const-string v1, "OnePlusAppBootManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fatal Exception # getAppBootInfo # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    monitor-exit v0

    goto :goto_2

    :goto_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    sget-object v0, Lcom/android/server/am/zgw;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/zgw$sis;->zta(Landroid/content/pm/PackageParser$Package;)V

    :goto_2
    sget-boolean p1, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# updateAppBootInfo # abi="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_2
    return-object p0
.end method

.method static synthetic vju(I)I
    .locals 0

    sput p0, Lcom/android/server/am/zgw;->ql:I

    return p0
.end method

.method private vju(J)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/zgw;->sInUsing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v0, :cond_1

    const-string v0, "schedulePersistAppBootInfo #"

    invoke-static {v0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/zgw;->Yj:Lcom/android/server/am/zgw$you;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "schedulePersistAppBootInfo # hasMessages # MSG_PERSIST_APPBOOT_LIST"

    invoke-static {v0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/zgw;->Yj:Lcom/android/server/am/zgw$you;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object p0, p0, Lcom/android/server/am/zgw;->Yj:Lcom/android/server/am/zgw$you;

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method private wb(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/zgw;->Gj:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/zgw;->Gj:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/zgw;->Gj:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# updateNotificationListener # update="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p0, " # pkgName="

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private xb(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/zgw;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "sms_default_application"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/zgw;->yj:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/am/zgw;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "dialer_default_application"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/zgw;->zj:Ljava/lang/String;

    sget-boolean v0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# updateSettingsObserver #tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",mDefaultSMSPackage="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/am/zgw;->yj:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ",mDefaultDailerPackage="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/am/zgw;->zj:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_0
    iget-object p1, p0, Lcom/android/server/am/zgw;->yj:Ljava/lang/String;

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    invoke-static {p1}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/server/am/zgw$sis;->lqr(I)V

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/zgw;->zj:Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/server/am/zgw$sis;->lqr(I)V

    :cond_2
    return-void
.end method

.method static synthetic you(Lcom/android/server/am/zgw;Ljava/lang/String;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/zgw;->pb(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method static synthetic you(Lcom/android/server/i;)Lcom/android/server/i;
    .locals 0

    sput-object p0, Lcom/android/server/am/zgw;->opSmartPowerControl:Lcom/android/server/i;

    return-object p0
.end method

.method private you(Lcom/android/server/am/ProcessRecord;J)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/am/zgw;->_j:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v1, p0, Lcom/android/server/am/zgw;->ak:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    if-eqz v0, :cond_4

    if-nez v1, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, p2, v4

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_3

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long v4, p2, v4

    sget-wide v8, Lcom/android/server/am/zgw;->ol:J

    cmp-long v4, v4, v8

    if-gez v4, :cond_3

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/2addr v0, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    sget-boolean v0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "trackAbnormalKilledProcessByTime count:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OnePlusAppBootManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sget v2, Lcom/android/server/am/zgw;->pl:I

    if-lt v0, v2, :cond_2

    iget-object p2, p0, Lcom/android/server/am/zgw;->_j:Lcom/android/internal/app/ProcessMap;

    iget-object p3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p2, p3, v0}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    iget-object p2, p0, Lcom/android/server/am/zgw;->ak:Lcom/android/internal/app/ProcessMap;

    iget-object p3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v0, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p2, p3, v0}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    const-string p2, "trackAbnormalKilledProcessByTime"

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/zgw;->zta(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/zgw;->_j:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, p2, p3}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/am/zgw;->ak:Lcom/android/internal/app/ProcessMap;

    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, p2, p1, v1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long v1, p2, v1

    cmp-long v1, v1, v6

    if-lez v1, :cond_5

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long v0, p2, v0

    sget-wide v4, Lcom/android/server/am/zgw;->ol:J

    cmp-long v0, v0, v4

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/zgw;->_j:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, p2, p3}, Ljava/lang/Long;-><init>(J)V

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/server/am/zgw;->_j:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    new-instance v4, Ljava/lang/Long;

    invoke-direct {v4, p2, p3}, Ljava/lang/Long;-><init>(J)V

    :goto_1
    invoke-virtual {v0, v1, v2, v4}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/android/server/am/zgw;->ak:Lcom/android/internal/app/ProcessMap;

    iget-object p2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, p2, p1, v3}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_2
    return-void
.end method

.method static synthetic you(Lcom/android/server/am/zgw;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/zgw;->mm()V

    return-void
.end method

.method static synthetic you(Lcom/android/server/am/zgw;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/zgw;->vju(J)V

    return-void
.end method

.method public static final zta(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/zgw;
    .locals 2

    sget-object v0, Lcom/android/server/am/zgw;->sInstance:Lcom/android/server/am/zgw;

    if-nez v0, :cond_1

    if-nez p0, :cond_0

    const-string v0, "OnePlusAppBootManager"

    const-string v1, "Fatal Exception : pms is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/server/am/zgw;

    invoke-direct {v0, p0}, Lcom/android/server/am/zgw;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    sput-object v0, Lcom/android/server/am/zgw;->sInstance:Lcom/android/server/am/zgw;

    :cond_1
    sget-object p0, Lcom/android/server/am/zgw;->sInstance:Lcom/android/server/am/zgw;

    return-object p0
.end method

.method private zta(Landroid/content/Intent;)Ljava/lang/String;
    .locals 0

    if-nez p1, :cond_0

    const-string p0, "OnePlusAppBootManager"

    const-string p1, "Fatal Exception # getPkgNameFromIntent # intent=null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :cond_1
    return-object p0
.end method

.method private zta(Landroid/content/Intent;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p0

    :goto_0
    if-eqz p2, :cond_1

    return-object p2

    :cond_1
    if-nez p1, :cond_2

    return-object p0

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/am/zgw;)Ljava/util/HashSet;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/zgw;->Fj:Ljava/util/HashSet;

    return-object p0
.end method

.method private zta(Lcom/android/server/am/ProcessRecord;J)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/zgw;->bk:Lcom/android/server/am/zgw$tsu;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/zgw$tsu;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/zgw$tsu;-><init>(Lcom/android/server/am/zgw;Lcom/android/server/am/ugm;)V

    iput-object v0, p0, Lcom/android/server/am/zgw;->bk:Lcom/android/server/am/zgw$tsu;

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/zgw;->bk:Lcom/android/server/am/zgw$tsu;

    iget-object v0, v0, Lcom/android/server/am/zgw$tsu;->xj:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/zgw;->bk:Lcom/android/server/am/zgw$tsu;

    iget v1, v0, Lcom/android/server/am/zgw$tsu;->mUid:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0, v1, v2, p2, p3}, Lcom/android/server/am/zgw$tsu;->you(Lcom/android/server/am/zgw$tsu;Ljava/lang/String;IJ)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/zgw;->bk:Lcom/android/server/am/zgw$tsu;

    invoke-static {v0, p2, p3}, Lcom/android/server/am/zgw$tsu;->zta(Lcom/android/server/am/zgw$tsu;J)V

    iget-object p2, p0, Lcom/android/server/am/zgw;->bk:Lcom/android/server/am/zgw$tsu;

    invoke-static {p2}, Lcom/android/server/am/zgw$tsu;->zta(Lcom/android/server/am/zgw$tsu;)Z

    move-result p2

    if-eqz p2, :cond_3

    const-string p2, "trackAbnormalKilledProcessByOrder"

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/zgw;->zta(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/server/am/zgw;->bk:Lcom/android/server/am/zgw$tsu;

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget p1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {p0, v0, p1, p2, p3}, Lcom/android/server/am/zgw$tsu;->zta(Lcom/android/server/am/zgw$tsu;Ljava/lang/String;IJ)V

    :cond_3
    :goto_1
    return-void
.end method

.method private zta(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/am/zgw;->gwm(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/zgw;->mAms:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/zgw;->mAms:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v2, -0x2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->forceStopPackage(Ljava/lang/String;I)V

    const-string p0, "OnePlusAppBootManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAbnormalProcess forceStopPackage:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " from:"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_0
    :goto_0
    return-void
.end method

.method private zta(Lcom/android/server/am/zgw$sis;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    invoke-virtual {p0, p2}, Lcom/android/server/am/zgw;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p2

    const-string v0, " -> not exist"

    if-eqz p2, :cond_3

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-boolean v2, Lcom/android/server/am/zgw;->sDebug:Z

    const-string v3, "# updateLinkedPkgsInfo # caller pkg="

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_1
    sget-object v2, Lcom/android/server/am/zgw;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {p1, v1}, Lcom/android/server/am/zgw$sis;->ivd(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-boolean v2, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p3}, Lcom/android/server/am/zgw;->c(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    if-eqz p0, :cond_7

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_7

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    sget-boolean p3, Lcom/android/server/am/zgw;->sDebug:Z

    const-string v1, "# updateLinkedPkgsInfo # callee pkg="

    if-eqz p3, :cond_5

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_5
    sget-object p3, Lcom/android/server/am/zgw;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {p3, p2}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object p3

    if-eqz p3, :cond_6

    invoke-virtual {p1, p2}, Lcom/android/server/am/zgw$sis;->qeg(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    sget-boolean p3, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p3, :cond_4

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/zgw;J)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/zgw;->bud(J)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/zgw;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/zgw;->xb(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/zgw;Ljava/lang/String;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/zgw;->sis(Ljava/lang/String;ZI)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/zgw;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/zgw;->rtg(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/am/zgw;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/zgw;->ha(Z)V

    return-void
.end method

.method private zta(Ljava/lang/String;Landroid/content/Intent;)Z
    .locals 2

    const-string v0, "com.google.android.gms"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/zgw;->Cj:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/zgw;->Cj:Ljava/util/HashSet;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GMS] Forbidden Binding GMS via "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "# canServiceGo # ret=false pkgName "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " # android call"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    const/4 p0, 0x0

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
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public addDependencyPackageFlag(Ljava/lang/String;I)V
    .locals 1

    sget-boolean p0, Lcom/android/server/am/zgw;->sInUsing:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/zgw$sis;->Ya()I

    move-result p0

    and-int/lit8 p0, p0, 0x40

    if-nez p0, :cond_1

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# addDependencyPackageFlag # go pkgName="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", callingPid ="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public b(Ljava/lang/String;)I
    .locals 0

    sget-boolean p0, Lcom/android/server/am/zgw;->sInUsing:Z

    if-nez p0, :cond_0

    const/4 p0, -0x1

    return p0

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/zgw$sis;->getAction()I

    move-result p0

    return p0
.end method

.method public bud(I)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/oneplus/appboot/AppBootMode;",
            ">;"
        }
    .end annotation

    sget-boolean p0, Lcom/android/server/am/zgw;->sInUsing:Z

    const/4 p1, 0x0

    if-nez p0, :cond_0

    return-object p1

    :cond_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/android/server/am/zgw;->Kk:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/zgw;->mPkgMap:Ljava/util/HashMap;

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/server/am/zgw;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    monitor-exit v0

    return-object p1

    :cond_1
    sget-object p1, Lcom/android/server/am/zgw;->mPkgMap:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_2
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/zgw$sis;

    invoke-virtual {v1}, Lcom/android/server/am/zgw$sis;->Ya()I

    move-result v2

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_2

    new-instance v2, Lcom/oneplus/appboot/AppBootMode;

    invoke-virtual {v1}, Lcom/android/server/am/zgw$sis;->Za()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/am/zgw$sis;->getAction()I

    move-result v4

    invoke-virtual {v1}, Lcom/android/server/am/zgw$sis;->Wa()Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->size()I

    move-result v1

    invoke-direct {v2, v3, v4, v1}, Lcom/oneplus/appboot/AppBootMode;-><init>(Ljava/lang/String;II)V

    invoke-interface {p0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_3
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method c(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_8

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    goto/16 :goto_3

    :cond_0
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v0, p1

    const-string v2, "ret="

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_2

    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v1, :cond_6

    aget-object v0, p1, v3

    aget-object p1, p1, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {v0, v4, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    sget-boolean v0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    :cond_2
    array-length v0, p1

    if-le v0, v4, :cond_6

    aget-object v0, p1, v3

    invoke-virtual {v0, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v0, p1

    sub-int/2addr v0, v4

    aget-object v0, p1, v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v4

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v0, v4

    :goto_0
    array-length v1, p1

    sub-int/2addr v1, v4

    if-ge v0, v1, :cond_6

    sget-boolean v1, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v3, p1, v0

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_5
    aget-object v1, p1, v0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_6
    :goto_1
    sget-boolean p1, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p1, :cond_7

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "s="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    return-object p0

    :cond_8
    :goto_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public canActivityGo(Landroid/content/pm/ActivityInfo;Ljava/lang/String;)Z
    .locals 5

    sget-boolean v0, Lcom/android/server/am/zgw;->sInUsing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    sget-boolean v0, Lcom/android/server/am/zgw;->tk:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/OnePlusUtil$zta;->z()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/am/zgw;->Ej:Ljava/util/ArrayList;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/am/zgw;->Ej:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# canActivityGo # ret=false callingPackage="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " aInfo="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "# forbid background app start activity!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    monitor-exit v2

    return v0

    :cond_1
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_0
    if-eqz p1, :cond_9

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# canActivityGo # aInfo="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", Info="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# canActivityGo #2 className ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_3
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    if-eqz v3, :cond_7

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    if-eqz v3, :cond_7

    sget-boolean v3, Lcom/android/server/am/zgw;->ck:Z

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Lcom/android/server/am/zgw$sis;->Sa()Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/am/zgw;->Hj:Ljava/util/ArrayList;

    iget-object v4, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-nez p0, :cond_4

    sget-boolean p0, Lcom/android/server/am/zgw;->ek:Z

    if-eqz p0, :cond_5

    :cond_4
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# canActivityGo # ret=false callingPackage="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",aInfo="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",name="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " # blacklist"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_5
    return v0

    :cond_6
    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {p2}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/zgw$sis;->Ya()I

    move-result v3

    and-int/lit16 v3, v3, 0x200

    if-eqz v3, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# canActivityGo # ret=false callingPackage="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ",aInfo="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, ",name="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " # call from sandbox app"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    return v0

    :cond_7
    invoke-virtual {v2}, Lcom/android/server/am/zgw$sis;->Ta()I

    move-result v0

    if-eq v0, v1, :cond_8

    invoke-virtual {v2, v1}, Lcom/android/server/am/zgw$sis;->lqr(I)V

    sget-boolean v0, Lcom/android/server/am/zgw;->gk:Z

    if-eqz v0, :cond_8

    new-instance v0, Lcom/android/server/am/oxb$zta$zta;

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v4, "activity"

    invoke-direct {v0, v4, p2, v3}, Lcom/android/server/am/oxb$zta$zta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/android/server/am/oxb$zta$zta;->h(Ljava/lang/String;)Lcom/android/server/am/oxb$zta$zta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/oxb$zta$zta;->build()Lcom/android/server/am/oxb$zta;

    move-result-object v0

    iget-object v3, p0, Lcom/android/server/am/zgw;->mRecorder:Lcom/android/server/am/oxb;

    invoke-virtual {v3, v0}, Lcom/android/server/am/oxb;->you(Lcom/android/server/am/oxb$zta;)V

    :cond_8
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/am/zgw;->wb(Ljava/lang/String;)V

    sget-object p0, Lcom/android/server/am/zgw;->Dk:Ljava/lang/String;

    sput-object p0, Lcom/android/server/am/zgw;->Ck:Ljava/lang/String;

    iget-object p0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    sput-object p0, Lcom/android/server/am/zgw;->Dk:Ljava/lang/String;

    invoke-virtual {v2}, Lcom/android/server/am/zgw$sis;->Ya()I

    move-result p0

    and-int/lit16 p0, p0, -0x81

    invoke-virtual {v2, p0}, Lcom/android/server/am/zgw$sis;->veq(I)V

    :cond_9
    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# canActivityGo # ret="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", aInfo="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", callingPackage"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_a
    :goto_1
    return v1
.end method

.method public canInstrumentationGo(Landroid/content/ComponentName;II)Z
    .locals 2

    sget-boolean p0, Lcom/android/server/am/zgw;->sInUsing:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_4

    sget-boolean p0, Lcom/android/server/am/zgw;->tk:Z

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/16 p0, 0x2710

    if-le p3, p0, :cond_1

    const/4 p0, 0x0

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/server/am/zgw$sis;->setAction(I)V

    invoke-virtual {v1, v0}, Lcom/android/server/am/zgw$sis;->lqr(I)V

    :cond_2
    sget-boolean v0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "canInstrumentationGo # className="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", calllingPid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", callingUid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_3
    return p0

    :cond_4
    :goto_1
    return v0
.end method

.method public canJobSchedulerServiceGo(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 4

    sget-boolean p0, Lcom/android/server/am/zgw;->sInUsing:Z

    const/4 v0, 0x1

    if-eqz p0, :cond_6

    sget-boolean p0, Lcom/android/server/am/zgw;->tk:Z

    if-nez p0, :cond_0

    goto :goto_1

    :cond_0
    const/4 p0, 0x0

    const-string v1, "persist.sys.appboot.allow"

    invoke-static {v1, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v0, :cond_1

    return v0

    :cond_1
    sget-boolean v1, Lcom/android/server/am/zgw;->Fk:Z

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourceUid()I

    move-result v1

    const/16 v2, 0x2710

    if-ge v1, v2, :cond_3

    return v0

    :cond_3
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getSourcePackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/zgw$sis;->Ta()I

    move-result v2

    if-eq v2, v0, :cond_4

    invoke-virtual {v1}, Lcom/android/server/am/zgw$sis;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    goto :goto_0

    :cond_4
    move p0, v0

    :goto_0
    sget-boolean v0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# canJobSchedulerServiceGo # ret="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " # abi="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " # job="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OnePlusAppBootManager"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return p0

    :cond_6
    :goto_1
    return v0
.end method

.method public canKillProcessService(Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " canRestartService = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sr.processName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusAppBootManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/zgw;->rtg(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    const/4 p2, 0x2

    const/4 v0, 0x1

    if-ne p0, p2, :cond_2

    if-nez p3, :cond_1

    invoke-static {p1}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/zgw$sis;->Ya()I

    move-result p1

    or-int/lit16 p1, p1, 0x80

    invoke-virtual {p0, p1}, Lcom/android/server/am/zgw$sis;->veq(I)V

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_1

    const-string p0, "canKillProcessService # setPkgFlag PKG_FLAG_SPECIAL_LAUNCHER_APP"

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_1
    return v0

    :cond_2
    if-ne p0, v0, :cond_3

    const/4 p0, 0x0

    return p0

    :cond_3
    return p3
.end method

.method public canNotificationListenerServiceGo(Landroid/content/ComponentName;)Z
    .locals 5

    sget-boolean v0, Lcom/android/server/am/zgw;->sInUsing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/server/am/zgw;->tk:Z

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {v0}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/zgw$sis;->Ta()I

    move-result v3

    if-eq v3, v1, :cond_2

    invoke-virtual {v2}, Lcom/android/server/am/zgw$sis;->getAction()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    const/4 v1, 0x0

    :cond_2
    if-nez v1, :cond_3

    iget-object v3, p0, Lcom/android/server/am/zgw;->Gj:Ljava/util/HashSet;

    monitor-enter v3

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/zgw;->Gj:Ljava/util/HashSet;

    invoke-virtual {p0, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v3

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_3
    :goto_0
    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# canNotificationListenerServiceGo # ret="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " # abi="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " # compName="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    sget-boolean p0, Lcom/android/server/am/zgw;->ek:Z

    if-eqz p0, :cond_5

    if-nez v1, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "canNotificationListenerServiceGo forbid "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OnePlusAppBootManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    return v1
.end method

.method public canProcGo(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .locals 7

    sget-boolean v0, Lcom/android/server/am/zgw;->sInUsing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_e

    sget-boolean v0, Lcom/android/server/am/zgw;->tk:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/zgw$sis;->Ta()I

    move-result v3

    const/4 v4, 0x2

    const-string v5, "embryo"

    const/4 v6, 0x0

    if-ne v3, v1, :cond_3

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, v0, p1, v6}, Lcom/android/server/am/zgw;->canKillProcessService(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v2}, Lcom/android/server/am/zgw$sis;->Ya()I

    move-result p1

    and-int/lit16 p1, p1, 0x80

    if-eqz p1, :cond_2

    sget-boolean p1, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p1, :cond_1

    const-string p1, "canProcGo # set false because of PKG_FLAG_SPECIAL_LAUNCHER_APP!"

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_1
    :goto_0
    move p1, v6

    goto :goto_2

    :cond_2
    :goto_1
    move p1, v1

    goto :goto_2

    :cond_3
    if-eqz p2, :cond_2

    const-string p1, "activity"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lcom/android/server/am/zgw$sis;->getAction()I

    move-result p1

    if-ne p1, v4, :cond_2

    goto :goto_0

    :goto_2
    if-nez p1, :cond_5

    invoke-direct {p0, v0}, Lcom/android/server/am/zgw;->sb(Ljava/lang/String;)Z

    move-result p1

    :cond_5
    if-ne p1, v1, :cond_6

    invoke-virtual {v5, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {v2}, Lcom/android/server/am/zgw$sis;->Ta()I

    move-result p2

    if-eq p2, v1, :cond_6

    invoke-virtual {v2, v1}, Lcom/android/server/am/zgw$sis;->lqr(I)V

    :cond_6
    if-eqz p1, :cond_7

    const/4 p2, 0x4

    invoke-direct {p0, v0, v6, p2}, Lcom/android/server/am/zgw;->sis(Ljava/lang/String;ZI)V

    :cond_7
    const-string p0, "persist.sys.appboot.allow"

    invoke-static {p0, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    const-string p2, "# canProcGo # pkgName= "

    if-ne p0, v1, :cond_9

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " # force can GO"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_8
    move p1, v1

    goto :goto_3

    :cond_9
    if-ne p0, v4, :cond_b

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " # force can NOT GO"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_a
    move p1, v6

    :cond_b
    :goto_3
    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-nez p0, :cond_c

    if-nez p1, :cond_d

    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "# canProcGo # ret="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " # abi="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_d
    return p1

    :cond_e
    :goto_4
    return v1
.end method

.method public canProviderGo(Lcom/android/server/am/ContentProviderRecord;Lcom/android/server/am/ProcessRecord;)Z
    .locals 12

    sget-boolean v0, Lcom/android/server/am/zgw;->sInUsing:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_12

    sget-boolean v0, Lcom/android/server/am/zgw;->tk:Z

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/am/zgw;->Bj:Z

    const-string v2, "OnePlusAppBootManager"

    if-nez v0, :cond_3

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "# canProviderGo # ret=true # DISABLE_FUNC_CAN_PROVIDER_GO # "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p1, :cond_2

    iget-object p0, p1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz p0, :cond_2

    iget-object p0, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p0}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object p0

    invoke-virtual {p0, v1}, Lcom/android/server/am/zgw$sis;->lqr(I)V

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x0

    const-string v3, "provider"

    const-string v4, ", callerApp="

    const-string v5, ", cpr="

    if-eqz p1, :cond_10

    iget-object v6, p1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v6, :cond_10

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v6}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object v7

    const/4 v8, 0x0

    if-nez p2, :cond_5

    sget-boolean v9, Lcom/android/server/am/zgw;->ck:Z

    if-eqz v9, :cond_5

    invoke-virtual {v7}, Lcom/android/server/am/zgw$sis;->Sa()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v7}, Lcom/android/server/am/zgw$sis;->getAction()I

    move-result v9

    if-eq v9, v1, :cond_5

    iget-object v9, p1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v9, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v9, :cond_5

    invoke-virtual {v7}, Lcom/android/server/am/zgw$sis;->Ta()I

    move-result v9

    if-eq v9, v1, :cond_5

    iget-object v9, p0, Lcom/android/server/am/zgw;->Ij:Ljava/util/ArrayList;

    iget-object v10, p1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "# canProviderGo # ret=false, cpr="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " # blackprovider"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v8

    :cond_5
    if-eqz p2, :cond_6

    iget-object v9, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v9, :cond_6

    iget-object v0, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    :cond_6
    new-instance v9, Lcom/android/server/am/oxb$zta$zta;

    invoke-direct {v9, v3, v0, v6}, Lcom/android/server/am/oxb$zta$zta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p1, Lcom/android/server/am/ContentProviderRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {v9, v3}, Lcom/android/server/am/oxb$zta$zta;->h(Ljava/lang/String;)Lcom/android/server/am/oxb$zta$zta;

    move-result-object v3

    const/4 v9, 0x2

    invoke-virtual {v3, v9}, Lcom/android/server/am/oxb$zta$zta;->setLevel(I)Lcom/android/server/am/oxb$zta$zta;

    move-result-object v3

    sget-boolean v10, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v10, :cond_7

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "# canProviderGo # "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " calling "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_7
    if-eqz v0, :cond_9

    if-eqz v6, :cond_9

    const-string v10, "android"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-virtual {v3, v1}, Lcom/android/server/am/oxb$zta$zta;->setLevel(I)Lcom/android/server/am/oxb$zta$zta;

    goto :goto_0

    :cond_8
    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v7, v0}, Lcom/android/server/am/zgw$sis;->ivd(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object v10

    invoke-virtual {v10, v6}, Lcom/android/server/am/zgw$sis;->qeg(Ljava/lang/String;)V

    :cond_9
    :goto_0
    invoke-virtual {v7}, Lcom/android/server/am/zgw$sis;->Ta()I

    move-result v10

    if-eq v10, v1, :cond_c

    invoke-virtual {v7}, Lcom/android/server/am/zgw$sis;->getAction()I

    move-result v10

    if-ne v10, v9, :cond_b

    invoke-direct {p0, v6}, Lcom/android/server/am/zgw;->sb(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_a

    iget-object v9, p0, Lcom/android/server/am/zgw;->Jj:Ljava/util/ArrayList;

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_a

    move v9, v8

    goto :goto_1

    :cond_a
    move v9, v1

    :goto_1
    const/4 v10, 0x4

    invoke-virtual {v3, v10}, Lcom/android/server/am/oxb$zta$zta;->setLevel(I)Lcom/android/server/am/oxb$zta$zta;

    move-result-object v10

    const-string v11, "WidgetPkg"

    invoke-virtual {v10, v11}, Lcom/android/server/am/oxb$zta$zta;->j(Ljava/lang/String;)Lcom/android/server/am/oxb$zta$zta;

    goto :goto_2

    :cond_b
    move v9, v1

    :goto_2
    if-eqz v0, :cond_d

    if-eqz v6, :cond_d

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_d

    invoke-static {v0}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/am/zgw$sis;->Ya()I

    move-result v10

    and-int/lit16 v10, v10, 0x200

    if-eqz v10, :cond_d

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "# canProviderGo # ret=false callerPkg="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " calleePkg="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " # call from sandbox app"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    return v8

    :cond_c
    move v9, v1

    :cond_d
    sget-boolean v0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# canProviderGo # ret="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " # abi="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_e
    if-eqz v9, :cond_f

    invoke-virtual {v7, v1}, Lcom/android/server/am/zgw$sis;->lqr(I)V

    sget-boolean p2, Lcom/android/server/am/zgw;->gk:Z

    if-eqz p2, :cond_f

    iget-object p0, p0, Lcom/android/server/am/zgw;->mRecorder:Lcom/android/server/am/oxb;

    invoke-virtual {v3}, Lcom/android/server/am/oxb$zta$zta;->build()Lcom/android/server/am/oxb$zta;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/server/am/oxb;->you(Lcom/android/server/am/oxb$zta;)V

    :cond_f
    move v1, v9

    goto :goto_3

    :cond_10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# canProviderGo # Exception: ret="

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/am/zgw;->gk:Z

    if-eqz v0, :cond_11

    new-instance v0, Lcom/android/server/am/oxb$zta$zta;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caller:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cpr:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v0, v3, p2, v4}, Lcom/android/server/am/oxb$zta$zta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string p2, "exception"

    invoke-virtual {v0, p2}, Lcom/android/server/am/oxb$zta$zta;->h(Ljava/lang/String;)Lcom/android/server/am/oxb$zta$zta;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/server/am/oxb$zta$zta;->build()Lcom/android/server/am/oxb$zta;

    move-result-object p2

    iget-object p0, p0, Lcom/android/server/am/zgw;->mRecorder:Lcom/android/server/am/oxb;

    invoke-virtual {p0, p2}, Lcom/android/server/am/oxb;->you(Lcom/android/server/am/oxb$zta;)V

    :cond_11
    :goto_3
    sget-boolean p0, Lcom/android/server/am/zgw;->ek:Z

    if-eqz p0, :cond_12

    if-nez v1, :cond_12

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "canProviderGo forbid "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    :goto_4
    return v1
.end method

.method public canReceiverGo(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/BroadcastRecord;Ljava/lang/String;)Z
    .locals 11

    sget-boolean p3, Lcom/android/server/am/zgw;->sInUsing:Z

    const/4 v0, 0x1

    if-eqz p3, :cond_1f

    sget-boolean p3, Lcom/android/server/am/zgw;->tk:Z

    if-nez p3, :cond_0

    goto/16 :goto_6

    :cond_0
    iget-object p3, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p3}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object p3

    const/4 v1, 0x0

    const-string v2, "persist.sys.appboot.allow"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_1

    return v0

    :cond_1
    const-string v2, "broadcast"

    const-string v3, " # r="

    const/4 v4, 0x0

    if-eqz p2, :cond_9

    iget-object v5, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v5, :cond_9

    invoke-virtual {v5}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/server/am/zgw;->Pj:Ljava/util/ArrayList;

    iget-object v6, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x4

    const-string v7, "# canReceiverGo # ret=true, info= "

    const-wide/16 v8, 0x2710

    if-eqz v5, :cond_5

    invoke-virtual {p3}, Lcom/android/server/am/zgw$sis;->Ta()I

    move-result v1

    if-eq v1, v0, :cond_3

    invoke-virtual {p3, v0}, Lcom/android/server/am/zgw$sis;->lqr(I)V

    sget-boolean v1, Lcom/android/server/am/zgw;->gk:Z

    if-eqz v1, :cond_3

    new-instance v1, Lcom/android/server/am/oxb$zta$zta;

    iget-object v5, p2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget-object v10, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2, v5, v10}, Lcom/android/server/am/oxb$zta$zta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    :cond_2
    invoke-virtual {v1, v4}, Lcom/android/server/am/oxb$zta$zta;->h(Ljava/lang/String;)Lcom/android/server/am/oxb$zta$zta;

    move-result-object v1

    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/am/oxb$zta$zta;->setAction(Ljava/lang/String;)Lcom/android/server/am/oxb$zta$zta;

    move-result-object v1

    const-string v2, "# widget intent action"

    invoke-virtual {v1, v2}, Lcom/android/server/am/oxb$zta$zta;->j(Ljava/lang/String;)Lcom/android/server/am/oxb$zta$zta;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/server/am/oxb$zta$zta;->setLevel(I)Lcom/android/server/am/oxb$zta$zta;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/zgw;->mRecorder:Lcom/android/server/am/oxb;

    invoke-virtual {v1}, Lcom/android/server/am/oxb$zta$zta;->build()Lcom/android/server/am/oxb$zta;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/server/am/oxb;->you(Lcom/android/server/am/oxb$zta;)V

    :cond_3
    invoke-direct {p0, v8, v9}, Lcom/android/server/am/zgw;->vju(J)V

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " # widget intent : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_4
    return v0

    :cond_5
    iget-object v5, p0, Lcom/android/server/am/zgw;->Qj:Ljava/util/ArrayList;

    iget-object v10, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v10}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-virtual {p3}, Lcom/android/server/am/zgw$sis;->Ta()I

    move-result v1

    if-eq v1, v0, :cond_7

    invoke-virtual {p3, v0}, Lcom/android/server/am/zgw$sis;->lqr(I)V

    sget-boolean p3, Lcom/android/server/am/zgw;->gk:Z

    if-eqz p3, :cond_7

    new-instance p3, Lcom/android/server/am/oxb$zta$zta;

    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    iget-object v5, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p3, v2, v1, v5}, Lcom/android/server/am/oxb$zta$zta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    :cond_6
    invoke-virtual {p3, v4}, Lcom/android/server/am/oxb$zta$zta;->h(Ljava/lang/String;)Lcom/android/server/am/oxb$zta$zta;

    move-result-object p3

    iget-object v1, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lcom/android/server/am/oxb$zta$zta;->setAction(Ljava/lang/String;)Lcom/android/server/am/oxb$zta$zta;

    move-result-object p3

    const-string v1, "# white intent"

    invoke-virtual {p3, v1}, Lcom/android/server/am/oxb$zta$zta;->j(Ljava/lang/String;)Lcom/android/server/am/oxb$zta$zta;

    move-result-object p3

    invoke-virtual {p3, v6}, Lcom/android/server/am/oxb$zta$zta;->setLevel(I)Lcom/android/server/am/oxb$zta$zta;

    move-result-object p3

    iget-object v1, p0, Lcom/android/server/am/zgw;->mRecorder:Lcom/android/server/am/oxb;

    invoke-virtual {p3}, Lcom/android/server/am/oxb$zta$zta;->build()Lcom/android/server/am/oxb$zta;

    move-result-object p3

    invoke-virtual {v1, p3}, Lcom/android/server/am/oxb;->you(Lcom/android/server/am/oxb$zta;)V

    :cond_7
    invoke-direct {p0, v8, v9}, Lcom/android/server/am/zgw;->vju(J)V

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " # white intent"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_8
    return v0

    :cond_9
    new-instance v5, Lcom/android/server/am/oxb$zta$zta;

    if-eqz p2, :cond_a

    iget-object v6, p2, Lcom/android/server/am/BroadcastRecord;->callerPackage:Ljava/lang/String;

    goto :goto_0

    :cond_a
    move-object v6, v4

    :goto_0
    iget-object v7, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v5, v2, v6, v7}, Lcom/android/server/am/oxb$zta$zta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_d

    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_b

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_b
    move-object v2, v4

    :goto_1
    invoke-virtual {v5, v2}, Lcom/android/server/am/oxb$zta$zta;->h(Ljava/lang/String;)Lcom/android/server/am/oxb$zta$zta;

    move-result-object v2

    iget-object v6, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v6, :cond_c

    invoke-virtual {v6}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    :cond_c
    invoke-virtual {v2, v4}, Lcom/android/server/am/oxb$zta$zta;->setAction(Ljava/lang/String;)Lcom/android/server/am/oxb$zta$zta;

    :cond_d
    invoke-virtual {p3}, Lcom/android/server/am/zgw$sis;->Ta()I

    move-result v2

    const-string v4, ", info= "

    const-string v6, "# canReceiverGo # ret="

    if-eq v2, v0, :cond_15

    invoke-virtual {p3}, Lcom/android/server/am/zgw$sis;->getAction()I

    move-result v2

    const/4 v7, 0x2

    if-ne v2, v0, :cond_e

    invoke-virtual {p3, v0}, Lcom/android/server/am/zgw$sis;->lqr(I)V

    invoke-virtual {v5, v7}, Lcom/android/server/am/oxb$zta$zta;->setLevel(I)Lcom/android/server/am/oxb$zta$zta;

    move-result-object v1

    const-string v2, "white list"

    invoke-virtual {v1, v2}, Lcom/android/server/am/oxb$zta$zta;->j(Ljava/lang/String;)Lcom/android/server/am/oxb$zta$zta;

    :goto_2
    move v1, v0

    goto :goto_4

    :cond_e
    invoke-virtual {p3}, Lcom/android/server/am/zgw$sis;->getAction()I

    move-result v2

    if-ne v2, v7, :cond_f

    sget-boolean v2, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v2, :cond_13

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " # blacklist"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    goto :goto_4

    :cond_f
    iget v2, p2, Lcom/android/server/am/BroadcastRecord;->callingUid:I

    const/16 v7, 0x2710

    if-ge v2, v7, :cond_11

    :cond_10
    :goto_3
    invoke-virtual {v5, v0}, Lcom/android/server/am/oxb$zta$zta;->setLevel(I)Lcom/android/server/am/oxb$zta$zta;

    goto :goto_2

    :cond_11
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x81

    if-eqz v2, :cond_12

    goto :goto_3

    :cond_12
    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->callerApp:Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_13

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v8, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-lt v8, v7, :cond_10

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x81

    if-eqz v2, :cond_13

    goto :goto_3

    :cond_13
    :goto_4
    if-eqz v1, :cond_14

    invoke-virtual {p3, v0}, Lcom/android/server/am/zgw$sis;->lqr(I)V

    :cond_14
    move v0, v1

    goto/16 :goto_5

    :cond_15
    invoke-virtual {v5, v1}, Lcom/android/server/am/oxb$zta$zta;->setLevel(I)Lcom/android/server/am/oxb$zta$zta;

    sget-boolean v2, Lcom/android/server/am/zgw;->ck:Z

    if-eqz v2, :cond_1c

    invoke-virtual {p3}, Lcom/android/server/am/zgw$sis;->Sa()Z

    move-result v2

    if-eqz v2, :cond_1c

    invoke-virtual {p3}, Lcom/android/server/am/zgw$sis;->getAction()I

    move-result v2

    if-eq v2, v0, :cond_1c

    if-eqz p2, :cond_1c

    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v7, "# canReceiverGo # ret=false comp "

    if-eqz v2, :cond_18

    iget-object v8, p0, Lcom/android/server/am/zgw;->Rj:Ljava/util/ArrayList;

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-nez p0, :cond_16

    sget-boolean p0, Lcom/android/server/am/zgw;->ek:Z

    if-eqz p0, :cond_17

    :cond_16
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " # black-action"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_17
    return v1

    :cond_18
    iget-object v2, p2, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_1c

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1b

    iget-object p0, p0, Lcom/android/server/am/zgw;->Sj:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-nez p0, :cond_19

    sget-boolean p0, Lcom/android/server/am/zgw;->ek:Z

    if-eqz p0, :cond_1a

    :cond_19
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p2, Lcom/android/server/am/BroadcastRecord;->curComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " # blackclass"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_1a
    move v0, v1

    :cond_1b
    return v0

    :cond_1c
    :goto_5
    sget-boolean v1, Lcom/android/server/am/zgw;->sDebug:Z

    if-nez v1, :cond_1d

    if-nez v0, :cond_1e

    :cond_1d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " # abi="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_1e
    if-eqz v0, :cond_1f

    sget-boolean p1, Lcom/android/server/am/zgw;->gk:Z

    if-eqz p1, :cond_1f

    iget-object p0, p0, Lcom/android/server/am/zgw;->mRecorder:Lcom/android/server/am/oxb;

    invoke-virtual {v5}, Lcom/android/server/am/oxb$zta$zta;->build()Lcom/android/server/am/oxb$zta;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/server/am/oxb;->you(Lcom/android/server/am/oxb$zta;)V

    :cond_1f
    :goto_6
    return v0
.end method

.method public canScheduleServiceRestart(Lcom/android/server/am/ProcessRecord;)Z
    .locals 7

    sget-boolean v0, Lcom/android/server/am/zgw;->uk:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result v0

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/am/zgw;->sDebug:Z

    const-string v4, " CurProcState = "

    const-string v5, "OnePlusAppBootManager"

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " canScheduleServiceRestart r.processName = "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {v2}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/zgw$sis;->getAction()I

    move-result v3

    if-ne v3, v1, :cond_2

    return v1

    :cond_2
    iget-object v3, p0, Lcom/android/server/am/zgw;->Lj:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    return v1

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/zgw;->zta(Lcom/android/server/am/ProcessRecord;)Z

    move-result p0

    if-nez p0, :cond_5

    sget-boolean p0, Lcom/android/server/am/zgw;->ek:Z

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# canScheduleServiceRestart # ret=false processName= "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v5, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 p0, 0x0

    return p0

    :cond_5
    return v1
.end method

.method public canServiceGo(Lcom/android/server/am/ProcessRecord;Landroid/content/Intent;Lcom/android/server/am/ServiceRecord;ILjava/lang/String;)Z
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    sget-boolean v5, Lcom/android/server/am/zgw;->sInUsing:Z

    const/4 v6, 0x1

    if-eqz v5, :cond_45

    sget-boolean v5, Lcom/android/server/am/zgw;->tk:Z

    if-nez v5, :cond_0

    goto/16 :goto_10

    :cond_0
    const/4 v5, 0x0

    if-eqz v3, :cond_1

    iget-object v7, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    if-eqz v7, :cond_1

    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v7

    goto :goto_0

    :cond_1
    move-object v7, v5

    :goto_0
    if-nez v7, :cond_2

    return v6

    :cond_2
    invoke-static {v7}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object v8

    const/4 v9, 0x0

    const-string v10, "persist.sys.appboot.allow"

    invoke-static {v10, v9}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v10

    if-ne v10, v6, :cond_3

    return v6

    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v10

    iget-object v11, v3, Lcom/android/server/am/ServiceRecord;->name:Landroid/content/ComponentName;

    if-eqz v1, :cond_4

    iget-object v12, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v12, :cond_4

    iget-object v5, v12, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_1

    :cond_4
    if-eqz p5, :cond_5

    move-object/from16 v5, p5

    :cond_5
    :goto_1
    new-instance v12, Lcom/android/server/am/oxb$zta$zta;

    const-string v13, "service"

    invoke-direct {v12, v13, v5, v7}, Lcom/android/server/am/oxb$zta$zta;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13}, Lcom/android/server/am/oxb$zta$zta;->h(Ljava/lang/String;)Lcom/android/server/am/oxb$zta$zta;

    :cond_6
    invoke-virtual {v12, v10}, Lcom/android/server/am/oxb$zta$zta;->setAction(Ljava/lang/String;)Lcom/android/server/am/oxb$zta$zta;

    sget-boolean v13, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v13, :cond_7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "# canServiceGo # "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " calling "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_7
    const-string v13, " # blackclass"

    const-string v14, "# canServiceGo # ret=false r "

    const-string v15, " # black-action"

    const-string v6, "# canServiceGo # ret=false intent "

    if-eqz v5, :cond_17

    if-eqz v7, :cond_17

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    const-string v9, "# canServiceGo # ret=false pkgName "

    if-nez v16, :cond_8

    invoke-static {v5}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/am/zgw$sis;->Ya()I

    move-result v1

    and-int/lit16 v1, v1, 0x200

    if-eqz v1, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # call from sandbox app"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    return v0

    :cond_8
    iget-object v1, v0, Lcom/android/server/am/zgw;->Wj:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-virtual {v8}, Lcom/android/server/am/zgw$sis;->Ta()I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_12

    invoke-virtual {v8}, Lcom/android/server/am/zgw$sis;->getAction()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_11

    sget-object v1, Lcom/android/server/am/zgw;->Lk:Ljava/util/ArrayList;

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    sget-boolean v0, Lcom/android/server/am/zgw;->sDebug:Z

    if-nez v0, :cond_9

    sget-boolean v0, Lcom/android/server/am/zgw;->ek:Z

    if-eqz v0, :cond_a

    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # SyncAdapter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_a
    const/4 v0, 0x0

    return v0

    :cond_b
    sget-boolean v1, Lcom/android/server/am/zgw;->ck:Z

    if-eqz v1, :cond_11

    invoke-virtual {v8}, Lcom/android/server/am/zgw$sis;->Sa()Z

    move-result v1

    if-eqz v1, :cond_11

    if-eqz v11, :cond_e

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_e

    iget-object v4, v0, Lcom/android/server/am/zgw;->Nj:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    sget-boolean v0, Lcom/android/server/am/zgw;->sDebug:Z

    if-nez v0, :cond_c

    sget-boolean v0, Lcom/android/server/am/zgw;->ek:Z

    if-eqz v0, :cond_d

    :cond_c
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_d
    const/4 v0, 0x0

    return v0

    :cond_e
    if-eqz v10, :cond_11

    iget-object v1, v0, Lcom/android/server/am/zgw;->Kj:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    sget-boolean v0, Lcom/android/server/am/zgw;->sDebug:Z

    if-nez v0, :cond_f

    sget-boolean v0, Lcom/android/server/am/zgw;->ek:Z

    if-eqz v0, :cond_10

    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_10
    const/4 v0, 0x0

    return v0

    :cond_11
    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/android/server/am/zgw$sis;->lqr(I)V

    sget-boolean v3, Lcom/android/server/am/zgw;->gk:Z

    if-eqz v3, :cond_13

    invoke-virtual {v12, v1}, Lcom/android/server/am/oxb$zta$zta;->setLevel(I)Lcom/android/server/am/oxb$zta$zta;

    iget-object v3, v0, Lcom/android/server/am/zgw;->mRecorder:Lcom/android/server/am/oxb;

    invoke-virtual {v12}, Lcom/android/server/am/oxb$zta$zta;->build()Lcom/android/server/am/oxb$zta;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/oxb;->you(Lcom/android/server/am/oxb$zta;)V

    goto :goto_2

    :cond_12
    move v1, v4

    :cond_13
    :goto_2
    new-array v3, v1, [I

    const/16 v4, 0x8e

    const/4 v5, 0x0

    aput v4, v3, v5

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_14

    iget-boolean v3, v0, Lcom/android/server/am/zgw;->Dj:Z

    if-ne v3, v1, :cond_14

    invoke-direct {v0, v7, v2}, Lcom/android/server/am/zgw;->zta(Ljava/lang/String;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_14

    return v5

    :cond_14
    sget-boolean v0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# canServiceGo # ret=true pkgName "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # android call"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_15
    const/4 v0, 0x1

    return v0

    :cond_16
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_17

    invoke-virtual {v8, v5}, Lcom/android/server/am/zgw$sis;->ivd(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object v1

    invoke-virtual {v1, v7}, Lcom/android/server/am/zgw$sis;->qeg(Ljava/lang/String;)V

    :cond_17
    invoke-virtual {v8}, Lcom/android/server/am/zgw$sis;->Ta()I

    move-result v1

    const-string v9, "# canServiceGo # ret="

    move-object/from16 v16, v15

    const/4 v15, 0x1

    if-eq v1, v15, :cond_2a

    invoke-direct {v0, v7}, Lcom/android/server/am/zgw;->sb(Ljava/lang/String;)Z

    move-result v1

    const-string v2, " pkgName "

    if-eqz v1, :cond_1a

    invoke-virtual {v8, v15}, Lcom/android/server/am/zgw$sis;->lqr(I)V

    sget-boolean v1, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v1, :cond_18

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # widgetpkg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_18
    sget-boolean v1, Lcom/android/server/am/zgw;->gk:Z

    if-eqz v1, :cond_19

    const-string v1, "widgetpkg"

    invoke-virtual {v12, v1}, Lcom/android/server/am/oxb$zta$zta;->j(Ljava/lang/String;)Lcom/android/server/am/oxb$zta$zta;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/am/oxb$zta$zta;->setLevel(I)Lcom/android/server/am/oxb$zta$zta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/oxb$zta$zta;->build()Lcom/android/server/am/oxb$zta;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/am/zgw;->mRecorder:Lcom/android/server/am/oxb;

    invoke-virtual {v0, v1}, Lcom/android/server/am/oxb;->you(Lcom/android/server/am/oxb$zta;)V

    :cond_19
    const/4 v1, 0x1

    return v1

    :cond_1a
    move v1, v15

    if-eqz v10, :cond_1d

    iget-object v15, v0, Lcom/android/server/am/zgw;->Mj:Ljava/util/ArrayList;

    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_1d

    invoke-virtual {v8, v1}, Lcom/android/server/am/zgw$sis;->lqr(I)V

    sget-boolean v3, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v3, :cond_1b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # white-action"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_1b
    sget-boolean v1, Lcom/android/server/am/zgw;->gk:Z

    if-eqz v1, :cond_1c

    const-string v1, "white-action"

    invoke-virtual {v12, v1}, Lcom/android/server/am/oxb$zta$zta;->j(Ljava/lang/String;)Lcom/android/server/am/oxb$zta$zta;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/am/oxb$zta$zta;->setLevel(I)Lcom/android/server/am/oxb$zta$zta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/oxb$zta$zta;->build()Lcom/android/server/am/oxb$zta;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/am/zgw;->mRecorder:Lcom/android/server/am/oxb;

    invoke-virtual {v0, v1}, Lcom/android/server/am/oxb;->you(Lcom/android/server/am/oxb$zta;)V

    :cond_1c
    const/4 v1, 0x1

    return v1

    :cond_1d
    invoke-virtual {v8}, Lcom/android/server/am/zgw$sis;->getAction()I

    move-result v15

    if-ne v15, v1, :cond_1e

    invoke-virtual {v8, v1}, Lcom/android/server/am/zgw$sis;->lqr(I)V

    const-string v1, "whitelist"

    invoke-virtual {v12, v1}, Lcom/android/server/am/oxb$zta$zta;->j(Ljava/lang/String;)Lcom/android/server/am/oxb$zta$zta;

    move-result-object v1

    const/4 v15, 0x2

    invoke-virtual {v1, v15}, Lcom/android/server/am/oxb$zta$zta;->setLevel(I)Lcom/android/server/am/oxb$zta$zta;

    move-object/from16 v15, p1

    move-object/from16 p5, v6

    :goto_3
    const/4 v6, 0x1

    goto/16 :goto_9

    :cond_1e
    const/4 v15, 0x2

    invoke-virtual {v8}, Lcom/android/server/am/zgw$sis;->getAction()I

    move-result v1

    move-object/from16 p5, v6

    const/4 v6, 0x3

    if-ne v1, v15, :cond_24

    sget-boolean v1, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v1, :cond_1f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v15, 0x0

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " # blacklist"

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_1f
    if-lez v4, :cond_21

    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-virtual {v8}, Lcom/android/server/am/zgw$sis;->getUid()I

    move-result v4

    if-ne v1, v4, :cond_21

    sget-boolean v1, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v1, :cond_20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " # blacklist # callingUid"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_20
    const-string v1, "blacklist # callingUid"

    invoke-virtual {v12, v1}, Lcom/android/server/am/oxb$zta$zta;->j(Ljava/lang/String;)Lcom/android/server/am/oxb$zta$zta;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/android/server/am/oxb$zta$zta;->setLevel(I)Lcom/android/server/am/oxb$zta$zta;

    const/4 v1, 0x1

    goto :goto_4

    :cond_21
    const/4 v1, 0x0

    :goto_4
    move-object/from16 v15, p1

    if-nez v1, :cond_23

    if-eqz v15, :cond_23

    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v8}, Lcom/android/server/am/zgw$sis;->getUid()I

    move-result v6

    if-ne v4, v6, :cond_23

    sget-boolean v1, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v1, :cond_22

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " # blacklist # proc uid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_22
    const-string v1, "# blacklist # proc uid"

    goto :goto_8

    :cond_23
    move v6, v1

    goto :goto_9

    :cond_24
    move-object/from16 v15, p1

    const/16 v1, 0x2710

    if-lez v4, :cond_26

    if-ge v4, v1, :cond_25

    const-string v2, "FIRST_APPLICATION_UID"

    invoke-virtual {v12, v2}, Lcom/android/server/am/oxb$zta$zta;->j(Ljava/lang/String;)Lcom/android/server/am/oxb$zta$zta;

    move-result-object v2

    const/4 v4, 0x1

    :goto_5
    invoke-virtual {v2, v4}, Lcom/android/server/am/oxb$zta$zta;->setLevel(I)Lcom/android/server/am/oxb$zta$zta;

    const/4 v2, 0x1

    goto :goto_6

    :cond_25
    invoke-virtual {v8}, Lcom/android/server/am/zgw$sis;->getUid()I

    move-result v2

    if-ne v4, v2, :cond_26

    const-string v2, "same uid"

    invoke-virtual {v12, v2}, Lcom/android/server/am/oxb$zta$zta;->j(Ljava/lang/String;)Lcom/android/server/am/oxb$zta$zta;

    move-result-object v2

    const/4 v4, 0x3

    goto :goto_5

    :cond_26
    const/4 v2, 0x0

    :goto_6
    if-nez v2, :cond_28

    if-eqz v15, :cond_28

    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ge v4, v1, :cond_27

    const-string v1, "FIRST_APPLICATION_UID"

    invoke-virtual {v12, v1}, Lcom/android/server/am/oxb$zta$zta;->j(Ljava/lang/String;)Lcom/android/server/am/oxb$zta$zta;

    move-result-object v1

    const/4 v2, 0x1

    :goto_7
    invoke-virtual {v1, v2}, Lcom/android/server/am/oxb$zta$zta;->setLevel(I)Lcom/android/server/am/oxb$zta$zta;

    goto/16 :goto_3

    :cond_27
    invoke-virtual {v8}, Lcom/android/server/am/zgw$sis;->getUid()I

    move-result v1

    if-ne v4, v1, :cond_28

    const-string v1, "same uid"

    :goto_8
    invoke-virtual {v12, v1}, Lcom/android/server/am/oxb$zta$zta;->j(Ljava/lang/String;)Lcom/android/server/am/oxb$zta$zta;

    move-result-object v1

    const/4 v2, 0x3

    goto :goto_7

    :cond_28
    move v6, v2

    :goto_9
    const/4 v1, 0x1

    if-eqz v6, :cond_29

    invoke-virtual {v8, v1}, Lcom/android/server/am/zgw$sis;->lqr(I)V

    :cond_29
    move-object/from16 v2, p2

    move-object/from16 v1, p5

    move-object/from16 p5, v9

    move-object/from16 v4, v16

    goto/16 :goto_a

    :cond_2a
    move-object/from16 p5, v6

    move v1, v15

    const/4 v2, 0x0

    move-object/from16 v15, p1

    invoke-virtual {v12, v2}, Lcom/android/server/am/oxb$zta$zta;->setLevel(I)Lcom/android/server/am/oxb$zta$zta;

    sget-boolean v2, Lcom/android/server/am/zgw;->ck:Z

    if-eqz v2, :cond_34

    invoke-virtual {v8}, Lcom/android/server/am/zgw$sis;->Sa()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-virtual {v8}, Lcom/android/server/am/zgw$sis;->getAction()I

    move-result v2

    if-eq v2, v1, :cond_34

    if-eqz v5, :cond_2b

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_34

    :cond_2b
    if-eqz v11, :cond_31

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_31

    iget-object v2, v0, Lcom/android/server/am/zgw;->Oj:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    if-eqz v7, :cond_2e

    sget-object v2, Lcom/android/server/am/zgw;->Dk:Ljava/lang/String;

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2e

    sget-boolean v1, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v1, :cond_2c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# canServiceGo # ret=true r "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " # temp-white-class"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_2c
    sget-boolean v1, Lcom/android/server/am/zgw;->gk:Z

    if-eqz v1, :cond_2d

    const-string v1, "temp-white-class"

    invoke-virtual {v12, v1}, Lcom/android/server/am/oxb$zta$zta;->j(Ljava/lang/String;)Lcom/android/server/am/oxb$zta$zta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/oxb$zta$zta;->build()Lcom/android/server/am/oxb$zta;

    move-result-object v1

    iget-object v0, v0, Lcom/android/server/am/zgw;->mRecorder:Lcom/android/server/am/oxb;

    invoke-virtual {v0, v1}, Lcom/android/server/am/oxb;->you(Lcom/android/server/am/oxb$zta;)V

    :cond_2d
    const/4 v0, 0x1

    return v0

    :cond_2e
    iget-object v2, v0, Lcom/android/server/am/zgw;->Nj:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_31

    sget-boolean v0, Lcom/android/server/am/zgw;->sDebug:Z

    if-nez v0, :cond_2f

    sget-boolean v0, Lcom/android/server/am/zgw;->ek:Z

    if-eqz v0, :cond_30

    :cond_2f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_30
    const/4 v0, 0x0

    return v0

    :cond_31
    if-eqz v10, :cond_34

    iget-object v1, v0, Lcom/android/server/am/zgw;->Kj:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_34

    sget-boolean v0, Lcom/android/server/am/zgw;->sDebug:Z

    if-nez v0, :cond_32

    sget-boolean v0, Lcom/android/server/am/zgw;->ek:Z

    if-eqz v0, :cond_33

    :cond_32
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, p2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-object/from16 v4, v16

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_33
    const/4 v0, 0x0

    return v0

    :cond_34
    move-object/from16 v2, p2

    move-object/from16 v1, p5

    move-object/from16 v4, v16

    move-object/from16 p5, v9

    const/4 v6, 0x1

    :goto_a
    const-string v9, "OnePlusAppBootManager"

    if-nez v6, :cond_3f

    if-eqz v5, :cond_3f

    move/from16 p4, v6

    sget-object v6, Lcom/android/server/am/zgw;->Dk:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_35

    sget-object v6, Lcom/android/server/am/zgw;->Ck:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_40

    :cond_35
    const-string v6, "#"

    if-eqz v11, :cond_36

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v12

    invoke-virtual {v11}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    goto :goto_b

    :cond_36
    move-object/from16 v16, v12

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_b
    if-eqz v15, :cond_37

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_c

    :cond_37
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    :goto_c
    invoke-virtual {v8, v5}, Lcom/android/server/am/zgw$sis;->a(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3d

    sget-boolean v5, Lcom/android/server/am/zgw;->ck:Z

    if-eqz v5, :cond_3d

    invoke-virtual {v8}, Lcom/android/server/am/zgw$sis;->Sa()Z

    move-result v5

    if-eqz v5, :cond_3d

    invoke-virtual {v8}, Lcom/android/server/am/zgw$sis;->getAction()I

    move-result v5

    const/4 v7, 0x1

    if-eq v5, v7, :cond_3d

    if-eqz v11, :cond_3a

    invoke-virtual {v11}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3a

    iget-object v7, v0, Lcom/android/server/am/zgw;->Nj:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3a

    sget-boolean v0, Lcom/android/server/am/zgw;->sDebug:Z

    if-nez v0, :cond_38

    sget-boolean v0, Lcom/android/server/am/zgw;->ek:Z

    if-eqz v0, :cond_39

    :cond_38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_39
    const/4 v0, 0x0

    return v0

    :cond_3a
    if-eqz v10, :cond_3d

    iget-object v5, v0, Lcom/android/server/am/zgw;->Kj:Ljava/util/ArrayList;

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3d

    sget-boolean v0, Lcom/android/server/am/zgw;->sDebug:Z

    if-nez v0, :cond_3b

    sget-boolean v0, Lcom/android/server/am/zgw;->ek:Z

    if-eqz v0, :cond_3c

    :cond_3b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_3c
    const/4 v0, 0x0

    return v0

    :cond_3d
    if-eqz v6, :cond_3e

    const/4 v1, 0x1

    invoke-virtual {v8, v1}, Lcom/android/server/am/zgw$sis;->lqr(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "let intent "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " go for boot policy!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "boot policy"

    move-object/from16 v2, v16

    invoke-virtual {v2, v1}, Lcom/android/server/am/oxb$zta$zta;->j(Ljava/lang/String;)Lcom/android/server/am/oxb$zta$zta;

    goto :goto_d

    :cond_3e
    move-object/from16 v2, v16

    goto :goto_d

    :cond_3f
    move/from16 p4, v6

    :cond_40
    move-object v2, v12

    move/from16 v6, p4

    :goto_d
    sget-boolean v1, Lcom/android/server/am/zgw;->sDebug:Z

    if-nez v1, :cond_42

    if-nez v6, :cond_41

    goto :goto_e

    :cond_41
    sget-boolean v1, Lcom/android/server/am/zgw;->ek:Z

    if-eqz v1, :cond_43

    if-nez v6, :cond_43

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "canServiceGo forbid "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v9, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_42
    :goto_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v3, p5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " # abi="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " # mCurrentActivityPkg="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/am/zgw;->Dk:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mLastActivityPkg="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/am/zgw;->Ck:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_43
    :goto_f
    if-eqz v6, :cond_44

    sget-boolean v1, Lcom/android/server/am/zgw;->gk:Z

    if-eqz v1, :cond_44

    iget-object v0, v0, Lcom/android/server/am/zgw;->mRecorder:Lcom/android/server/am/oxb;

    invoke-virtual {v2}, Lcom/android/server/am/oxb$zta$zta;->build()Lcom/android/server/am/oxb$zta;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/oxb;->you(Lcom/android/server/am/oxb$zta;)V

    :cond_44
    return v6

    :cond_45
    :goto_10
    move v0, v6

    return v0
.end method

.method public cjf(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/zgw;->sInUsing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# setAppBootState # on="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ",mAppBootSwitch="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/am/zgw;->tk:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusAppBootManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/android/server/am/zgw;->yk:I

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/am/zgw;->yk:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/android/server/am/zgw;->yk:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.appboot.flags"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sget-boolean v0, Lcom/android/server/am/zgw;->tk:Z

    if-eq v0, p1, :cond_2

    sput-boolean p1, Lcom/android/server/am/zgw;->tk:Z

    const-wide/16 v0, 0x7d0

    invoke-direct {p0, v0, v1}, Lcom/android/server/am/zgw;->vju(J)V

    :cond_2
    const-string p0, "persist.sys.appboot.usersetted"

    const-string p1, "1"

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public d(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    sget-boolean p0, Lcom/android/server/am/zgw;->sInUsing:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v1, 0x1

    if-ge p0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/zgw$sis;->Ua()Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_2
    :goto_0
    return-object v0
.end method

.method public db()Z
    .locals 0

    sget-boolean p0, Lcom/android/server/am/zgw;->sInUsing:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    sget-boolean p0, Lcom/android/server/am/zgw;->tk:Z

    return p0
.end method

.method public ear(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[GMS] mIsGMSRestricted to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    iput-boolean p1, p0, Lcom/android/server/am/zgw;->Dj:Z

    return-void
.end method

.method public f(Ljava/lang/String;)[Ljava/lang/String;
    .locals 2

    sget-boolean p0, Lcom/android/server/am/zgw;->sInUsing:Z

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p0

    const/4 v1, 0x1

    if-ge p0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/zgw$sis;->Wa()Ljava/util/HashSet;

    move-result-object p0

    sget-boolean v0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCallerPackageArray # packageName="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", pkgSet="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0

    :cond_3
    :goto_0
    return-object v0
.end method

.method public fb()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/zgw;->Cj:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/zgw;->Cj:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    iget-object v1, p0, Lcom/android/server/am/zgw;->Cj:Ljava/util/HashSet;

    const-string v2, "android.net.action.RECOMMEND_NETWORKS"

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/am/zgw;->Cj:Ljava/util/HashSet;

    const-string v1, "android.intent.action.RESOLVE_INSTANT_APP_PACKAGE"

    invoke-virtual {p0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public gb()I
    .locals 15

    const-string v0, "OnePlusAppBootManager"

    sget-boolean v1, Lcom/android/server/am/zgw;->sInUsing:Z

    if-nez v1, :cond_0

    const/4 p0, -0x4

    return p0

    :cond_0
    sget-boolean v1, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v1, :cond_1

    const-string v1, "# readXml_appboot"

    invoke-static {v1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_1
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/appboot/appboot.xml"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_3

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_2

    const-string p0, "# readXml_appboot # file not exists"

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_2
    const/4 p0, -0x1

    return p0

    :cond_3
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v2

    :try_start_0
    invoke-virtual {v2}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v1

    const-string v2, "appboot"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string v4, "version"

    invoke-interface {v2, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "switch"

    invoke-interface {v2, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    sget-boolean v5, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v5, :cond_4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " readXml_appboot # version "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " switch "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_4
    const-string v5, "0"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v5, 0x1

    if-eqz v2, :cond_5

    move v2, v3

    goto :goto_0

    :cond_5
    move v2, v5

    :goto_0
    sput-boolean v2, Lcom/android/server/am/zgw;->tk:Z

    const-string v2, "pkg"

    invoke-interface {v1, v2}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-nez v1, :cond_6

    const-string p0, "# readXml_appboot # error # nl = null"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    return p0

    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    move v4, v3

    move v6, v4

    :goto_1
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-ge v4, v7, :cond_f

    invoke-interface {v1, v4}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v7

    const-string v8, "package"

    invoke-interface {v7, v8}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v8

    const-string v9, "flag"

    invoke-interface {v7, v9}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v9

    invoke-interface {v9}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v9

    const-string v10, "action"

    invoke-interface {v7, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v10

    const-string v11, "caller"

    invoke-interface {v7, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v11

    const-string v12, "callee"

    invoke-interface {v7, v12}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v12

    invoke-interface {v12}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v12

    sget-boolean v13, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v13, :cond_7

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "package "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " # flag "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " # action "

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " # callerStr="

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " # calleeStr="

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_7
    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object v8

    invoke-direct {p0, v8, v11, v12}, Lcom/android/server/am/zgw;->zta(Lcom/android/server/am/zgw$sis;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-le v2, v5, :cond_9

    :try_start_1
    const-string v10, "setted"

    invoke-interface {v7, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v7

    invoke-interface {v7}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    if-eqz v7, :cond_8

    move v7, v5

    goto :goto_2

    :cond_8
    move v7, v3

    :goto_2
    invoke-virtual {v8, v7}, Lcom/android/server/am/zgw$sis;->cgv(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    :try_start_2
    const-string v7, "readXml_appboot # tag setted parse error"

    invoke-static {v0, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_3
    if-ne v9, v5, :cond_a

    invoke-virtual {v8, v9}, Lcom/android/server/am/zgw$sis;->setAction(I)V

    invoke-virtual {v8, v5}, Lcom/android/server/am/zgw$sis;->lqr(I)V

    goto :goto_4

    :cond_a
    const/4 v7, 0x2

    if-ne v9, v7, :cond_b

    invoke-virtual {v8, v9}, Lcom/android/server/am/zgw$sis;->setAction(I)V

    invoke-virtual {v8, v3}, Lcom/android/server/am/zgw$sis;->lqr(I)V

    goto :goto_4

    :cond_b
    if-nez v9, :cond_d

    invoke-virtual {v8}, Lcom/android/server/am/zgw$sis;->Ta()I

    move-result v9

    if-ne v9, v5, :cond_c

    invoke-virtual {v8, v5}, Lcom/android/server/am/zgw$sis;->setAction(I)V

    goto :goto_4

    :cond_c
    invoke-virtual {v8, v7}, Lcom/android/server/am/zgw$sis;->setAction(I)V

    :cond_d
    :goto_4
    invoke-virtual {v8}, Lcom/android/server/am/zgw$sis;->Ya()I

    move-result v7

    and-int/lit8 v7, v7, 0x40

    if-eqz v7, :cond_e

    invoke-virtual {v8}, Lcom/android/server/am/zgw$sis;->Ya()I

    move-result v7

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_e

    invoke-virtual {v8}, Lcom/android/server/am/zgw$sis;->_a()I

    move-result v7

    if-nez v7, :cond_e

    iget-object v7, p0, Lcom/android/server/am/zgw;->Vj:Ljava/util/ArrayList;

    invoke-static {v8}, Lcom/android/server/am/zgw$sis;->you(Lcom/android/server/am/zgw$sis;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    :cond_e
    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_1

    :cond_f
    return v6

    :catch_1
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# readXml_appboot # parse error ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, -0x3

    return p0
.end method

.method public getScreenState()Z
    .locals 0

    sget-boolean p0, Lcom/android/server/am/zgw;->mScreenOn:Z

    return p0
.end method

.method public handleAppKilledLocked(Lcom/android/server/am/ProcessRecord;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/zgw;->tl:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/zgw;->ugm(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-boolean v2, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleAppKilledLocked packageName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " processName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OnePlusAppBootManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/zgw;->you(Lcom/android/server/am/ProcessRecord;J)V

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/am/zgw;->zta(Lcom/android/server/am/ProcessRecord;J)V

    :cond_2
    return-void
.end method

.method public hb()I
    .locals 8

    new-instance v0, Ljava/io/File;

    const-string v1, "/system/etc/presetlist.xml"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_0

    const-string p0, "# readXml_prelist # file not exists"

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_0
    const/4 p0, -0x1

    return p0

    :cond_1
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v1

    :try_start_0
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/File;)Lorg/w3c/dom/Document;

    move-result-object v0

    const-string v1, "prelist"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v3, "version"

    invoke-interface {v1, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "switch"

    invoke-interface {v1, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    sget-boolean v4, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " readXml_prelist # version "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " switch "

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_2
    const-string v1, "pkg"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    move v1, v2

    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_4

    invoke-interface {v0, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v3

    const-string v4, "package"

    invoke-interface {v3, v4}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    const-string v5, "flag"

    invoke-interface {v3, v5}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v5

    const-string v6, "action"

    invoke-interface {v3, v6}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    sget-boolean v6, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v6, :cond_3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "package "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " # flag "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " # action "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_3
    sget-object v6, Lcom/android/server/am/zgw;->Jk:Ljava/util/HashMap;

    new-instance v7, Lcom/android/server/am/zgw$rtg;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-direct {v7, p0, v4, v5, v3}, Lcom/android/server/am/zgw$rtg;-><init>(Lcom/android/server/am/zgw;Ljava/lang/String;II)V

    invoke-virtual {v6, v4, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    return v1

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# readXml_prelist # parse error ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OnePlusAppBootManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x2

    return p0
.end method

.method public initEnv(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/zgw;->sInUsing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/am/zgw;->mAms:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/zgw;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "AppBootThread"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/am/zgw;->Xj:Landroid/os/HandlerThread;

    iget-object p1, p0, Lcom/android/server/am/zgw;->Xj:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Lcom/android/server/am/zgw$you;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Xj:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/am/zgw$you;-><init>(Lcom/android/server/am/zgw;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/am/zgw;->Yj:Lcom/android/server/am/zgw$you;

    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/zgw;->registerPackageReceiver()V

    invoke-direct {p0}, Lcom/android/server/am/zgw;->registerGeneralReceiver()V

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/am/zgw;->initOnlineConfig()V

    invoke-virtual {p0}, Lcom/android/server/am/zgw;->fb()V

    new-instance p1, Lcom/android/server/am/zgw$ssp;

    iget-object p2, p0, Lcom/android/server/am/zgw;->Yj:Lcom/android/server/am/zgw$you;

    invoke-direct {p1, p0, p2}, Lcom/android/server/am/zgw$ssp;-><init>(Lcom/android/server/am/zgw;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/am/zgw;->mSettingsObserver:Lcom/android/server/am/zgw$ssp;

    iget-object p1, p0, Lcom/android/server/am/zgw;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/server/am/zgw;->mResolver:Landroid/content/ContentResolver;

    new-instance p1, Lcom/android/server/am/oxb;

    iget-object p2, p0, Lcom/android/server/am/zgw;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/am/zgw;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {p1, p2, v0}, Lcom/android/server/am/oxb;-><init>(Landroid/content/Context;Landroid/content/ContentResolver;)V

    iput-object p1, p0, Lcom/android/server/am/zgw;->mRecorder:Lcom/android/server/am/oxb;

    const/4 p1, 0x1

    const-string p2, "persist.sys.appboot.recorder"

    invoke-static {p2, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p2

    sput-boolean p2, Lcom/android/server/am/zgw;->gk:Z

    iget-object p2, p0, Lcom/android/server/am/zgw;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "sms_default_application"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/zgw;->mSettingsObserver:Lcom/android/server/am/zgw$ssp;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p2, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object p2, p0, Lcom/android/server/am/zgw;->mResolver:Landroid/content/ContentResolver;

    const-string v0, "dialer_default_application"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/zgw;->mSettingsObserver:Lcom/android/server/am/zgw$ssp;

    invoke-virtual {p2, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string p2, "init"

    invoke-direct {p0, p2}, Lcom/android/server/am/zgw;->xb(Ljava/lang/String;)V

    const-string p2, "com.tencent.mobileqq"

    const-string v0, "com.tencent.mobileqq:MSF"

    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/zgw;->tsu(Ljava/lang/String;Ljava/lang/String;)V

    sget-object p2, Lcom/android/server/am/zgw;->mRegion:Ljava/lang/String;

    const-string v0, "CN"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_2

    sget p2, Lcom/android/server/am/zgw;->yk:I

    and-int/2addr p2, p1

    if-nez p2, :cond_2

    sget-boolean p2, Lcom/android/server/am/zgw;->tk:Z

    sput-boolean v3, Lcom/android/server/am/zgw;->tk:Z

    iput-boolean v3, p0, Lcom/android/server/am/zgw;->Bj:Z

    sget-boolean v0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initEnv # set from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " -> "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p2, Lcom/android/server/am/zgw;->tk:Z

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " # DISABLE_FUNC_CAN_PROVIDER_GO -> true"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OnePlusAppBootManager"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    new-array p1, p1, [I

    const/16 p2, 0x28

    aput p2, p1, v3

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_3

    const-wide/16 p1, 0x0

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/zgw;->bud(J)V

    :cond_3
    invoke-direct {p0}, Lcom/android/server/am/zgw;->Yc()V

    return-void
.end method

.method public initOnlineConfig()V
    .locals 5

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/zgw;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/zgw;->Yj:Lcom/android/server/am/zgw$you;

    new-instance v3, Lcom/android/server/am/zgw$zta;

    invoke-direct {v3, p0}, Lcom/android/server/am/zgw$zta;-><init>(Lcom/android/server/am/zgw;)V

    const-string v4, "AppBoot"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/zgw;->Aj:Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/android/server/am/zgw;->Aj:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    iget-object p0, p0, Lcom/android/server/am/zgw;->Yj:Lcom/android/server/am/zgw$you;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public isBlackJobClass(Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lcom/android/server/am/zgw;->Mk:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isDebug()Z
    .locals 0

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    return p0
.end method

.method rtg(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/zgw;->Uj:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/zgw;->Tj:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/am/zgw;->Tj:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/HashSet;

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public setCurrentIME(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/zgw;->zta(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/server/am/zgw;->Ak:Ljava/lang/String;

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "# setCurrentIME # mCurrentIME="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/server/am/zgw;->Ak:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_0
    sget-object p0, Lcom/android/server/am/zgw;->Ak:Ljava/lang/String;

    if-eqz p0, :cond_1

    invoke-static {p0}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/am/zgw$sis;->setAction(I)V

    invoke-virtual {p0, p1}, Lcom/android/server/am/zgw$sis;->lqr(I)V

    :cond_1
    return-void
.end method

.method public setCurrentWallpaperPackage(Landroid/content/ComponentName;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/android/server/am/zgw;->Bk:Ljava/lang/String;

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "# setCurrentWallpaperPackage # "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_1
    sget-object p0, Lcom/android/server/am/zgw;->Bk:Ljava/lang/String;

    if-eqz p0, :cond_2

    invoke-static {p0}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/am/zgw$sis;->lqr(I)V

    :cond_2
    return-void
.end method

.method public sis(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/zgw;->Cj:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/zgw;->Cj:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->clear()V

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/zgw;->Cj:Ljava/util/HashSet;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

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

.method public skipBroadcast(Landroid/content/Intent;Ljava/lang/String;IILcom/android/server/am/ProcessRecord;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# skipBroadcast # intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", callerPackage = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",callingPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",callingUid="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, ",callerApp="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_0
    const/16 p3, 0x2710

    const/4 p5, 0x0

    if-ge p4, p3, :cond_1

    return p5

    :cond_1
    if-nez p1, :cond_2

    return p5

    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_3

    iget-object p4, p0, Lcom/android/server/am/zgw;->Rj:Ljava/util/ArrayList;

    invoke-virtual {p4, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/am/zgw;->zta(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p4

    if-eqz p4, :cond_3

    invoke-static {p4}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object p4

    invoke-virtual {p4}, Lcom/android/server/am/zgw$sis;->getAction()I

    move-result p4

    const/4 v0, 0x1

    if-eq p4, v0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "# skipBroadcast # black action : "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OnePlusAppBootManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    iget-object p0, p0, Lcom/android/server/am/zgw;->Tj:Ljava/util/HashMap;

    invoke-virtual {p0, p2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "com.tencent.mobileqq.broadcast.qq"

    invoke-virtual {p0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {p2}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/zgw$sis;->Ya()I

    move-result p1

    and-int/lit16 p1, p1, -0x81

    invoke-virtual {p0, p1}, Lcom/android/server/am/zgw$sis;->veq(I)V

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_4

    const-string p0, "skipBroadcast # remove PKG_FLAG_SPECIAL_LAUNCHER_APP !"

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_4
    return p5
.end method

.method public trackProcess(ZLcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .locals 6

    sget-boolean v0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PKG_TRACK # trackProcess # add="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ", proc="

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "OnePlusAppBootManager"

    invoke-static {v0, p3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_1

    iget-object p3, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz p3, :cond_1

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_2

    return-void

    :cond_2
    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/am/zgw;->Ik:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_0
    sget-object v2, Lcom/android/server/am/zgw;->Ik:Ljava/util/HashMap;

    invoke-virtual {v2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashSet;

    if-nez v2, :cond_3

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    sget-object v3, Lcom/android/server/am/zgw;->Ik:Ljava/util/HashMap;

    invoke-virtual {v3, p3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez p1, :cond_3

    const-string v3, "OnePlusAppBootManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PKG_TRACK # Exception # no add when remove ProcessRecord:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz p1, :cond_4

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result p1

    if-nez p1, :cond_5

    monitor-exit v1

    return-void

    :cond_5
    invoke-virtual {v2, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2}, Ljava/util/HashSet;->size()I

    move-result p1

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :cond_6
    sget-boolean v3, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v3, :cond_7

    invoke-virtual {v2, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    const-string v2, "OnePlusAppBootManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PKG_TRACK # trackProcess # pkgName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", contain="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ", size="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_8

    invoke-virtual {p0, p3}, Lcom/android/server/am/zgw;->updateAppStopInfo(Ljava/lang/String;)V

    :cond_8
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method tsu(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/zgw;->Tj:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/zgw;->Tj:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashSet;

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    :goto_0
    invoke-virtual {v0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/server/am/zgw;->Tj:Ljava/util/HashMap;

    invoke-virtual {p2, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p1, :cond_2

    iget-object p0, p0, Lcom/android/server/am/zgw;->Tj:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map$Entry;

    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "mKillPackageProcessName: packageName = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ", tags = "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string p2, ", "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->setLength(I)V

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OnePlusAppBootManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    return-void
.end method

.method public updateAccesibilityServiceFlag(Landroid/content/Intent;Landroid/content/ComponentName;I)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/zgw;->sInUsing:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/am/zgw;->tk:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/zgw;->zta(Landroid/content/Intent;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p1

    const/4 p2, 0x1

    if-ge p1, p2, :cond_1

    goto :goto_0

    :cond_1
    sget-boolean p1, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p1, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateAccesibilityServiceFlag # packageName="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", flag="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_2
    if-ne p3, p2, :cond_3

    invoke-static {p0}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object p0

    invoke-virtual {p0, p2}, Lcom/android/server/am/zgw$sis;->lqr(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public updateAppStopInfo(Ljava/lang/String;)V
    .locals 7

    sget-boolean v0, Lcom/android/server/am/zgw;->sInUsing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object v0

    sget-object v1, Lcom/android/server/am/zgw;->Bk:Ljava/lang/String;

    const-string v2, "# updateAppStopInfo # go pkgName="

    if-eqz v1, :cond_2

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " # wallpaper"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/zgw;->yj:Ljava/lang/String;

    if-eqz v1, :cond_4

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " # smspkg"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_3
    return-void

    :cond_4
    iget-object v1, p0, Lcom/android/server/am/zgw;->zj:Ljava/lang/String;

    if-eqz v1, :cond_6

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " # dailpkg"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_5
    return-void

    :cond_6
    invoke-direct {p0, p1}, Lcom/android/server/am/zgw;->sb(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_8

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " # widgetpkg"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_7
    return-void

    :cond_8
    invoke-virtual {v0}, Lcom/android/server/am/zgw$sis;->getAction()I

    move-result p0

    invoke-virtual {v0}, Lcom/android/server/am/zgw$sis;->Ya()I

    move-result v1

    const-string v3, "# updateAppStopInfo # ignore pkgName="

    const/4 v4, 0x0

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne p0, v6, :cond_b

    and-int/lit8 p0, v1, 0x2

    if-eqz p0, :cond_9

    invoke-virtual {v0, v6}, Lcom/android/server/am/zgw$sis;->lqr(I)V

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " # sys-whitelist"

    goto :goto_0

    :cond_9
    invoke-virtual {v0, v4}, Lcom/android/server/am/zgw$sis;->lqr(I)V

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " # 3rd-whitelist"

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_a
    return-void

    :cond_b
    if-ne p0, v5, :cond_d

    invoke-virtual {v0, v4}, Lcom/android/server/am/zgw$sis;->lqr(I)V

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_c

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " # blacklist"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_c
    return-void

    :cond_d
    and-int/lit8 p0, v1, 0x8

    const-string v5, " # abi="

    if-nez p0, :cond_f

    and-int/lit8 p0, v1, 0x2

    if-nez p0, :cond_f

    and-int/lit8 p0, v1, 0x20

    if-eqz p0, :cond_e

    goto :goto_1

    :cond_e
    invoke-virtual {v0, v4}, Lcom/android/server/am/zgw$sis;->lqr(I)V

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_10

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_f
    :goto_1
    invoke-virtual {v0, v6}, Lcom/android/server/am/zgw$sis;->lqr(I)V

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_10

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_10
    return-void
.end method

.method public updateAppStopInfo(Ljava/lang/String;I)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/zgw;->sInUsing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v0, p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_3

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "# updateAppStopInfo # go pkgName="

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " # samePid"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p0, p1}, Lcom/android/server/am/zgw;->updateAppStopInfo(Ljava/lang/String;)V

    return-void
.end method

.method public updatePowerFlag(Ljava/lang/String;I)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/zgw;->sInUsing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x8000

    and-int/2addr p2, v0

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    const/4 v0, 0x2

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/am/zgw;->sis(Ljava/lang/String;ZI)V

    :cond_1
    return-void
.end method

.method public updateWidgetPackage(Ljava/lang/String;Z)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# updateWidgetPackage # "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusAppBootManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/zgw;->Fj:Ljava/util/HashSet;

    monitor-enter v0

    if-eqz p2, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/zgw;->Fj:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/android/server/am/zgw;->Fj:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/android/server/am/zgw;->Fj:Ljava/util/HashSet;

    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :cond_2
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
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/zgw;->Fj:Ljava/util/HashSet;

    monitor-enter v0

    if-nez p1, :cond_0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/zgw;->Fj:Ljava/util/HashSet;

    invoke-virtual {p0}, Ljava/util/HashSet;->clear()V

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/android/server/am/zgw;->Fj:Ljava/util/HashSet;

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

.method public you(Ljava/lang/String;I)I
    .locals 5

    sget-boolean v0, Lcom/android/server/am/zgw;->sInUsing:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {p1}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    if-eq p2, v1, :cond_1

    const/4 v2, 0x2

    if-eq p2, v2, :cond_1

    const/16 v2, -0xa

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p2}, Lcom/android/server/am/zgw$sis;->setAction(I)V

    sget-object v2, Lcom/android/server/am/zgw;->Hk:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/android/server/am/zgw;->Hk:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    move v2, v1

    :goto_0
    sget-boolean v3, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# setAppBootMode # packageName="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", mode="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", ret="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_3
    if-lez v2, :cond_4

    invoke-virtual {v0, v1}, Lcom/android/server/am/zgw$sis;->cgv(I)V

    const-wide/16 p1, 0x1f4

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/zgw;->vju(J)V

    :cond_4
    return v2
.end method

.method public zta(Ljava/util/HashMap;)I
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/zgw$sis;",
            ">;)I"
        }
    .end annotation

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_0

    const-string p0, "writeXml_appboot #"

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_0
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object p0

    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    :try_start_0
    invoke-interface {p0, v0}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/Writer;)V

    const-string v1, "UTF-8"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    const-string v1, "\n"

    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v2, "appboot"

    invoke-interface {p0, v1, v2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v2, "version"

    const-string v3, "2"

    invoke-interface {p0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, ""

    const-string v2, "switch"

    sget-boolean v3, Lcom/android/server/am/zgw;->tk:Z

    if-eqz v3, :cond_1

    const-string v3, "1"

    goto :goto_0

    :cond_1
    const-string v3, "0"

    :goto_0
    invoke-interface {p0, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v1, "\n"

    invoke-interface {p0, v1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {p1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/zgw$sis;

    sget-boolean v3, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# writeXml_appboot # abi = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    if-eqz v2, :cond_2

    :try_start_2
    const-string v3, ""

    const-string v4, "pkg"

    invoke-interface {p0, v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, ""

    const-string v4, "package"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/zgw$sis;->Za()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, ""

    const-string v4, "flag"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/zgw$sis;->Ya()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, ""

    const-string v4, "setted"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/zgw$sis;->_a()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, ""

    const-string v4, "boot"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/zgw$sis;->Ta()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, ""

    const-string v4, "action"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v6, Lcom/android/server/am/zgw;->Hk:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/android/server/am/zgw$sis;->Za()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/server/am/zgw;->Hk:Ljava/util/HashMap;

    invoke-virtual {v2}, Lcom/android/server/am/zgw$sis;->Za()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lcom/android/server/am/zgw$sis;->getAction()I

    move-result v6

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, ""

    const-string v4, "caller"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/zgw$sis;->Xa()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v3, ""

    const-string v4, "callee"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/am/zgw$sis;->Va()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v3, v4, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, ""

    const-string v3, "pkg"

    invoke-interface {p0, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    const-string v2, "\n"

    invoke-interface {p0, v2}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_1

    :catch_0
    move-exception v2

    :try_start_3
    const-string v3, "OnePlusAppBootManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "writeXml_appboot # Exception # "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    :cond_5
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    const-string p1, ""

    const-string v1, "appboot"

    invoke-interface {p0, p1, v1}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    invoke-interface {p0}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    const-string p0, "/data/system/appboot/appboot.xml"

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/am/zgw;->cno(Ljava/lang/String;Ljava/lang/String;)I

    move-result p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catchall_0
    move-exception p0

    :try_start_5
    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw p0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception p0

    const/16 p1, -0xb

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "writeXml_appboot # Exception # "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OnePlusAppBootManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    move p0, p1

    :goto_3
    sget-boolean p1, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_6
    return p0
.end method

.method public zta(Landroid/content/pm/ResolveInfo;I)V
    .locals 0

    sget-boolean p0, Lcom/android/server/am/zgw;->sInUsing:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_4

    iget-object p0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object p0, p1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz p0, :cond_2

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object p0, p1, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    if-eqz p0, :cond_4

    iget-object p0, p0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    :goto_0
    invoke-static {p0}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/server/am/zgw$sis;->Ta()I

    move-result p1

    if-eq p1, p2, :cond_3

    invoke-virtual {p0, p2}, Lcom/android/server/am/zgw$sis;->lqr(I)V

    :cond_3
    sget-boolean p1, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p1, :cond_4

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "# updateBootFlag # abi="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    nop

    :cond_4
    return-void
.end method

.method public zta(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/content/pm/PackageParser$Package;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/am/zgw;->sInUsing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz v0, :cond_1

    const-string v0, " initPackages # "

    invoke-static {v0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_1
    sget-object v0, Lcom/android/server/am/zgw;->mPkgMap:Ljava/util/HashMap;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-lez v0, :cond_3

    sget-boolean p0, Lcom/android/server/am/zgw;->sDebug:Z

    if-eqz p0, :cond_2

    const-string p0, " initPackages # mPkgMap size > 0 , return"

    invoke-static {p0}, Lcom/android/server/am/zgw;->myLog(Ljava/lang/String;)V

    :cond_2
    return-void

    :cond_3
    invoke-virtual {p1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    new-instance v1, Lcom/android/server/am/zgw$sis;

    iget-object v2, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/android/server/am/zgw$sis;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Lcom/android/server/am/zgw$sis;->zta(Landroid/content/pm/PackageParser$Package;)V

    sget-object v2, Lcom/android/server/am/zgw;->mPkgMap:Ljava/util/HashMap;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/server/am/zgw;->pm()V

    invoke-virtual {p0}, Lcom/android/server/am/zgw;->gb()I

    iget-object p1, p0, Lcom/android/server/am/zgw;->Vj:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-lez p1, :cond_5

    iget-object p1, p0, Lcom/android/server/am/zgw;->Vj:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/zgw;->qb(Ljava/lang/String;)Lcom/android/server/am/zgw$sis;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/zgw$sis;->zta(Lcom/android/server/am/zgw$sis;)I

    move-result v2

    and-int/lit8 v2, v2, -0x21

    invoke-static {v1, v2}, Lcom/android/server/am/zgw$sis;->zta(Lcom/android/server/am/zgw$sis;I)I

    invoke-static {v1}, Lcom/android/server/am/zgw$sis;->zta(Lcom/android/server/am/zgw$sis;)I

    move-result v2

    and-int/lit8 v2, v2, -0x41

    invoke-static {v1, v2}, Lcom/android/server/am/zgw$sis;->zta(Lcom/android/server/am/zgw$sis;I)I

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/am/zgw$sis;->you(Lcom/android/server/am/zgw$sis;I)I

    invoke-virtual {v1, v2}, Lcom/android/server/am/zgw$sis;->setAction(I)V

    sget-object v2, Lcom/android/server/am/zgw;->mPms:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2, v0}, Lcom/android/server/pm/PackageManagerService;->getPakcageInfo(Ljava/lang/String;)Landroid/content/pm/PackageParser$Package;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/zgw$sis;->zta(Landroid/content/pm/PackageParser$Package;)V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/android/server/am/zgw;->rm()V

    return-void
.end method

.method zta(Lcom/android/server/am/ProcessRecord;)Z
    .locals 2

    iget-object p0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v0, 0x1

    and-int/2addr p0, v0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    iget p0, p1, Lcom/android/server/am/ProcessRecord;->curAdj:I

    const/16 v1, 0xc8

    if-gt p0, v1, :cond_1

    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getCurProcState()I

    move-result p0

    const/16 p1, 0x11

    if-ge p0, p1, :cond_2

    return v0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method
