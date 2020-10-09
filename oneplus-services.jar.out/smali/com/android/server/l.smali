.class public Lcom/android/server/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$zta$you;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/l$kth;,
        Lcom/android/server/l$tsu;,
        Lcom/android/server/l$sis;,
        Lcom/android/server/l$rtg;,
        Lcom/android/server/l$you;,
        Lcom/android/server/l$ssp;,
        Lcom/android/server/l$zta;,
        Lcom/android/server/l$cno;
    }
.end annotation


# static fields
.field static final Ah:I = 0x3

.field public static final Bh:I = 0x8

.field private static final Ch:Ljava/lang/String; = "overheat_v2.0"

.field static final DROPBOX_MAX_SIZE:I = 0x40000

.field static final DROPBOX_TAG:Ljava/lang/String; = "overheat"

.field private static final Dh:Ljava/lang/String; = "ht"

.field private static final Eh:Ljava/lang/String; = "cl"

.field static final FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

.field private static final Fh:Ljava/lang/String; = "mt"

.field private static final Gh:Ljava/lang/String; = "hr"

.field public static final ISSUE_HEAT_CAMERA:I = 0x1c

.field public static final ISSUE_HEAT_CAMERA_WHEN_CHARGE:I = 0x1b

.field public static final ISSUE_HEAT_CPU_LOAD:I = 0x19

.field public static final ISSUE_HEAT_PLAY_WHEN_CHARGE:I = 0x18

.field public static final ISSUE_HEAT_PLAY_WHEN_DASH:I = 0x17

.field public static final ISSUE_HEAT_UNKNOWN_REASON:I = 0x1a

.field private static final MDM_APPID:Ljava/lang/String; = "NYNCG4I0TI"

.field private static final MDM_EVENT:Ljava/lang/String; = "overheat"

.field static final ONLINECONFIG_PROJECT_NAME:Ljava/lang/String; = "OverHeatingDiagnosis"

.field static final RESERVED_BYTES_PER_LOGCAT_LINE:I = 0x64

.field static final STATE_NORMAL:I = 0x0

.field static final TAG:Ljava/lang/String; = "OverHeatingDiagnosis"

.field public static final eh:Ljava/lang/String; = "/data/system/power/diagnosis_heating.txt"

.field static final fh:Ljava/lang/String; = "/sys/class/thermal/thermal_zone27/temp"

.field static final gh:I = 0x1

.field static final hh:Ljava/lang/String; = "com.oneplus:string/config_overheat_thermal_zone_path"

.field static final ih:Ljava/lang/String; = "com.oneplus:integer/config_overheat_thermal_zone_precision"

.field static final jh:J = 0x493e0L

.field static final kh:J = 0x927c0L

.field static final lh:J = 0x124f80L

.field private static mPackageManager:Landroid/content/pm/PackageManager; = null

.field static final mh:J = 0xea60L

.field static final nh:I = 0x23

.field static final oh:I = 0xc8

.field static final ph:I = 0x26

.field static final qh:I = 0x2c

.field static final rh:J = 0x3e8L

.field static final sh:J = 0x2bf20L

.field static final th:I = 0x800

.field static final uh:I = 0x28

.field static final vh:I = 0x3

.field static final wh:I = 0x24

.field static final xh:J = 0x2bf20L

.field static final yh:I = 0x1

.field static final zh:I = 0x2


# instance fields
.field private Ag:J

.field private Bg:J

.field private Cg:I

.field private Dg:I

.field private Eg:I

.field private Fg:J

.field private Gg:J

.field private Hg:I

.field private Ig:I

.field private Jg:I

.field private Kg:I

.field private Lg:I

.field private Mg:I

.field private Ng:J

.field private Og:Lcom/android/server/power/you;

.field Pg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/l$sis;",
            ">;"
        }
    .end annotation
.end field

.field Qg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field Rg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field Sg:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private Tg:Lcom/android/server/l$zta;

.field private Ug:Lcom/android/server/l$tsu;

.field private Vg:I

.field private Wg:Z

.field private Xg:Z

.field Yg:Lcom/android/server/l$cno;

.field Zg:Lcom/android/server/l$cno;

.field _g:Lcom/android/server/l$cno;

.field ah:Lcom/android/server/l$cno;

.field bh:Lcom/android/server/l$cno;

.field ch:Lcom/android/server/l$cno;

.field dh:Lcom/android/server/l$cno;

.field private mBatteryReceiver:Lcom/android/server/l$you;

.field private mConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mConfigUpdater:Lcom/android/server/l$rtg;

.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field private mHandler:Lcom/android/server/l$ssp;

.field private final mLock:Ljava/lang/Object;

.field private mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

.field private mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

.field private og:Landroid/content/IntentFilter;

.field private pg:Z

.field private qg:Z

.field private rg:Z

.field private sg:Ljava/lang/String;

.field private tg:Z

.field private ug:J

.field private vg:J

.field private wg:J

.field private xg:J

.field private yg:I

.field private zg:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/l;->FULL_DATE_FORMAT:Ljava/text/SimpleDateFormat;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/l;->mPackageManager:Landroid/content/pm/PackageManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/l;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/l;->Pg:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/l;->Qg:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/l;->Rg:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/l;->Sg:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/l$zta;

    const/4 v8, 0x0

    invoke-direct {v0, p0, v8}, Lcom/android/server/l$zta;-><init>(Lcom/android/server/l;Lcom/android/server/k;)V

    iput-object v0, p0, Lcom/android/server/l;->Tg:Lcom/android/server/l$zta;

    new-instance v0, Lcom/android/server/l$tsu;

    invoke-direct {v0, p0, v8}, Lcom/android/server/l$tsu;-><init>(Lcom/android/server/l;Lcom/android/server/k;)V

    iput-object v0, p0, Lcom/android/server/l;->Ug:Lcom/android/server/l$tsu;

    const/4 v9, 0x1

    iput-boolean v9, p0, Lcom/android/server/l;->Wg:Z

    iput-boolean v9, p0, Lcom/android/server/l;->Xg:Z

    new-instance v10, Lcom/android/server/l$cno;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const/16 v5, 0x25

    const/16 v6, 0x29

    const-string v7, "overheat"

    move-object v0, v10

    move-object v1, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/l$cno;-><init>(Lcom/android/server/l;ZZZIILjava/lang/String;)V

    iput-object v10, p0, Lcom/android/server/l;->Yg:Lcom/android/server/l$cno;

    new-instance v10, Lcom/android/server/l$cno;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x27

    const/16 v6, 0x2a

    const-string v7, "overheat_v2.0"

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/server/l$cno;-><init>(Lcom/android/server/l;ZZZIILjava/lang/String;)V

    iput-object v10, p0, Lcom/android/server/l;->Zg:Lcom/android/server/l$cno;

    new-instance v10, Lcom/android/server/l$cno;

    const/4 v2, 0x1

    const/16 v5, 0x25

    const/16 v6, 0x29

    const-string v7, "overheat"

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/server/l$cno;-><init>(Lcom/android/server/l;ZZZIILjava/lang/String;)V

    iput-object v10, p0, Lcom/android/server/l;->_g:Lcom/android/server/l$cno;

    new-instance v10, Lcom/android/server/l$cno;

    const/4 v4, 0x1

    const/16 v5, 0x27

    const/16 v6, 0x2a

    const-string v7, "overheat_v2.0"

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/server/l$cno;-><init>(Lcom/android/server/l;ZZZIILjava/lang/String;)V

    iput-object v10, p0, Lcom/android/server/l;->ah:Lcom/android/server/l$cno;

    new-instance v10, Lcom/android/server/l$cno;

    const/16 v5, 0x25

    const/16 v6, 0x29

    const-string v7, "overheat"

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/server/l$cno;-><init>(Lcom/android/server/l;ZZZIILjava/lang/String;)V

    iput-object v10, p0, Lcom/android/server/l;->bh:Lcom/android/server/l$cno;

    new-instance v10, Lcom/android/server/l$cno;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/16 v5, 0x27

    const/16 v6, 0x2a

    const-string v7, "overheat_v2.0"

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/server/l$cno;-><init>(Lcom/android/server/l;ZZZIILjava/lang/String;)V

    iput-object v10, p0, Lcom/android/server/l;->ch:Lcom/android/server/l$cno;

    new-instance v10, Lcom/android/server/l$cno;

    const-string v7, "overheat_v2.0"

    move-object v0, v10

    invoke-direct/range {v0 .. v7}, Lcom/android/server/l$cno;-><init>(Lcom/android/server/l;ZZZIILjava/lang/String;)V

    iput-object v10, p0, Lcom/android/server/l;->dh:Lcom/android/server/l$cno;

    const-string v0, "OverHeatingDiagnosis"

    if-nez p1, :cond_0

    const-string v1, "context cannot be null"

    invoke-static {v0, v1}, Lcom/android/server/you$zta;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-boolean v9, p0, Lcom/android/server/l;->mEnabled:Z

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/l;->pg:Z

    iput-boolean v9, p0, Lcom/android/server/l;->qg:Z

    iput-boolean v9, p0, Lcom/android/server/l;->rg:Z

    iput-boolean v1, p0, Lcom/android/server/l;->tg:Z

    const-wide/32 v1, 0x493e0

    iput-wide v1, p0, Lcom/android/server/l;->ug:J

    const-wide/32 v1, 0x927c0

    iput-wide v1, p0, Lcom/android/server/l;->vg:J

    const-wide/32 v1, 0x124f80

    iput-wide v1, p0, Lcom/android/server/l;->wg:J

    const-wide/32 v1, 0xea60

    iput-wide v1, p0, Lcom/android/server/l;->xg:J

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/l;->yg:I

    const/16 v1, 0x24

    iput v1, p0, Lcom/android/server/l;->zg:I

    const-string v1, "/sys/class/thermal/thermal_zone27/temp"

    iput-object v1, p0, Lcom/android/server/l;->sg:Ljava/lang/String;

    iput v9, p0, Lcom/android/server/l;->Hg:I

    const/16 v1, 0x23

    iput v1, p0, Lcom/android/server/l;->Cg:I

    const/16 v1, 0xc8

    iput v1, p0, Lcom/android/server/l;->Dg:I

    const-wide/16 v1, 0x3e8

    iput-wide v1, p0, Lcom/android/server/l;->Fg:J

    const-wide/32 v1, 0x2bf20

    iput-wide v1, p0, Lcom/android/server/l;->Gg:J

    iput-object p1, p0, Lcom/android/server/l;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/l$rtg;

    invoke-direct {v1, p0, v8}, Lcom/android/server/l$rtg;-><init>(Lcom/android/server/l;Lcom/android/server/k;)V

    iput-object v1, p0, Lcom/android/server/l;->mConfigUpdater:Lcom/android/server/l$rtg;

    new-instance v1, Lcom/android/server/l$you;

    invoke-direct {v1, p0, v8}, Lcom/android/server/l$you;-><init>(Lcom/android/server/l;Lcom/android/server/k;)V

    iput-object v1, p0, Lcom/android/server/l;->mBatteryReceiver:Lcom/android/server/l$you;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/l;->og:Landroid/content/IntentFilter;

    new-instance v1, Lcom/android/server/l$ssp;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/l$ssp;-><init>(Lcom/android/server/l;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/l;->mHandler:Lcom/android/server/l$ssp;

    new-instance v1, Lcom/android/server/power/you;

    const/16 v2, 0x28

    const-string v3, "/data/system/power/diagnosis_heating.txt"

    invoke-direct {v1, v3, v2}, Lcom/android/server/power/you;-><init>(Ljava/lang/String;I)V

    iput-object v1, p0, Lcom/android/server/l;->Og:Lcom/android/server/power/you;

    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/l;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    iget-object v1, p0, Lcom/android/server/l;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "com.oneplus:string/config_overheat_thermal_zone_path"

    invoke-virtual {v1, v2, v8, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/l;->sg:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "res com.oneplus:string/config_overheat_thermal_zone_path : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/l;->sg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v2, "res com.oneplus:string/config_overheat_thermal_zone_path not found"

    invoke-static {v0, v2}, Lcom/android/server/you$zta;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v2, "com.oneplus:integer/config_overheat_thermal_zone_precision"

    invoke-virtual {v1, v2, v8, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/server/l;->Hg:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "res com.oneplus:integer/config_overheat_thermal_zone_precision : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/l;->Hg:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    const-string v1, "res com.oneplus:integer/config_overheat_thermal_zone_precision not found"

    invoke-static {v0, v1}, Lcom/android/server/you$zta;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private Vl()Z
    .locals 7

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/l;->Xg:Z

    iget-boolean v1, p0, Lcom/android/server/l;->mEnabled:Z

    const/4 v2, 0x0

    if-nez v1, :cond_0

    return v2

    :cond_0
    iget-object v1, p0, Lcom/android/server/l;->Pg:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_8

    new-array v1, v3, [I

    iget-object v3, p0, Lcom/android/server/l;->Pg:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/l$sis;

    invoke-virtual {v3}, Lcom/android/server/l$sis;->getTime()J

    move-result-wide v3

    iget-object v5, p0, Lcom/android/server/l;->Pg:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/l$sis;

    invoke-virtual {v5}, Lcom/android/server/l$sis;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    move v5, v2

    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_1

    iget-object v6, p0, Lcom/android/server/l;->Pg:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/l$sis;

    invoke-virtual {v6}, Lcom/android/server/l$sis;->ca()I

    move-result v6

    aput v6, v1, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    iget-boolean v5, p0, Lcom/android/server/l;->tg:Z

    if-eqz v5, :cond_2

    return v0

    :cond_2
    iget-wide v5, p0, Lcom/android/server/l;->vg:J

    cmp-long v3, v3, v5

    if-lez v3, :cond_3

    iget-object p0, p0, Lcom/android/server/l;->Pg:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return v2

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "last temp: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, v1

    sub-int/2addr v4, v0

    aget v4, v1, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OverHeatingDiagnosis"

    invoke-static {v4, v3}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget v3, v1, v0

    aget v4, v1, v2

    if-ge v3, v4, :cond_4

    iget-object p0, p0, Lcom/android/server/l;->Pg:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return v2

    :cond_4
    array-length v3, v1

    sub-int/2addr v3, v0

    aget v3, v1, v3

    iget v4, p0, Lcom/android/server/l;->zg:I

    if-ge v3, v4, :cond_5

    iget-object p0, p0, Lcom/android/server/l;->Pg:Ljava/util/ArrayList;

    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return v2

    :cond_5
    iget-object v3, p0, Lcom/android/server/l;->Pg:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/l$sis;

    invoke-virtual {v3}, Lcom/android/server/l$sis;->ba()Z

    move-result v3

    iget-object v4, p0, Lcom/android/server/l;->Pg:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/l$sis;

    invoke-virtual {v4}, Lcom/android/server/l$sis;->ba()Z

    move-result v4

    if-eq v3, v4, :cond_6

    iget-object p0, p0, Lcom/android/server/l;->Pg:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return v2

    :cond_6
    aget p0, v1, v0

    aget v1, v1, v2

    if-lt p0, v1, :cond_7

    goto :goto_1

    :cond_7
    move v0, v2

    :goto_1
    return v0

    :cond_8
    return v2
.end method

.method static synthetic bio(Lcom/android/server/l;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/l;->Ig:I

    return p1
.end method

.method static synthetic bio(Lcom/android/server/l;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/l;->pg:Z

    return p0
.end method

.method static synthetic bvj(Lcom/android/server/l;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/l;->ug:J

    return-wide v0
.end method

.method static synthetic cjf(Lcom/android/server/l;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/l;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic cno(Lcom/android/server/l;)I
    .locals 0

    iget p0, p0, Lcom/android/server/l;->Lg:I

    return p0
.end method

.method static synthetic cno(Lcom/android/server/l;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/l;->Cg:I

    return p1
.end method

.method static synthetic dma(Lcom/android/server/l;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/l;->tg:Z

    return p0
.end method

.method static synthetic ear(Lcom/android/server/l;)Lcom/android/server/l$you;
    .locals 0

    iget-object p0, p0, Lcom/android/server/l;->mBatteryReceiver:Lcom/android/server/l$you;

    return-object p0
.end method

.method private fa(Z)Z
    .locals 8

    iget-boolean v0, p0, Lcom/android/server/l;->mEnabled:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/l;->Pg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v2, p0, Lcom/android/server/l;->yg:I

    if-lt v0, v2, :cond_7

    new-array v0, v2, [I

    iget-object v3, p0, Lcom/android/server/l;->Pg:Ljava/util/ArrayList;

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/l$sis;

    invoke-virtual {v2}, Lcom/android/server/l$sis;->getTime()J

    move-result-wide v2

    iget-object v5, p0, Lcom/android/server/l;->Pg:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/l$sis;

    invoke-virtual {v5}, Lcom/android/server/l$sis;->getTime()J

    move-result-wide v5

    sub-long/2addr v2, v5

    move v5, v1

    :goto_0
    array-length v6, v0

    if-ge v5, v6, :cond_1

    iget-object v6, p0, Lcom/android/server/l;->Pg:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/l$sis;

    invoke-virtual {v6}, Lcom/android/server/l$sis;->ca()I

    move-result v6

    aput v6, v0, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    const-string v5, "OverHeatingDiagnosis"

    if-eqz p1, :cond_2

    aget p1, v0, v1

    array-length v6, v0

    sub-int/2addr v6, v4

    aget v6, v0, v6

    if-ne p1, v6, :cond_2

    iput-boolean v1, p0, Lcom/android/server/l;->Xg:Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isTempIncrease: "

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/l;->Xg:Z

    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean p1, p0, Lcom/android/server/l;->tg:Z

    if-eqz p1, :cond_3

    return v4

    :cond_3
    iget-wide v6, p0, Lcom/android/server/l;->vg:J

    cmp-long p1, v2, v6

    if-lez p1, :cond_4

    return v1

    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "last temp: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v0

    sub-int/2addr v2, v4

    aget v2, v0, v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v5, p1}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length p1, v0

    sub-int/2addr p1, v4

    aget p1, v0, p1

    iget v2, p0, Lcom/android/server/l;->zg:I

    if-ge p1, v2, :cond_5

    return v1

    :cond_5
    iget-object p1, p0, Lcom/android/server/l;->Pg:Ljava/util/ArrayList;

    iget v2, p0, Lcom/android/server/l;->yg:I

    sub-int/2addr v2, v4

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/l$sis;

    invoke-virtual {p1}, Lcom/android/server/l$sis;->ba()Z

    move-result p1

    iget-object v2, p0, Lcom/android/server/l;->Pg:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/l$sis;

    invoke-virtual {v2}, Lcom/android/server/l$sis;->ba()Z

    move-result v2

    if-eq p1, v2, :cond_6

    iget-object p0, p0, Lcom/android/server/l;->Pg:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return v1

    :cond_6
    const/4 p1, 0x3

    invoke-direct {p0, v0, p1}, Lcom/android/server/l;->tsu([II)Z

    move-result p0

    return p0

    :cond_7
    return v1
.end method

.method static synthetic gck(Lcom/android/server/l;)I
    .locals 0

    iget p0, p0, Lcom/android/server/l;->Hg:I

    return p0
.end method

.method static synthetic gwm(Lcom/android/server/l;)I
    .locals 0

    iget p0, p0, Lcom/android/server/l;->zg:I

    return p0
.end method

.method private hb(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/l;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/l;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    sput-object p0, Lcom/android/server/l;->mPackageManager:Landroid/content/pm/PackageManager;

    :cond_0
    sget-object p0, Lcom/android/server/l;->mPackageManager:Landroid/content/pm/PackageManager;

    if-eqz p0, :cond_1

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Cannot find package name: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OverHeatingDiagnosis"

    invoke-static {p1, p0}, Lcom/android/server/you$zta;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method static synthetic hmo(Lcom/android/server/l;)I
    .locals 0

    iget p0, p0, Lcom/android/server/l;->Jg:I

    return p0
.end method

.method static synthetic ibl(Lcom/android/server/l;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/l;->xg:J

    return-wide v0
.end method

.method static synthetic igw(Lcom/android/server/l;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/l;->Jg:I

    return p1
.end method

.method static synthetic igw(Lcom/android/server/l;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/l;->qg:Z

    return p0
.end method

.method static synthetic ire(Lcom/android/server/l;)Landroid/content/IntentFilter;
    .locals 0

    iget-object p0, p0, Lcom/android/server/l;->og:Landroid/content/IntentFilter;

    return-object p0
.end method

.method static synthetic kth(Lcom/android/server/l;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/l;->Dg:I

    return p1
.end method

.method static synthetic kth(Lcom/android/server/l;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/l;->rg:Z

    return p0
.end method

.method static synthetic obl(Lcom/android/server/l;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/l;->Gg:J

    return-wide v0
.end method

.method static synthetic oif(Lcom/android/server/l;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/l;->wg:J

    return-wide v0
.end method

.method static synthetic oxb(Lcom/android/server/l;)Lcom/android/internal/os/ProcessCpuTracker;
    .locals 0

    iget-object p0, p0, Lcom/android/server/l;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    return-object p0
.end method

.method static synthetic qbh(Lcom/android/server/l;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/l;->vg:J

    return-wide v0
.end method

.method static synthetic rtg(Lcom/android/server/l;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/l;->yg:I

    return p1
.end method

.method static synthetic rtg(Lcom/android/server/l;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/l;->Fg:J

    return-wide p1
.end method

.method static synthetic rtg(Lcom/android/server/l;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/l;->mEnabled:Z

    return p0
.end method

.method static synthetic rtg(Lcom/android/server/l;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/l;->qg:Z

    return p1
.end method

.method static synthetic sis(Lcom/android/server/l;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/l;->Lg:I

    return p1
.end method

.method static synthetic sis(Lcom/android/server/l;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/l;->ug:J

    return-wide p1
.end method

.method static synthetic sis(Lcom/android/server/l;)Lcom/android/server/l$ssp;
    .locals 0

    iget-object p0, p0, Lcom/android/server/l;->mHandler:Lcom/android/server/l$ssp;

    return-object p0
.end method

.method static synthetic sis(Lcom/android/server/l;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/l;->mEnabled:Z

    return p1
.end method

.method static synthetic ssp(Lcom/android/server/l;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/l;->zg:I

    return p1
.end method

.method static synthetic ssp(Lcom/android/server/l;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/l;->Gg:J

    return-wide p1
.end method

.method static synthetic ssp(Lcom/android/server/l;)Lcom/android/server/l$tsu;
    .locals 0

    iget-object p0, p0, Lcom/android/server/l;->Ug:Lcom/android/server/l$tsu;

    return-object p0
.end method

.method static synthetic ssp(Lcom/android/server/l;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/l;->tg:Z

    return p1
.end method

.method static synthetic tsu(Lcom/android/server/l;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/l;->Hg:I

    return p1
.end method

.method static synthetic tsu(Lcom/android/server/l;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/l;->xg:J

    return-wide p1
.end method

.method static synthetic tsu(Lcom/android/server/l;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/l;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic tsu(Lcom/android/server/l;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/l;->pg:Z

    return p1
.end method

.method private tsu([II)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x2

    if-ne p2, v2, :cond_2

    add-int/lit8 p0, p2, -0x1

    aget p0, p1, p0

    sub-int/2addr p2, v2

    aget p1, p1, p2

    if-lt p0, p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    add-int/lit8 v3, p2, -0x1

    invoke-direct {p0, p1, v3}, Lcom/android/server/l;->tsu([II)Z

    move-result p0

    if-eqz p0, :cond_3

    aget p0, p1, v3

    sub-int/2addr p2, v2

    aget p1, p1, p2

    if-lt p0, p1, :cond_3

    goto :goto_1

    :cond_3
    move v0, v1

    :goto_1
    return v0
.end method

.method static synthetic ugm(Lcom/android/server/l;)I
    .locals 0

    iget p0, p0, Lcom/android/server/l;->Cg:I

    return p0
.end method

.method static synthetic vdb(Lcom/android/server/l;)I
    .locals 0

    iget p0, p0, Lcom/android/server/l;->Dg:I

    return p0
.end method

.method static synthetic wtn(Lcom/android/server/l;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/l;->sg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic you(Lcom/android/server/l;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/l;->Mg:I

    return p1
.end method

.method static synthetic you(Lcom/android/server/l;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/l;->wg:J

    return-wide p1
.end method

.method static synthetic you(Lcom/android/server/l;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/l;->Vl()Z

    move-result p0

    return p0
.end method

.method static synthetic you(Lcom/android/server/l;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/l;->Wg:Z

    return p1
.end method

.method static synthetic ywr(Lcom/android/server/l;)I
    .locals 0

    iget p0, p0, Lcom/android/server/l;->yg:I

    return p0
.end method

.method static synthetic zgw(Lcom/android/server/l;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/l;->Fg:J

    return-wide v0
.end method

.method static synthetic zta(Lcom/android/server/l;)I
    .locals 0

    iget p0, p0, Lcom/android/server/l;->Mg:I

    return p0
.end method

.method static synthetic zta(Lcom/android/server/l;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/l;->Kg:I

    return p1
.end method

.method static synthetic zta(Lcom/android/server/l;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/l;->vg:J

    return-wide p1
.end method

.method static synthetic zta(Lcom/android/server/l;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/l;->sg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zta(Lcom/android/server/l;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/l;->fa(Z)Z

    move-result p0

    return p0
.end method


# virtual methods
.method bvj(I)Ljava/lang/String;
    .locals 0

    packed-switch p1, :pswitch_data_0

    const-string p0, "UNKNOWN"

    return-object p0

    :pswitch_0
    const-string p0, "ISSUE_HEAT_CAMERA"

    return-object p0

    :pswitch_1
    const-string p0, "ISSUE_HEAT_CAMERA_WHEN_CHARGE"

    return-object p0

    :pswitch_2
    const-string p0, "ISSUE_HEAT_UNKNOWN_REASON"

    return-object p0

    :pswitch_3
    const-string p0, "ISSUE_HEAT_CPU_LOAD"

    return-object p0

    :pswitch_4
    const-string p0, "ISSUE_HEAT_PLAY_WHEN_CHARGE"

    return-object p0

    :pswitch_5
    const-string p0, "ISSUE_HEAT_PLAY_WHEN_DASH"

    return-object p0

    :pswitch_data_0
    .packed-switch 0x17
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public bvj(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/l;->qg:Z

    return-void
.end method

.method public cno(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/l;->ug:J

    return-void
.end method

.method public da()Ljava/lang/StringBuilder;
    .locals 12

    new-instance p0, Ljava/lang/StringBuilder;

    const/16 v0, 0x1000

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    new-instance v3, Ljava/text/SimpleDateFormat;

    const-string v4, "yyyy-MM-dd HH:mm:ss"

    invoke-direct {v3, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v4, "ro.build.display.id"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "ro.build.fingerprint"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "ro.build.version.sdk"

    invoke-static {v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "ro.product.model"

    invoke-static {v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "persist.sys.timezone"

    invoke-static {v8}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, "========================================================\n"

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "== dumpstate: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0xa

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Build: "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Build fingerprint: \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x27

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "DeviceID: null\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[ro.build.version.sdk]: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[ro.product.model]: ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[persist.sys.timezone]: ["

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-------------------------------------------------------------------------------\n"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p0}, Lcom/android/server/am/BatteryOutlierInjector;->getPidMap(Ljava/lang/StringBuilder;)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "DUMP OF SERVICE batterystats:\n"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/android/server/am/BatteryOutlierInjector;->dumpBatteryStats(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "== Checkins\n"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "------ CHECKIN BATTERYSTATS (dumpsys -t 30 batterystats -c) ------\n"

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "-c"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/server/am/BatteryOutlierInjector;->dumpBatteryStats(Ljava/lang/StringBuilder;[Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    long-to-double v0, v2

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "--------- "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v0, "s was the duration of dumpLightBugreport"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method dump(Ljava/io/PrintWriter;)V
    .locals 4

    const-string v0, "**** OverHeatingDiagnosis ****"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/l;->mEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnabledBugreport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/l;->pg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnabledMDM="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/l;->qg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mEnabledOnlineConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/l;->rg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mThermalZonePath="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/l;->sg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mThermalZonePrecision="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/l;->Hg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMonitorForced="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/l;->tg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMonitorNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/l;->yg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMonitorPeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/l;->ug:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mTriggerPeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/l;->vg:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMinDetectPeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/l;->wg:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMonitorFrequency="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/l;->xg:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mMonitorTemp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/l;->zg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCriticalCpu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/l;->Cg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCriticalTotalCpu="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/l;->Dg:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mCriticalForeground="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/l;->Fg:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "systemRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/l;->Yg:Lcom/android/server/l$cno;

    invoke-virtual {v1}, Lcom/android/server/l$cno;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fgRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/l;->Zg:Lcom/android/server/l$cno;

    invoke-virtual {v1}, Lcom/android/server/l$cno;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "bgRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/l;->_g:Lcom/android/server/l$cno;

    invoke-virtual {v1}, Lcom/android/server/l$cno;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknownRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/l;->ah:Lcom/android/server/l$cno;

    invoke-virtual {v1}, Lcom/android/server/l$cno;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "totalCpuLoadRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/l;->bh:Lcom/android/server/l$cno;

    invoke-virtual {v1}, Lcom/android/server/l$cno;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cameraHardwareRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/l;->ch:Lcom/android/server/l$cno;

    invoke-virtual {v1}, Lcom/android/server/l$cno;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "flashlightRules="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/l;->dh:Lcom/android/server/l$cno;

    invoke-virtual {v1}, Lcom/android/server/l$cno;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "BatteryRecords:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/l;->Pg:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/l;->Pg:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/l$sis;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/l$sis;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public ea()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/l;->mHandler:Lcom/android/server/l$ssp;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/android/server/l;->mHandler:Lcom/android/server/l$ssp;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method fa()V
    .locals 13

    const-string v0, "OverHeatingDiagnosis"

    const-string v1, "monitorEndLocked()"

    invoke-static {v0, v1}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/l;->Mg:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/l;->Mg:I

    iget-object v1, p0, Lcom/android/server/l;->Ug:Lcom/android/server/l$tsu;

    invoke-virtual {v1}, Lcom/android/server/l$tsu;->stop()V

    iget-object v1, p0, Lcom/android/server/l;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->update()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v3

    invoke-virtual {v3, p0}, Lcom/android/server/OnePlusUtil$zta;->you(Lcom/android/server/OnePlusUtil$zta$you;)V

    sget-object v3, Lcom/android/server/am/AppRecordManager$ListenerType;->FLASHLIGHT:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v4, p0, Lcom/android/server/l;->Tg:Lcom/android/server/l$zta;

    invoke-static {v3, v4}, Lcom/android/server/am/AppRecordManager;->you(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/gwm;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/server/l;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v4, v1, v2}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentState(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\n\nprintCurrentLoad:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/l;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->printCurrentLoad()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "countStats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/l;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->countStats()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "countWorkingStats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/l;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->countWorkingStats()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/l;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v1}, Lcom/android/internal/os/ProcessCpuTracker;->countWorkingStats()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/l;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v2}, Lcom/android/internal/os/ProcessCpuTracker;->getTotalCpuPercent()F

    move-result v2

    float-to-int v2, v2

    if-lez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/l;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/android/internal/os/ProcessCpuTracker;->getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v1

    if-eqz v1, :cond_5

    iget v3, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-static {v3}, Lcom/android/server/am/AppRecordManager;->getOwnerUid(I)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    iget v3, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    :cond_1
    move v5, v3

    iget-wide v3, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_uptime:J

    iget v6, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    iget v7, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    add-int/2addr v6, v7

    int-to-long v6, v6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "name = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ", uid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->uid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", pid = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, ", CPU usage = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6, v7, v3, v4}, Lcom/android/server/l;->zta(JJ)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "%"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v8, 0x0

    cmp-long v0, v3, v8

    if-nez v0, :cond_2

    const-wide/16 v3, 0x1

    :cond_2
    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    div-long/2addr v6, v3

    const-wide/16 v3, 0xa

    div-long v7, v6, v3

    iget-object v0, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    invoke-static {v5}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v3

    const-string v4, ""

    if-eqz v3, :cond_3

    invoke-static {v5}, Lcom/android/server/am/AppRecordManager;->getPackageNameFromUid(I)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    move-object v6, v3

    goto :goto_0

    :cond_3
    move-object v6, v0

    :goto_0
    const/16 v0, 0x3e8

    if-ne v5, v0, :cond_4

    move-object v11, v4

    goto :goto_1

    :cond_4
    invoke-direct {p0, v6}, Lcom/android/server/l;->hb(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    :goto_1
    int-to-long v9, v2

    iget v12, v1, Lcom/android/internal/os/ProcessCpuTracker$Stats;->pid:I

    move-object v4, p0

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/l;->zta(ILjava/lang/String;JJLjava/lang/String;I)V

    :cond_5
    return-void
.end method

.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 0

    if-eq p2, p5, :cond_0

    invoke-virtual {p0, p2, p5}, Lcom/android/server/l;->gck(II)V

    :cond_0
    return-void
.end method

.method public fto(Ljava/lang/String;)Lcom/android/server/l$cno;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "foreground"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_1

    :sswitch_1
    const-string v0, "camera hardware"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x5

    goto :goto_1

    :sswitch_2
    const-string v0, "unknown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v0, "total_cpu_load"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_1

    :sswitch_4
    const-string v0, "system"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_1

    :sswitch_5
    const-string v0, "flashlight"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x6

    goto :goto_1

    :sswitch_6
    const-string v0, "background"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p1, -0x1

    :goto_1
    packed-switch p1, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Lcom/android/server/l;->dh:Lcom/android/server/l$cno;

    return-object p0

    :pswitch_1
    iget-object p0, p0, Lcom/android/server/l;->ch:Lcom/android/server/l$cno;

    return-object p0

    :pswitch_2
    iget-object p0, p0, Lcom/android/server/l;->bh:Lcom/android/server/l$cno;

    return-object p0

    :pswitch_3
    iget-object p0, p0, Lcom/android/server/l;->ah:Lcom/android/server/l$cno;

    return-object p0

    :pswitch_4
    iget-object p0, p0, Lcom/android/server/l;->_g:Lcom/android/server/l$cno;

    return-object p0

    :pswitch_5
    iget-object p0, p0, Lcom/android/server/l;->Zg:Lcom/android/server/l$cno;

    return-object p0

    :pswitch_6
    iget-object p0, p0, Lcom/android/server/l;->Yg:Lcom/android/server/l$cno;

    return-object p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x4f67aad2 -> :sswitch_6
        -0x468444da -> :sswitch_5
        -0x34e38dd1 -> :sswitch_4
        -0x23467848 -> :sswitch_3
        -0x10fa53b6 -> :sswitch_2
        0x58f4bc83 -> :sswitch_1
        0x76486943 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method ga()V
    .locals 4

    const-string v0, "OverHeatingDiagnosis"

    const-string v1, "monitorStartLocked()"

    invoke-static {v0, v1}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/l;->Mg:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/l;->Eg:I

    iput-boolean v0, p0, Lcom/android/server/l;->Wg:Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/server/l;->Ag:J

    iget-object v0, p0, Lcom/android/server/l;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/internal/os/ProcessCpuTracker;

    invoke-direct {v0, v1}, Lcom/android/internal/os/ProcessCpuTracker;-><init>(Z)V

    iput-object v0, p0, Lcom/android/server/l;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    :cond_0
    iget-object v0, p0, Lcom/android/server/l;->mProcessCpuTracker:Lcom/android/internal/os/ProcessCpuTracker;

    invoke-virtual {v0}, Lcom/android/internal/os/ProcessCpuTracker;->init()V

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OnePlusUtil$zta;->A()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/l;->Qg:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/l;->mHandler:Lcom/android/server/l$ssp;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iput v0, v1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/android/server/l;->mHandler:Lcom/android/server/l$ssp;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->zta(Lcom/android/server/OnePlusUtil$zta$you;)V

    sget-object v0, Lcom/android/server/am/AppRecordManager$ListenerType;->FLASHLIGHT:Lcom/android/server/am/AppRecordManager$ListenerType;

    iget-object v1, p0, Lcom/android/server/l;->Tg:Lcom/android/server/l$zta;

    invoke-static {v0, v1}, Lcom/android/server/am/AppRecordManager;->zta(Lcom/android/server/am/AppRecordManager$ListenerType;Lcom/android/server/am/gwm;)V

    iget-object v0, p0, Lcom/android/server/l;->Ug:Lcom/android/server/l$tsu;

    invoke-virtual {v0}, Lcom/android/server/l$tsu;->reset()V

    iget v0, p0, Lcom/android/server/l;->Jg:I

    and-int/lit8 v0, v0, 0xf

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/l;->Ug:Lcom/android/server/l$tsu;

    invoke-virtual {v0}, Lcom/android/server/l$tsu;->start()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/l;->mHandler:Lcom/android/server/l$ssp;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/l;->mHandler:Lcom/android/server/l$ssp;

    iget-wide v2, p0, Lcom/android/server/l;->xg:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method gck(II)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "change from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " to TOP"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OverHeatingDiagnosis"

    invoke-static {v0, p2}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/android/server/l;->Qg:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/server/l;->Qg:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p2, p0, Lcom/android/server/l;->mHandler:Lcom/android/server/l$ssp;

    const/4 v0, 0x5

    invoke-virtual {p2, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p2

    iput p1, p2, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/android/server/l;->mHandler:Lcom/android/server/l$ssp;

    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, p2, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method getDeviceTemp()I
    .locals 6

    const-string v0, "OverHeatingDiagnosis"

    const/16 v1, 0xa

    const/4 v2, 0x0

    :try_start_0
    new-array v3, v1, [C

    new-instance v4, Ljava/io/FileReader;

    iget-object v5, p0, Lcom/android/server/l;->sg:Ljava/lang/String;

    invoke-direct {v4, v5}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {v4, v3, v2, v1}, Ljava/io/FileReader;->read([CII)I

    move-result v1

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v3, v2, v1}, Ljava/lang/String;-><init>([CII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget v3, p0, Lcom/android/server/l;->Hg:I

    div-int/2addr v1, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getDeviceTemp="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/server/you$zta;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    return v1

    :catchall_0
    move-exception v1

    invoke-virtual {v4}, Ljava/io/FileReader;->close()V

    throw v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t get device temp w "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/l;->sg:Ljava/lang/String;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/android/server/you$zta;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method grabOnlineConfig()V
    .locals 3

    const-string v0, "OverHeatingDiagnosis"

    const-string v1, "[OnlineConfig] grabOnlineConfig"

    invoke-static {v0, v1}, Lcom/android/server/you$zta;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/oneplus/config/ConfigGrabber;

    iget-object v2, p0, Lcom/android/server/l;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/l;->mConfigUpdater:Lcom/android/server/l$rtg;

    invoke-virtual {v1}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/l$rtg;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method public gwm(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/l;->Cg:I

    return-void
.end method

.method public gwm(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/l;->tg:Z

    return-void
.end method

.method ha()V
    .locals 4

    const-string v0, "OverHeatingDiagnosis"

    const-string v1, "monitorUpdateLocked()"

    invoke-static {v0, v1}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/l;->Mg:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/l;->getDeviceTemp()I

    move-result v1

    iget v2, p0, Lcom/android/server/l;->Eg:I

    if-le v1, v2, :cond_1

    iput v1, p0, Lcom/android/server/l;->Eg:I

    :cond_1
    const-string v1, "start to update process cpu info."

    invoke-static {v0, v1}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/l;->Wg:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/l;->mHandler:Lcom/android/server/l$ssp;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/l;->mHandler:Lcom/android/server/l$ssp;

    iget-wide v2, p0, Lcom/android/server/l;->xg:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_2
    return-void
.end method

.method public ia()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/l;->mHandler:Lcom/android/server/l$ssp;

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public ibl(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/l;->Sg:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/android/server/l;->Sg:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public ibl(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/l;->mEnabled:Z

    return-void
.end method

.method public lqr(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/l;->sg:Ljava/lang/String;

    return-void
.end method

.method public oif(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/l;->pg:Z

    return-void
.end method

.method registerOnlineConfig()V
    .locals 5

    const-string v0, "OverHeatingDiagnosis"

    const-string v1, "[OnlineConfig] registerOnlineConfig"

    invoke-static {v0, v1}, Lcom/android/server/you$zta;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/oneplus/config/ConfigObserver;

    iget-object v2, p0, Lcom/android/server/l;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/l;->mHandler:Lcom/android/server/l$ssp;

    iget-object v4, p0, Lcom/android/server/l;->mConfigUpdater:Lcom/android/server/l$rtg;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/l;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object p0, p0, Lcom/android/server/l;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p0}, Lcom/oneplus/config/ConfigObserver;->register()V

    return-void
.end method

.method public start()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/l;->tg:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/l;->mHandler:Lcom/android/server/l$ssp;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/l;->mHandler:Lcom/android/server/l$ssp;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/l;->mHandler:Lcom/android/server/l$ssp;

    const-wide/32 v1, 0x2bf20

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :goto_0
    return-void
.end method

.method public startMonitor()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/l;->mHandler:Lcom/android/server/l$ssp;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public ugm(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/l;->yg:I

    return-void
.end method

.method public ugm(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/l;->rg:Z

    return-void
.end method

.method public vdb(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/l;->zg:I

    return-void
.end method

.method zta(JJ)Ljava/lang/String;
    .locals 5

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-nez v2, :cond_0

    const-wide/16 p3, 0x1

    :cond_0
    const-wide/16 v2, 0x3e8

    mul-long/2addr p1, v2

    div-long/2addr p1, p3

    const-wide/16 p3, 0xa

    div-long v2, p1, p3

    invoke-virtual {p0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    cmp-long v4, v2, p3

    if-gez v4, :cond_1

    mul-long/2addr v2, p3

    sub-long/2addr p1, v2

    cmp-long p3, p1, v0

    if-eqz p3, :cond_1

    const/16 p3, 0x2e

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method zta(IIIZ)V
    .locals 7

    new-instance v6, Lcom/android/server/l$sis;

    move-object v0, v6

    move-object v1, p0

    move v2, p1

    move v3, p2

    move v4, p4

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/l$sis;-><init>(Lcom/android/server/l;IIZI)V

    iget-object p1, p0, Lcom/android/server/l;->Pg:Ljava/util/ArrayList;

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Add new record, and total size is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/server/l;->Pg:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OverHeatingDiagnosis"

    invoke-static {p2, p1}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/l;->Pg:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/l$sis;

    invoke-virtual {p1}, Lcom/android/server/l$sis;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method zta(IILjava/lang/String;JILjava/lang/String;I)V
    .locals 5

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/server/l;->Mg:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "reportAbnormalHeating: type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OverHeatingDiagnosis"

    invoke-static {v1, v0}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "background"

    invoke-virtual {p7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, ",temp="

    const-string v3, ",cpu="

    const-string v4, "pid="

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/server/am/AppRecordManager;->getProcState(I)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p8

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p8, "proc state="

    invoke-virtual {v0, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p8

    invoke-virtual {p1, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    iget-object p8, p0, Lcom/android/server/l;->Og:Lcom/android/server/power/you;

    invoke-virtual {p8, p2, p3, p1}, Lcom/android/server/power/you;->log(ILjava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/server/l;->Og:Lcom/android/server/power/you;

    invoke-virtual {p1}, Lcom/android/server/power/you;->Xc()V

    iget-object p1, p0, Lcom/android/server/l;->mContext:Landroid/content/Context;

    const-string p8, "opdiagnose"

    invoke-virtual {p1, p8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/OPDiagnoseManager;

    if-eqz p1, :cond_1

    new-instance p8, Ljava/lang/StringBuilder;

    invoke-direct {p8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "writeDiagData: type="

    invoke-virtual {p8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", reason="

    invoke-virtual {p8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p8

    invoke-static {v1, p8}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, p2, p3}, Landroid/os/OPDiagnoseManager;->writeDiagData(ILjava/lang/String;)Z

    :cond_1
    invoke-virtual {p0, p7}, Lcom/android/server/l;->fto(Ljava/lang/String;)Lcom/android/server/l$cno;

    move-result-object p1

    const/4 p7, 0x0

    if-eqz p1, :cond_2

    iget-boolean p8, p1, Lcom/android/server/l$cno;->ig:Z

    goto :goto_1

    :cond_2
    move p8, p7

    :goto_1
    if-eqz p1, :cond_3

    iget-boolean v0, p1, Lcom/android/server/l$cno;->jg:Z

    goto :goto_2

    :cond_3
    move v0, p7

    :goto_2
    if-eqz p1, :cond_4

    iget-boolean p7, p1, Lcom/android/server/l$cno;->kg:Z

    :cond_4
    if-eqz p1, :cond_5

    iget-object p1, p1, Lcom/android/server/l$cno;->ng:Ljava/lang/String;

    goto :goto_3

    :cond_5
    const-string p1, "overheat"

    :goto_3
    iget-boolean v1, p0, Lcom/android/server/l;->qg:Z

    if-eqz v1, :cond_6

    if-nez v0, :cond_7

    :cond_6
    iget-boolean v0, p0, Lcom/android/server/l;->tg:Z

    if-eqz v0, :cond_9

    :cond_7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ht"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p4

    const-string p5, "cl"

    invoke-virtual {v0, p5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p4

    const-string p5, "mt"

    invoke-virtual {v0, p5, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p4, Ljava/util/HashMap;

    invoke-direct {p4}, Ljava/util/HashMap;-><init>()V

    const-string p5, "appid"

    const-string p6, "NYNCG4I0TI"

    invoke-virtual {p4, p5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p5, "hr"

    if-eqz p3, :cond_8

    const-string p6, ":"

    invoke-virtual {p3, p6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p6

    add-int/lit8 p6, p6, 0x1

    invoke-virtual {p3, p6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p6

    goto :goto_4

    :cond_8
    const-string p6, "NA"

    :goto_4
    invoke-virtual {v0, p5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p5, p0, Lcom/android/server/l;->mOpDeviceManagerInjector:Lnet/oneplus/odm/OpDeviceManagerInjector;

    if-eqz p5, :cond_9

    iget-object p6, p0, Lcom/android/server/l;->mContext:Landroid/content/Context;

    invoke-virtual {p5, p6, p1, v0, p4}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_9
    iget-boolean p1, p0, Lcom/android/server/l;->pg:Z

    if-eqz p1, :cond_a

    if-nez p8, :cond_b

    :cond_a
    iget-boolean p1, p0, Lcom/android/server/l;->tg:Z

    if-eqz p1, :cond_c

    :cond_b
    invoke-virtual {p0, p2, p3, p7}, Lcom/android/server/l;->zta(ILjava/lang/String;Z)V

    :cond_c
    return-void
.end method

.method zta(ILjava/lang/String;JJLjava/lang/String;I)V
    .locals 18

    move-object/from16 v9, p0

    move/from16 v1, p1

    move-object/from16 v0, p2

    move-wide/from16 v4, p3

    move-object/from16 v2, p7

    iget-object v3, v9, Lcom/android/server/l;->Ug:Lcom/android/server/l$tsu;

    invoke-virtual {v3}, Lcom/android/server/l$tsu;->getTime()J

    move-result-wide v6

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "arbitrate: uid="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " procName="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " version="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " cpuUsage="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " totalCpuUsage="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, p5

    invoke-virtual {v3, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " totalChargeTime="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, " mTopAppList="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v9, Lcom/android/server/l;->Qg:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " mTopCameraAppList="

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v9, Lcom/android/server/l;->Rg:Ljava/util/ArrayList;

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v8, "OverHeatingDiagnosis"

    invoke-static {v8, v3}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, v9, Lcom/android/server/l;->Cg:I

    int-to-long v10, v10

    cmp-long v10, v4, v10

    const-string v11, "unknown"

    const-string v12, "camera hardware"

    const/4 v13, 0x1

    const/4 v14, 0x0

    const/16 v15, 0x1a

    if-ltz v10, :cond_a

    const/16 v10, 0x3e8

    if-ne v1, v10, :cond_0

    const-string v2, "system:"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "system"

    move-object v11, v0

    goto/16 :goto_2

    :cond_0
    iget-object v10, v9, Lcom/android/server/l;->Qg:Ljava/util/ArrayList;

    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    const-string v11, "foreground"

    const-string v12, "fg:"

    if-eqz v10, :cond_1

    :goto_0
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_1
    iget-object v10, v9, Lcom/android/server/l;->Rg:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-eqz v10, :cond_2

    goto :goto_0

    :cond_2
    const-string v10, "bg:"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "background"

    move-object v11, v10

    :goto_1
    iget-object v10, v9, Lcom/android/server/l;->Rg:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    const-string v12, ":"

    if-eqz v10, :cond_3

    iget-object v0, v9, Lcom/android/server/l;->Rg:Ljava/util/ArrayList;

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/AppRecordManager;->getPackageNameFromUid(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "camera"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static/range {p1 .. p1}, Lcom/android/server/am/AppRecordManager;->cjf(I)I

    move-result v0

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "actionFlag:"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    and-int/lit16 v10, v0, 0x80

    if-eqz v10, :cond_4

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "traffic"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    and-int/lit8 v10, v0, 0x2

    if-eqz v10, :cond_5

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "audio"

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "gps"

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    if-eqz v2, :cond_7

    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    :goto_2
    iget v0, v9, Lcom/android/server/l;->Jg:I

    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_8

    const/16 v0, 0x17

    :goto_3
    move v2, v0

    goto/16 :goto_6

    :cond_8
    and-int/lit8 v0, v0, 0x7

    if-eqz v0, :cond_9

    const/16 v0, 0x18

    goto :goto_3

    :cond_9
    const/16 v0, 0x19

    goto :goto_3

    :cond_a
    iget-object v0, v9, Lcom/android/server/l;->Rg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_c

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v9, Lcom/android/server/l;->Jg:I

    and-int/lit8 v0, v0, 0xf

    if-eqz v0, :cond_b

    const/16 v0, 0x1b

    goto :goto_4

    :cond_b
    const/16 v0, 0x1c

    :goto_4
    move v2, v0

    move-object v11, v12

    goto/16 :goto_6

    :cond_c
    iget-object v0, v9, Lcom/android/server/l;->Sg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v9, Lcom/android/server/l;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "flashlight_enabled"

    invoke-static {v0, v2, v14}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v13, :cond_d

    goto :goto_5

    :cond_d
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    iget-wide v13, v9, Lcom/android/server/l;->Bg:J

    sub-long v16, v16, v13

    iget-wide v12, v9, Lcom/android/server/l;->wg:J

    cmp-long v0, v16, v12

    if-gez v0, :cond_e

    const/4 v0, 0x0

    iput v0, v9, Lcom/android/server/l;->Mg:I

    iget-object v0, v9, Lcom/android/server/l;->Pg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v9, Lcom/android/server/l;->Qg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v9, Lcom/android/server/l;->Rg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v9, Lcom/android/server/l;->Sg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_e
    iget-boolean v0, v9, Lcom/android/server/l;->Xg:Z

    if-nez v0, :cond_10

    const/4 v0, 0x0

    iput v0, v9, Lcom/android/server/l;->Mg:I

    iget-object v0, v9, Lcom/android/server/l;->Pg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v9, Lcom/android/server/l;->Qg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v9, Lcom/android/server/l;->Rg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v9, Lcom/android/server/l;->Sg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void

    :cond_f
    :goto_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "flashlight :"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x10

    invoke-static {v2}, Lcom/android/server/am/AppRecordManager;->getPackagesUsingFlag(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "flashlight"

    move-object v11, v0

    :cond_10
    move v2, v15

    :goto_6
    invoke-virtual {v9, v11}, Lcom/android/server/l;->fto(Ljava/lang/String;)Lcom/android/server/l$cno;

    move-result-object v0

    if-nez v0, :cond_11

    return-void

    :cond_11
    iget-wide v12, v9, Lcom/android/server/l;->Gg:J

    cmp-long v6, v6, v12

    const-string v7, "Critical temp is "

    if-ltz v6, :cond_12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/l$cno;->mg:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, v9, Lcom/android/server/l;->Eg:I

    iget v0, v0, Lcom/android/server/l$cno;->mg:I

    if-lt v6, v0, :cond_13

    goto :goto_7

    :cond_12
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/l$cno;->lg:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, v9, Lcom/android/server/l;->Eg:I

    iget v0, v0, Lcom/android/server/l$cno;->lg:I

    if-lt v6, v0, :cond_13

    :goto_7
    const/4 v0, 0x1

    goto :goto_8

    :cond_13
    const/4 v0, 0x0

    :goto_8
    if-nez v0, :cond_14

    iget-boolean v0, v9, Lcom/android/server/l;->tg:Z

    if-eqz v0, :cond_15

    :cond_14
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v6, v9, Lcom/android/server/l;->Eg:I

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v4, p3

    move-object v7, v11

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/l;->zta(IILjava/lang/String;JILjava/lang/String;I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, v9, Lcom/android/server/l;->Bg:J

    :cond_15
    iget-object v0, v9, Lcom/android/server/l;->Pg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v9, Lcom/android/server/l;->Qg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v9, Lcom/android/server/l;->Sg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, v9, Lcom/android/server/l;->Rg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    iput v0, v9, Lcom/android/server/l;->Mg:I

    return-void
.end method

.method zta(ILjava/lang/String;Z)V
    .locals 11

    iget-object v0, p0, Lcom/android/server/l;->mContext:Landroid/content/Context;

    const-string v1, "dropbox"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/os/DropBoxManager;

    new-instance v4, Ljava/lang/StringBuilder;

    const/16 v0, 0x1000

    invoke-direct {v4, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    new-instance v0, Lcom/android/server/k;

    const-string v3, "Overheat dump: overheat"

    move-object v1, v0

    move-object v2, p0

    move v5, p1

    move-object v6, p2

    move v9, p3

    invoke-direct/range {v1 .. v10}, Lcom/android/server/k;-><init>(Lcom/android/server/l;Ljava/lang/String;Ljava/lang/StringBuilder;ILjava/lang/String;JZLandroid/os/DropBoxManager;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public zta(Lorg/json/JSONObject;Ljava/lang/String;Lcom/android/server/l$cno;)V
    .locals 8

    const-string p0, "OverHeatingDiagnosis"

    :try_start_0
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    move-object v1, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/l$cno;->zta(ZZZIILjava/lang/String;)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Lcom/android/server/l$cno;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/you$zta;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/server/you$zta;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
