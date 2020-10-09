.class public Lcom/oneplus/server/DynamicVsyncManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$zta$you;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/server/DynamicVsyncManager$zta;,
        Lcom/oneplus/server/DynamicVsyncManager$you;,
        Lcom/oneplus/server/DynamicVsyncManager$DockDividerVisibilityListener;
    }
.end annotation


# static fields
.field private static final ACTION_TEST:Ljava/lang/String; = "com.vsync.action.test"

.field public static final FEATURE_EXTREME_ENABLE:Z

.field private static final Qja:Ljava/lang/String; = "persist.sys.dynamic.minv"

.field public static final Rja:Z

.field private static final Sja:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DynamicVsyncManager"

.field private static final Tja:I = 0x1

.field private static final Uja:I = 0x2

.field private static final Vja:I = 0x3

.field private static final Wja:Ljava/lang/String; = "persist.sys.dps.support"

.field private static Xja:Lcom/oneplus/server/DynamicVsyncManager;


# instance fields
.field private Aja:J

.field private Bja:I

.field private final Cja:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final Dja:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private Eja:Ljava/lang/Object;

.field private Fja:I

.field private Gja:I

.field private Hja:I

.field private Ija:I

.field private Jja:I

.field private Kja:Ljava/lang/String;

.field private Lja:Z

.field private Mja:Z

.field private Nja:Z

.field private final Oja:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Pja:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private _z:Lcom/oneplus/server/DynamicVsyncManager$DockDividerVisibilityListener;

.field private ija:Z

.field private jja:F

.field private kja:Z

.field private lja:Z

.field private mConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mConfigUpdater:Lcom/oneplus/server/DynamicVsyncManager$zta;

.field private mContext:Landroid/content/Context;

.field private mDebug:Z

.field private mEnable:Z

.field private mLock:Ljava/lang/Object;

.field private mMaxDuration:D

.field private mMinDuration:D

.field private mScreenRateSettings:I

.field private mSettingsObserver:Lcom/oneplus/server/DynamicVsyncManager$you;

.field private mSurfaceFlinger:Landroid/os/IBinder;

.field private mTestReceiver:Landroid/content/BroadcastReceiver;

.field private final mja:I

.field private final nja:J

.field private oja:I

.field private pja:I

.field public final qbh:Landroid/net/Uri;

.field private qja:I

.field private rja:D

.field private sja:D

.field private tja:D

.field private uja:D

.field private vja:D

.field private wja:D

.field private xja:D

.field private yja:Z

.field private zja:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0xfe

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/oneplus/server/DynamicVsyncManager;->Rja:Z

    new-array v0, v0, [I

    const/16 v1, 0xff

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/server/DynamicVsyncManager;->FEATURE_EXTREME_ENABLE:Z

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mDebug:Z

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    iput-boolean v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->ija:Z

    const v1, 0x7f7fffff    # Float.MAX_VALUE

    iput v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->jja:F

    sget-boolean v1, Lcom/oneplus/server/DynamicVsyncManager;->Rja:Z

    iput-boolean v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->kja:Z

    iput-boolean v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->mEnable:Z

    iput-boolean v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->lja:Z

    const/16 v1, 0x3e8

    iput v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->mja:I

    const-wide/32 v1, 0x3b9aca00

    iput-wide v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->nja:J

    const/16 v1, 0x78

    iput v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->oja:I

    const/16 v1, 0x4b

    iput v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->pja:I

    iget v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->oja:I

    iput v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->qja:I

    int-to-double v1, v1

    const-wide v3, 0x41cdcd6500000000L    # 1.0E9

    div-double v1, v3, v1

    iput-wide v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->rja:D

    iget v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->pja:I

    int-to-double v1, v1

    div-double/2addr v3, v1

    iput-wide v3, p0, Lcom/oneplus/server/DynamicVsyncManager;->sja:D

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->tja:D

    const-wide v1, 0x408f400000000000L    # 1000.0

    iput-wide v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->mMinDuration:D

    const-wide v1, 0x40a7700000000000L    # 3000.0

    iput-wide v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->mMaxDuration:D

    const-wide v1, 0x3fdae147ae147ae1L    # 0.42

    iput-wide v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->uja:D

    const-wide v1, 0x3fd3333333333333L    # 0.3

    iput-wide v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->vja:D

    const-wide v1, 0x3faeb851eb851eb8L    # 0.06

    iput-wide v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->wja:D

    const-wide v1, 0x3f947ae147ae147bL    # 0.02

    iput-wide v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->xja:D

    iput-boolean v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->yja:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->zja:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->mLock:Ljava/lang/Object;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->Cja:Ljava/util/HashMap;

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    iput-object v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->Dja:Ljava/util/HashSet;

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->Eja:Ljava/lang/Object;

    const/4 v1, 0x1

    const-string v2, "persist.sys.dps.support"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/oneplus/server/DynamicVsyncManager;->Fja:I

    const/16 v2, 0xc8

    iput v2, p0, Lcom/oneplus/server/DynamicVsyncManager;->Gja:I

    const/16 v2, 0xdac

    iput v2, p0, Lcom/oneplus/server/DynamicVsyncManager;->Hja:I

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iput v2, p0, Lcom/oneplus/server/DynamicVsyncManager;->mScreenRateSettings:I

    iput v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Ija:I

    const-string v2, "oneplus_screen_refresh_rate"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/server/DynamicVsyncManager;->qbh:Landroid/net/Uri;

    iput v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Jja:I

    const-string v2, ""

    iput-object v2, p0, Lcom/oneplus/server/DynamicVsyncManager;->Kja:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Lja:Z

    iput-boolean v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->Mja:Z

    iput-boolean v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Nja:Z

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Oja:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Pja:Ljava/util/HashSet;

    new-instance v0, Lcom/oneplus/server/you;

    invoke-direct {v0, p0}, Lcom/oneplus/server/you;-><init>(Lcom/oneplus/server/DynamicVsyncManager;)V

    iput-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mTestReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0}, Lcom/oneplus/server/DynamicVsyncManager;->updateConfig()V

    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Dja:Ljava/util/HashSet;

    const-string v1, "com.facebook.katana"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Cja:Ljava/util/HashMap;

    const-string v1, "tv.danmaku.bili"

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Cja:Ljava/util/HashMap;

    const-string v2, "air.tv.douyu.android"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Cja:Ljava/util/HashMap;

    const-string v4, "com.duowan.kiwi"

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Oja:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Oja:Ljava/util/HashSet;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Oja:Ljava/util/HashSet;

    invoke-virtual {v0, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/oneplus/server/DynamicVsyncManager;->FEATURE_EXTREME_ENABLE:Z

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oneplus/server/DynamicVsyncManager$you;

    invoke-direct {v0, p0}, Lcom/oneplus/server/DynamicVsyncManager$you;-><init>(Lcom/oneplus/server/DynamicVsyncManager;)V

    iput-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mSettingsObserver:Lcom/oneplus/server/DynamicVsyncManager$you;

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->zta(Lcom/android/server/OnePlusUtil$zta$you;)V

    :cond_0
    return-void
.end method

.method static synthetic bio(Lcom/oneplus/server/DynamicVsyncManager;)D
    .locals 2

    iget-wide v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mMinDuration:D

    return-wide v0
.end method

.method static synthetic bio(Lcom/oneplus/server/DynamicVsyncManager;D)D
    .locals 0

    iput-wide p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->xja:D

    return-wide p1
.end method

.method static synthetic cno(Lcom/oneplus/server/DynamicVsyncManager;)D
    .locals 2

    iget-wide v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->uja:D

    return-wide v0
.end method

.method static synthetic cno(Lcom/oneplus/server/DynamicVsyncManager;D)D
    .locals 0

    iput-wide p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->mMaxDuration:D

    return-wide p1
.end method

.method static synthetic dma(Lcom/oneplus/server/DynamicVsyncManager;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mScreenRateSettings:I

    return p0
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 5

    const-string v0, " DynamicVsync: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   mEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->mEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mConfigEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->kja:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mReverse="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->yja:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mFlingV2Enable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->lja:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   mGap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->zja:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "mCoffe = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->tja:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", mDelayCoffe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->xja:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   mMaxDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->mMaxDuration:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", mMinDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->mMinDuration:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", mMaxCoffe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->uja:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", mMinCoffe="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->vja:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   mCoffeSlope = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->wja:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   mMaxFps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->oja:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mMinFps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->pja:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCurrentFps="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->qja:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   mOutsetPeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->sja:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", mTargetPeriod="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->rja:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "   mLimitPkgMap:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Cja:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->Cja:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "     "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/server/DynamicVsyncManager;->Cja:Ljava/util/HashMap;

    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    const-string v0, "   mWhiteAppSet:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->Dja:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_1
    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Dja:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "     "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const-string v0, " ExtremeVsync: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   ExtremeFeature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oneplus/server/DynamicVsyncManager;->FEATURE_EXTREME_ENABLE:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "   mExtremeWhiteSet:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Oja:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_2
    iget-object v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->Oja:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "     "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const-string v0, "   mExtremeBlackSet:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->Pja:Ljava/util/HashSet;

    monitor-enter v1

    :try_start_3
    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Pja:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "     "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\n   mFrontUid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->Jja:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   mFrontPackage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->Kja:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   mUserSetMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->Ija:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   mScreenRateSettings="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->mScreenRateSettings:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   mExtremeSupport="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->Fja:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   mExtremeBackllightLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->Gja:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   mExtremeDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->Hja:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   mAllAppEnable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->Mja:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   mInMemcMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->Nja:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "   mInMultiWindowMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Lja:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception p0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0
.end method

.method private eb(Z)V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/server/DynamicVsyncManager;->getSurfaceFlinger()V

    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mSurfaceFlinger:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mSurfaceFlinger:Landroid/os/IBinder;

    const/16 p1, 0x4e2e

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "DynamicVsyncManager"

    const-string v1, "Exception updateGrayEnable"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0

    :cond_0
    :goto_2
    return-void
.end method

.method static synthetic gck(Lcom/oneplus/server/DynamicVsyncManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/server/DynamicVsyncManager;->st()V

    return-void
.end method

.method public static getInstance()Lcom/oneplus/server/DynamicVsyncManager;
    .locals 1

    sget-object v0, Lcom/oneplus/server/DynamicVsyncManager;->Xja:Lcom/oneplus/server/DynamicVsyncManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/server/DynamicVsyncManager;

    invoke-direct {v0}, Lcom/oneplus/server/DynamicVsyncManager;-><init>()V

    sput-object v0, Lcom/oneplus/server/DynamicVsyncManager;->Xja:Lcom/oneplus/server/DynamicVsyncManager;

    :cond_0
    sget-object v0, Lcom/oneplus/server/DynamicVsyncManager;->Xja:Lcom/oneplus/server/DynamicVsyncManager;

    return-object v0
.end method

.method private getSurfaceFlinger()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mSurfaceFlinger:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mSurfaceFlinger:Landroid/os/IBinder;

    :cond_0
    return-void
.end method

.method static synthetic igw(Lcom/oneplus/server/DynamicVsyncManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Eja:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic kth(Lcom/oneplus/server/DynamicVsyncManager;)D
    .locals 2

    iget-wide v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mMaxDuration:D

    return-wide v0
.end method

.method static synthetic kth(Lcom/oneplus/server/DynamicVsyncManager;D)D
    .locals 0

    iput-wide p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->mMinDuration:D

    return-wide p1
.end method

.method private myLog(ZLjava/lang/String;)V
    .locals 0

    if-eqz p1, :cond_0

    const-string p0, "DynamicVsyncManager"

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private nt()V
    .locals 1

    iget v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->oja:I

    invoke-direct {p0, v0}, Lcom/oneplus/server/DynamicVsyncManager;->wc(I)V

    return-void
.end method

.method private ot()I
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mDebug:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "evaluate frontPkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/server/DynamicVsyncManager;->Kja:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mInMultiWindowMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/server/DynamicVsyncManager;->Lja:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mInMemcMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/server/DynamicVsyncManager;->Nja:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mScreenRateSettings="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/server/DynamicVsyncManager;->mScreenRateSettings:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mAllAppEnable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/server/DynamicVsyncManager;->Mja:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/server/DynamicVsyncManager;->myLog(ZLjava/lang/String;)V

    iget v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mScreenRateSettings:I

    const/4 v1, 0x3

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v2, p0, Lcom/oneplus/server/DynamicVsyncManager;->Nja:Z

    if-nez v2, :cond_1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_1

    return v2

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Lja:Z

    if-nez v0, :cond_5

    iget-boolean v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Nja:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Oja:Ljava/util/HashSet;

    iget-object v2, p0, Lcom/oneplus/server/DynamicVsyncManager;->Kja:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Mja:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Pja:Ljava/util/HashSet;

    iget-object p0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Kja:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    return v1

    :cond_4
    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_1
    return v1
.end method

.method private pt()I
    .locals 2

    iget p0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mScreenRateSettings:I

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_1

    const/4 p0, 0x3

    return p0

    :cond_1
    const/4 v1, 0x1

    if-ne p0, v1, :cond_2

    return v1

    :cond_2
    return v0
.end method

.method private qt()Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Eja:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget p0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Fja:I

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private registerOnlineConfig()V
    .locals 5

    new-instance v0, Lcom/oneplus/server/DynamicVsyncManager$zta;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/server/DynamicVsyncManager$zta;-><init>(Lcom/oneplus/server/DynamicVsyncManager;Lcom/oneplus/server/zta;)V

    iput-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mConfigUpdater:Lcom/oneplus/server/DynamicVsyncManager$zta;

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/server/DynamicVsyncManager;->mConfigUpdater:Lcom/oneplus/server/DynamicVsyncManager$zta;

    const-string v4, "DynamicVsync"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object p0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p0}, Lcom/oneplus/config/ConfigObserver;->register()V

    return-void
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 9

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->ija:Z

    const-string v0, "[OnlineConfig] config is null!"

    invoke-direct {p0, p1, v0}, Lcom/oneplus/server/DynamicVsyncManager;->myLog(ZLjava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_12

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "feature"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/oneplus/server/DynamicVsyncManager;->kja:Z

    const-string v4, "persist.sys.dynamic.vsync"

    iget-boolean v5, p0, Lcom/oneplus/server/DynamicVsyncManager;->kja:Z

    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/oneplus/server/DynamicVsyncManager;->vdb(Ljava/lang/String;Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/oneplus/server/DynamicVsyncManager;->kja:Z

    iput-boolean v4, p0, Lcom/oneplus/server/DynamicVsyncManager;->mEnable:Z

    iget-boolean v4, p0, Lcom/oneplus/server/DynamicVsyncManager;->mEnable:Z

    if-nez v4, :cond_1

    invoke-direct {p0}, Lcom/oneplus/server/DynamicVsyncManager;->nt()V

    :cond_1
    iget-boolean v4, p0, Lcom/oneplus/server/DynamicVsyncManager;->ija:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] feature: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/oneplus/server/DynamicVsyncManager;->kja:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/oneplus/server/DynamicVsyncManager;->myLog(ZLjava/lang/String;)V

    :cond_2
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "whitelist"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/oneplus/server/DynamicVsyncManager;->Dja:Ljava/util/HashSet;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v5, p0, Lcom/oneplus/server/DynamicVsyncManager;->Dja:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    const-string v5, "value"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v6, v0

    :goto_1
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_3

    iget-object v7, p0, Lcom/oneplus/server/DynamicVsyncManager;->Dja:Ljava/util/HashSet;

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_3
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-boolean v4, p0, Lcom/oneplus/server/DynamicVsyncManager;->ija:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] mWhiteAppSet: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/oneplus/server/DynamicVsyncManager;->Dja:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/oneplus/server/DynamicVsyncManager;->myLog(ZLjava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p1

    :cond_4
    :goto_2
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "support"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    iget-object v2, p0, Lcom/oneplus/server/DynamicVsyncManager;->Eja:Ljava/lang/Object;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/oneplus/server/DynamicVsyncManager;->Fja:I

    const-string v4, "persist.sys.dps.support"

    iget v6, p0, Lcom/oneplus/server/DynamicVsyncManager;->Fja:I

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2

    move v2, v5

    goto :goto_3

    :catchall_1
    move-exception p1

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p1

    :cond_5
    :goto_3
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "delay"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v2, p0, Lcom/oneplus/server/DynamicVsyncManager;->Eja:Ljava/lang/Object;

    monitor-enter v2
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/oneplus/server/DynamicVsyncManager;->Hja:I

    monitor-exit v2

    move v2, v5

    goto :goto_4

    :catchall_2
    move-exception p1

    monitor-exit v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :try_start_8
    throw p1

    :cond_6
    :goto_4
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "allappV2"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/oneplus/server/DynamicVsyncManager;->Mja:Z

    iget-boolean v4, p0, Lcom/oneplus/server/DynamicVsyncManager;->ija:Z

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig] mAllAppEnableV2: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/oneplus/server/DynamicVsyncManager;->Mja:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v4, v6}, Lcom/oneplus/server/DynamicVsyncManager;->myLog(ZLjava/lang/String;)V

    :cond_7
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "gray_enable"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v4

    invoke-direct {p0, v4}, Lcom/oneplus/server/DynamicVsyncManager;->eb(Z)V

    iget-boolean v6, p0, Lcom/oneplus/server/DynamicVsyncManager;->ija:Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OnlineConfig] gray enable: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v6, v4}, Lcom/oneplus/server/DynamicVsyncManager;->myLog(ZLjava/lang/String;)V

    :cond_8
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "gray"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/oneplus/server/DynamicVsyncManager;->yc(I)V

    iget-boolean v6, p0, Lcom/oneplus/server/DynamicVsyncManager;->ija:Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OnlineConfig] grayThreshold: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v6, v4}, Lcom/oneplus/server/DynamicVsyncManager;->myLog(ZLjava/lang/String;)V

    :cond_9
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "percent"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-direct {p0, v4}, Lcom/oneplus/server/DynamicVsyncManager;->xc(I)V

    iget-boolean v6, p0, Lcom/oneplus/server/DynamicVsyncManager;->ija:Z

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OnlineConfig] grayPercentThreshold: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v6, v4}, Lcom/oneplus/server/DynamicVsyncManager;->myLog(ZLjava/lang/String;)V

    :cond_a
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v6, "backlight"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    iget-object v2, p0, Lcom/oneplus/server/DynamicVsyncManager;->Eja:Ljava/lang/Object;

    monitor-enter v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :try_start_9
    const-string v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Lcom/oneplus/server/DynamicVsyncManager;->Gja:I

    monitor-exit v2

    move v2, v5

    goto :goto_5

    :catchall_3
    move-exception p1

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    :try_start_a
    throw p1

    :cond_b
    :goto_5
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "eWhite"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    iget-object v4, p0, Lcom/oneplus/server/DynamicVsyncManager;->Oja:Ljava/util/HashSet;

    monitor-enter v4
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :try_start_b
    iget-object v5, p0, Lcom/oneplus/server/DynamicVsyncManager;->Oja:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    const-string v5, "value"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v6, v0

    :goto_6
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_c

    iget-object v7, p0, Lcom/oneplus/server/DynamicVsyncManager;->Oja:Ljava/util/HashSet;

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_c
    monitor-exit v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_4

    :try_start_c
    iget-boolean v4, p0, Lcom/oneplus/server/DynamicVsyncManager;->ija:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] mExtremeWhiteSet: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/oneplus/server/DynamicVsyncManager;->Oja:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/oneplus/server/DynamicVsyncManager;->myLog(ZLjava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    goto :goto_7

    :catchall_4
    move-exception p1

    :try_start_d
    monitor-exit v4
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :try_start_e
    throw p1

    :cond_d
    :goto_7
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "eBlack"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_f

    iget-object v4, p0, Lcom/oneplus/server/DynamicVsyncManager;->Pja:Ljava/util/HashSet;

    monitor-enter v4
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    :try_start_f
    iget-object v5, p0, Lcom/oneplus/server/DynamicVsyncManager;->Pja:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->clear()V

    const-string v5, "value"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v5

    move v6, v0

    :goto_8
    invoke-virtual {v5}, Lorg/json/JSONArray;->length()I

    move-result v7

    if-ge v6, v7, :cond_e

    iget-object v7, p0, Lcom/oneplus/server/DynamicVsyncManager;->Pja:Ljava/util/HashSet;

    invoke-virtual {v5, v6}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_e
    monitor-exit v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_5

    :try_start_10
    iget-boolean v4, p0, Lcom/oneplus/server/DynamicVsyncManager;->ija:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] mExtremeBlackSet: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/oneplus/server/DynamicVsyncManager;->Pja:Ljava/util/HashSet;

    invoke-virtual {v6}, Ljava/util/HashSet;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/oneplus/server/DynamicVsyncManager;->myLog(ZLjava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    goto :goto_9

    :catchall_5
    move-exception p1

    :try_start_11
    monitor-exit v4
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :try_start_12
    throw p1

    :cond_f
    :goto_9
    const-string v4, "name"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "limitPkgMap"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_11

    iget-object v4, p0, Lcom/oneplus/server/DynamicVsyncManager;->Cja:Ljava/util/HashMap;

    monitor-enter v4
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    :try_start_13
    iget-object v5, p0, Lcom/oneplus/server/DynamicVsyncManager;->Cja:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->clear()V

    const-string v5, "value"

    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v5, v0

    :goto_a
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_10

    invoke-virtual {v3, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const-string v7, "pkg"

    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "flag"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v8, p0, Lcom/oneplus/server/DynamicVsyncManager;->Cja:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v8, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_10
    monitor-exit v4
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :try_start_14
    iget-boolean v3, p0, Lcom/oneplus/server/DynamicVsyncManager;->ija:Z

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] limitPkgMap: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oneplus/server/DynamicVsyncManager;->Cja:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/oneplus/server/DynamicVsyncManager;->myLog(ZLjava/lang/String;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    goto :goto_b

    :catchall_6
    move-exception p1

    :try_start_15
    monitor-exit v4
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_6

    :try_start_16
    throw p1

    :cond_11
    :goto_b
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_12
    if-eqz v2, :cond_13

    invoke-direct {p0}, Lcom/oneplus/server/DynamicVsyncManager;->rt()V
    :try_end_16
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_16} :catch_0

    goto :goto_c

    :catch_0
    move-exception p1

    iget-boolean v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->ija:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oneplus/server/DynamicVsyncManager;->myLog(ZLjava/lang/String;)V

    :cond_13
    :goto_c
    return-void
.end method

.method private rt()V
    .locals 5

    invoke-direct {p0}, Lcom/oneplus/server/DynamicVsyncManager;->getSurfaceFlinger()V

    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mSurfaceFlinger:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->Eja:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-boolean v2, p0, Lcom/oneplus/server/DynamicVsyncManager;->ija:Z

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateExtremeConfig to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/server/DynamicVsyncManager;->Fja:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/server/DynamicVsyncManager;->Hja:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/server/DynamicVsyncManager;->Gja:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/oneplus/server/DynamicVsyncManager;->myLog(ZLjava/lang/String;)V

    iget v2, p0, Lcom/oneplus/server/DynamicVsyncManager;->Fja:I

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Lcom/oneplus/server/DynamicVsyncManager;->Hja:I

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    iget v2, p0, Lcom/oneplus/server/DynamicVsyncManager;->Gja:I

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object p0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mSurfaceFlinger:Landroid/os/IBinder;

    const/16 v1, 0x4e2b

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p0, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :cond_0
    :goto_2
    return-void
.end method

.method static synthetic rtg(Lcom/oneplus/server/DynamicVsyncManager;D)D
    .locals 0

    iput-wide p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->uja:D

    return-wide p1
.end method

.method static synthetic rtg(Lcom/oneplus/server/DynamicVsyncManager;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->mScreenRateSettings:I

    return p1
.end method

.method static synthetic rtg(Lcom/oneplus/server/DynamicVsyncManager;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic rtg(Lcom/oneplus/server/DynamicVsyncManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->Lja:Z

    return p1
.end method

.method private sc(I)D
    .locals 2

    if-nez p1, :cond_0

    const/16 p1, 0x3c

    iget-boolean v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->ija:Z

    const-string v1, "fatal when convertFpsToPeriod!"

    invoke-direct {p0, v0, v1}, Lcom/oneplus/server/DynamicVsyncManager;->myLog(ZLjava/lang/String;)V

    :cond_0
    const-wide v0, 0x408f400000000000L    # 1000.0

    int-to-double p0, p1

    div-double/2addr v0, p0

    return-wide v0
.end method

.method private sis(D)D
    .locals 4

    iget-wide v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->tja:D

    const-wide/16 v2, 0x0

    cmpl-double v2, v0, v2

    if-eqz v2, :cond_0

    return-wide v0

    :cond_0
    iget-wide v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mMaxDuration:D

    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    move-wide p1, v0

    :cond_1
    const-wide v0, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, v0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    sub-double/2addr p1, v0

    iget-wide v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->wja:D

    mul-double/2addr p1, v0

    iget-wide v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->vja:D

    add-double/2addr p1, v0

    return-wide p1
.end method

.method static synthetic sis(Lcom/oneplus/server/DynamicVsyncManager;D)D
    .locals 0

    iput-wide p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->tja:D

    return-wide p1
.end method

.method static synthetic sis(Lcom/oneplus/server/DynamicVsyncManager;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/server/DynamicVsyncManager;->pja:I

    return p0
.end method

.method static synthetic sis(Lcom/oneplus/server/DynamicVsyncManager;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->oja:I

    return p1
.end method

.method static synthetic sis(Lcom/oneplus/server/DynamicVsyncManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->yja:Z

    return p1
.end method

.method static synthetic ssp(Lcom/oneplus/server/DynamicVsyncManager;)D
    .locals 2

    iget-wide v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->vja:D

    return-wide v0
.end method

.method static synthetic ssp(Lcom/oneplus/server/DynamicVsyncManager;D)D
    .locals 0

    iput-wide p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->wja:D

    return-wide p1
.end method

.method static synthetic ssp(Lcom/oneplus/server/DynamicVsyncManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->mDebug:Z

    return p1
.end method

.method private st()V
    .locals 4

    invoke-direct {p0}, Lcom/oneplus/server/DynamicVsyncManager;->qt()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/server/DynamicVsyncManager;->ot()I

    move-result v0

    iget v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->Ija:I

    if-ne v1, v0, :cond_1

    return-void

    :cond_1
    iput v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Ija:I

    iget-boolean v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->mDebug:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateUserSetModeLocked to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/server/DynamicVsyncManager;->Ija:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/oneplus/server/DynamicVsyncManager;->myLog(ZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/oneplus/server/DynamicVsyncManager;->getSurfaceFlinger()V

    iget-object v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->mSurfaceFlinger:Landroid/os/IBinder;

    if-eqz v1, :cond_2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mSurfaceFlinger:Landroid/os/IBinder;

    const/16 v0, 0x4e2a

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p0, v0, v1, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw p0

    :cond_2
    :goto_2
    return-void
.end method

.method private tc(I)V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/server/DynamicVsyncManager;->qt()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mDebug:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doAnimation "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/server/DynamicVsyncManager;->myLog(ZLjava/lang/String;)V

    invoke-direct {p0}, Lcom/oneplus/server/DynamicVsyncManager;->getSurfaceFlinger()V

    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mSurfaceFlinger:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mSurfaceFlinger:Landroid/os/IBinder;

    const/16 p1, 0x4e2c

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0

    :cond_1
    :goto_2
    return-void
.end method

.method static synthetic tsu(Lcom/oneplus/server/DynamicVsyncManager;D)D
    .locals 0

    iput-wide p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->vja:D

    return-wide p1
.end method

.method static synthetic tsu(Lcom/oneplus/server/DynamicVsyncManager;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/server/DynamicVsyncManager;->oja:I

    return p0
.end method

.method static synthetic tsu(Lcom/oneplus/server/DynamicVsyncManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/server/DynamicVsyncManager;->vc(I)V

    return-void
.end method

.method static synthetic tsu(Lcom/oneplus/server/DynamicVsyncManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->lja:Z

    return p1
.end method

.method private uc(I)V
    .locals 3

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/server/DynamicVsyncManager;->zc(I)V

    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->Bja:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->Aja:J

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private updateConfig()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "persist.sys.dynamic.vsync"

    iget-boolean v2, p0, Lcom/oneplus/server/DynamicVsyncManager;->kja:Z

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->kja:Z

    iget-boolean v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->kja:Z

    iput-boolean v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->mEnable:Z

    const-string v1, "persist.sys.dynamic.vsync.debug"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Lcom/oneplus/server/DynamicVsyncManager;->mDebug:Z

    const-string v1, "persist.sys.dynamic.max"

    const-string v2, "120"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->oja:I

    const-string v1, "persist.sys.dynamic.min"

    const-string v2, "75"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->pja:I

    iget v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->oja:I

    invoke-direct {p0, v1}, Lcom/oneplus/server/DynamicVsyncManager;->sc(I)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->rja:D

    iget v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->pja:I

    invoke-direct {p0, v1}, Lcom/oneplus/server/DynamicVsyncManager;->sc(I)D

    move-result-wide v1

    iput-wide v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->sja:D

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private vc(I)V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/server/DynamicVsyncManager;->getSurfaceFlinger()V

    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mSurfaceFlinger:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mSurfaceFlinger:Landroid/os/IBinder;

    const/16 p1, 0x4e25

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "DynamicVsyncManager"

    const-string v1, "Exception setDynamicLatencyGap"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0

    :cond_0
    :goto_2
    return-void
.end method

.method private vdb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, ""

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->ija:Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set  key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " |value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " |curValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/oneplus/server/DynamicVsyncManager;->myLog(ZLjava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "DynamicVsyncManager"

    const-string p2, "failed to set system property"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private wc(I)V
    .locals 3

    iget v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->qja:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->qja:I

    invoke-direct {p0}, Lcom/oneplus/server/DynamicVsyncManager;->getSurfaceFlinger()V

    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mSurfaceFlinger:Landroid/os/IBinder;

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mSurfaceFlinger:Landroid/os/IBinder;

    const/16 p1, 0x4e24

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "DynamicVsyncManager"

    const-string v1, "Exception setDynamicVsyncCurrentFpsLocked"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0

    :cond_1
    :goto_2
    return-void
.end method

.method private wtn(Ljava/io/PrintWriter;)V
    .locals 0

    const-string p0, "********************** Help begin:**********************"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "1. dump all info"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "cmd: dumpsys display dynamicvsync dump"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "2. update input switch config"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "cmd: dumpsys display dynamicvsync input  w/b add/remove PACKGNAME"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "cmd: dumpsys display dynamicvsync input time MILLISECOND"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "********************** Help end.  **********************"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic wtn(Lcom/oneplus/server/DynamicVsyncManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Lja:Z

    return p0
.end method

.method private xc(I)V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/server/DynamicVsyncManager;->getSurfaceFlinger()V

    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mSurfaceFlinger:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mSurfaceFlinger:Landroid/os/IBinder;

    const/16 p1, 0x4e30

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "DynamicVsyncManager"

    const-string v1, "Exception updateGrayPercentThreshold"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0

    :cond_0
    :goto_2
    return-void
.end method

.method private yc(I)V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/server/DynamicVsyncManager;->getSurfaceFlinger()V

    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mSurfaceFlinger:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mSurfaceFlinger:Landroid/os/IBinder;

    const/16 p1, 0x4e2f

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "DynamicVsyncManager"

    const-string v1, "Exception updateGrayThreshold"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0

    :cond_0
    :goto_2
    return-void
.end method

.method private you(DD)D
    .locals 2

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    mul-double/2addr p3, v0

    div-double/2addr p1, p3

    return-wide p1
.end method

.method static synthetic you(Lcom/oneplus/server/DynamicVsyncManager;D)D
    .locals 0

    iput-wide p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->rja:D

    return-wide p1
.end method

.method static synthetic you(Lcom/oneplus/server/DynamicVsyncManager;I)D
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/server/DynamicVsyncManager;->sc(I)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic you(Lcom/oneplus/server/DynamicVsyncManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/server/DynamicVsyncManager;->nt()V

    return-void
.end method

.method static synthetic you(Lcom/oneplus/server/DynamicVsyncManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->kja:Z

    return p1
.end method

.method private zc(I)V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/server/DynamicVsyncManager;->getSurfaceFlinger()V

    iget-boolean v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mDebug:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRefreshSkipCount "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/server/DynamicVsyncManager;->myLog(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mSurfaceFlinger:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mSurfaceFlinger:Landroid/os/IBinder;

    const/16 p1, 0x3f8

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {p0, p1, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "DynamicVsyncManager"

    const-string v1, "Exception updateRefreshSkipCount"

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0

    :cond_0
    :goto_2
    return-void
.end method

.method private zta(DDD)D
    .locals 6

    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    invoke-static {p3, p4, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    sub-double/2addr v2, v4

    mul-double/2addr p5, v0

    sub-double/2addr p5, p3

    sub-double/2addr p5, p1

    div-double/2addr v2, p5

    return-wide v2
.end method

.method private zta(DDI)D
    .locals 4

    int-to-double v0, p5

    const-wide v2, 0x408f400000000000L    # 1000.0

    div-double/2addr v2, v0

    sub-double/2addr p1, v2

    div-double/2addr p1, p3

    return-wide p1
.end method

.method static synthetic zta(Lcom/oneplus/server/DynamicVsyncManager;D)D
    .locals 0

    iput-wide p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->sja:D

    return-wide p1
.end method

.method static synthetic zta(Lcom/oneplus/server/DynamicVsyncManager;F)F
    .locals 0

    iput p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->jja:F

    return p1
.end method

.method private zta(DD)I
    .locals 0

    mul-double/2addr p1, p3

    iget p0, p0, Lcom/oneplus/server/DynamicVsyncManager;->oja:I

    int-to-double p3, p0

    mul-double/2addr p1, p3

    const-wide p3, 0x408f400000000000L    # 1000.0

    div-double/2addr p1, p3

    double-to-int p0, p1

    return p0
.end method

.method static synthetic zta(Lcom/oneplus/server/DynamicVsyncManager;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->pja:I

    return p1
.end method

.method private zta(IIDDI)V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/server/DynamicVsyncManager;->getSurfaceFlinger()V

    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mSurfaceFlinger:Landroid/os/IBinder;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeDouble(D)V

    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeDouble(D)V

    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    iget-boolean p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->yja:Z

    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mSurfaceFlinger:Landroid/os/IBinder;

    const/16 p1, 0x4e23

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-interface {p0, p1, v0, p2, p3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    :try_start_1
    const-string p1, "DynamicVsyncManager"

    const-string p2, "Exception updateDynamicVsyncPeriodLocked"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw p0

    :cond_0
    :goto_2
    return-void
.end method

.method static synthetic zta(Lcom/oneplus/server/DynamicVsyncManager;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/server/DynamicVsyncManager;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/server/DynamicVsyncManager;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/server/DynamicVsyncManager;->myLog(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/server/DynamicVsyncManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/server/DynamicVsyncManager;->ija:Z

    return p0
.end method

.method static synthetic zta(Lcom/oneplus/server/DynamicVsyncManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->mEnable:Z

    return p1
.end method


# virtual methods
.method public R(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->kja:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mEnable:Z

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mDebug:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDynamicVsyncEnabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/server/DynamicVsyncManager;->myLog(ZLjava/lang/String;)V

    iput-boolean p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->mEnable:Z

    iget-boolean p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->mEnable:Z

    if-nez p1, :cond_1

    invoke-direct {p0}, Lcom/oneplus/server/DynamicVsyncManager;->nt()V

    :cond_1
    :goto_0
    return-void
.end method

.method public S(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Eja:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->Nja:Z

    invoke-direct {p0}, Lcom/oneplus/server/DynamicVsyncManager;->st()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public doScreenRotation()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mDebug:Z

    const-string v1, "doScreenRotation"

    invoke-direct {p0, v0, v1}, Lcom/oneplus/server/DynamicVsyncManager;->myLog(ZLjava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Eja:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->Hja:I

    invoke-direct {p0, v1}, Lcom/oneplus/server/DynamicVsyncManager;->tc(I)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public flingEvent(Ljava/lang/String;I)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    const/16 v1, 0x3e8

    if-le v9, v1, :cond_7

    if-nez v8, :cond_0

    goto/16 :goto_2

    :cond_0
    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/OnePlusUtil$zta;->z()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/server/DynamicVsyncManager;->qt()Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v1, 0xbb8

    if-lt v9, v1, :cond_2

    invoke-direct {v0, v9}, Lcom/oneplus/server/DynamicVsyncManager;->tc(I)V

    :cond_2
    iget-boolean v1, v0, Lcom/oneplus/server/DynamicVsyncManager;->mEnable:Z

    if-eqz v1, :cond_7

    iget-object v1, v0, Lcom/oneplus/server/DynamicVsyncManager;->Dja:Ljava/util/HashSet;

    invoke-virtual {v1, v8}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_2

    :cond_3
    iget-boolean v1, v0, Lcom/oneplus/server/DynamicVsyncManager;->lja:Z

    if-eqz v1, :cond_4

    invoke-direct {v0, v9}, Lcom/oneplus/server/DynamicVsyncManager;->uc(I)V

    return-void

    :cond_4
    int-to-double v10, v9

    invoke-direct {v0, v10, v11}, Lcom/oneplus/server/DynamicVsyncManager;->sis(D)D

    move-result-wide v12

    iget-boolean v1, v0, Lcom/oneplus/server/DynamicVsyncManager;->yja:Z

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    if-eqz v1, :cond_5

    sub-double v1, v14, v12

    goto :goto_0

    :cond_5
    iget-wide v1, v0, Lcom/oneplus/server/DynamicVsyncManager;->xja:D

    :goto_0
    invoke-direct {v0, v10, v11, v1, v2}, Lcom/oneplus/server/DynamicVsyncManager;->zta(DD)I

    move-result v6

    iget-wide v2, v0, Lcom/oneplus/server/DynamicVsyncManager;->rja:D

    iget-wide v4, v0, Lcom/oneplus/server/DynamicVsyncManager;->sja:D

    mul-double v16, v10, v12

    move-object/from16 v1, p0

    move/from16 v18, v6

    move-wide/from16 v6, v16

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/server/DynamicVsyncManager;->zta(DDD)D

    move-result-wide v6

    iget-boolean v1, v0, Lcom/oneplus/server/DynamicVsyncManager;->mDebug:Z

    if-eqz v1, :cond_6

    new-instance v4, Ljava/text/DecimalFormat;

    const-string v1, "0.0000"

    invoke-direct {v4, v1}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    iget-wide v2, v0, Lcom/oneplus/server/DynamicVsyncManager;->sja:D

    iget v5, v0, Lcom/oneplus/server/DynamicVsyncManager;->oja:I

    move-object/from16 v1, p0

    move-object/from16 v19, v4

    move/from16 v16, v5

    move-wide v4, v6

    move-wide/from16 v20, v6

    move/from16 v6, v16

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/server/DynamicVsyncManager;->zta(DDI)D

    move-result-wide v1

    sub-double/2addr v14, v12

    mul-double/2addr v14, v10

    iget-wide v3, v0, Lcom/oneplus/server/DynamicVsyncManager;->rja:D

    div-double/2addr v14, v3

    div-double/2addr v10, v3

    sub-double v3, v10, v1

    sub-double/2addr v3, v14

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "flingEvent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/oneplus/server/DynamicVsyncManager;->pja:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "->"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/oneplus/server/DynamicVsyncManager;->oja:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", outsetPeriod="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v0, Lcom/oneplus/server/DynamicVsyncManager;->sja:D

    move-object/from16 v8, v19

    invoke-virtual {v8, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", duration="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "ms, coffe="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, ", delayFrames="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v12, v18

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", incPeriod="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, v20

    invoke-virtual {v8, v6, v7}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ", varframes="

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int v1, v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", originFrames="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int v1, v10

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", decFrames="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    double-to-int v1, v3

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", percent="

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    div-double/2addr v3, v10

    invoke-virtual {v8, v3, v4}, Ljava/text/DecimalFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "DynamicVsyncManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_6
    move/from16 v12, v18

    :goto_1
    iget-object v10, v0, Lcom/oneplus/server/DynamicVsyncManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    :try_start_0
    iput v9, v0, Lcom/oneplus/server/DynamicVsyncManager;->Bja:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/oneplus/server/DynamicVsyncManager;->Aja:J

    iget v1, v0, Lcom/oneplus/server/DynamicVsyncManager;->pja:I

    iput v1, v0, Lcom/oneplus/server/DynamicVsyncManager;->qja:I

    iget v2, v0, Lcom/oneplus/server/DynamicVsyncManager;->oja:I

    iget v3, v0, Lcom/oneplus/server/DynamicVsyncManager;->pja:I

    iget-wide v4, v0, Lcom/oneplus/server/DynamicVsyncManager;->sja:D

    const-wide v8, 0x3fee666666666666L    # 0.95

    mul-double/2addr v8, v6

    add-double/2addr v4, v8

    move-object/from16 v1, p0

    move v8, v12

    invoke-direct/range {v1 .. v8}, Lcom/oneplus/server/DynamicVsyncManager;->zta(IIDDI)V

    monitor-exit v10

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_7
    :goto_2
    return-void
.end method

.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 0

    iget-object p3, p0, Lcom/oneplus/server/DynamicVsyncManager;->Eja:Ljava/lang/Object;

    monitor-enter p3

    :try_start_0
    iput-object p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->Kja:Ljava/lang/String;

    iput p2, p0, Lcom/oneplus/server/DynamicVsyncManager;->Jja:I

    invoke-direct {p0}, Lcom/oneplus/server/DynamicVsyncManager;->st()V

    monitor-exit p3

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getDynamicVsyncConfig(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Cja:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public initEnv(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object p1

    new-instance v0, Lcom/oneplus/server/zta;

    invoke-direct {v0, p0}, Lcom/oneplus/server/zta;-><init>(Lcom/oneplus/server/DynamicVsyncManager;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    invoke-direct {p0}, Lcom/oneplus/server/DynamicVsyncManager;->registerOnlineConfig()V

    sget-boolean p1, Lcom/oneplus/server/DynamicVsyncManager;->FEATURE_EXTREME_ENABLE:Z

    if-eqz p1, :cond_0

    new-instance p1, Lcom/oneplus/server/DynamicVsyncManager$DockDividerVisibilityListener;

    invoke-direct {p1, p0}, Lcom/oneplus/server/DynamicVsyncManager$DockDividerVisibilityListener;-><init>(Lcom/oneplus/server/DynamicVsyncManager;)V

    iput-object p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->_z:Lcom/oneplus/server/DynamicVsyncManager$DockDividerVisibilityListener;

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->_z:Lcom/oneplus/server/DynamicVsyncManager$DockDividerVisibilityListener;

    invoke-interface {p1, v0}, Landroid/view/IWindowManager;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    iget-boolean v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->ija:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to register docked stack listener "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/oneplus/server/DynamicVsyncManager;->myLog(ZLjava/lang/String;)V

    :goto_0
    iget-object p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x2

    const-string v1, "oneplus_screen_refresh_rate"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->mScreenRateSettings:I

    iget-object p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->qbh:Landroid/net/Uri;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oneplus/server/DynamicVsyncManager;->mSettingsObserver:Lcom/oneplus/server/DynamicVsyncManager$you;

    const/4 v3, -0x1

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_0
    iget-boolean p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->mDebug:Z

    if-eqz p1, :cond_1

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "com.vsync.action.test"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mTestReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    return-void
.end method

.method public resume(Ljava/lang/String;)V
    .locals 8

    iget-boolean v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mEnable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-wide v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->Aja:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v5, p0, Lcom/oneplus/server/DynamicVsyncManager;->Aja:J

    sub-long/2addr v1, v5

    iget v5, p0, Lcom/oneplus/server/DynamicVsyncManager;->Bja:I

    int-to-long v5, v5

    cmp-long v1, v1, v5

    const/4 v2, 0x0

    if-gez v1, :cond_2

    iget-boolean v1, p0, Lcom/oneplus/server/DynamicVsyncManager;->mDebug:Z

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " stop fling-  ("

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/oneplus/server/DynamicVsyncManager;->Aja:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->Bja:I

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v1, p1}, Lcom/oneplus/server/DynamicVsyncManager;->myLog(ZLjava/lang/String;)V

    iget-boolean p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->lja:Z

    if-eqz p1, :cond_1

    invoke-direct {p0, v2}, Lcom/oneplus/server/DynamicVsyncManager;->zc(I)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/server/DynamicVsyncManager;->nt()V

    :cond_2
    :goto_0
    iput-wide v3, p0, Lcom/oneplus/server/DynamicVsyncManager;->Aja:J

    iput v2, p0, Lcom/oneplus/server/DynamicVsyncManager;->Bja:I

    :cond_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateVelocity(Ljava/lang/String;FD)V
    .locals 0

    iget p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->jja:F

    cmpg-float p1, p2, p1

    if-gtz p1, :cond_1

    iget-boolean p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->lja:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0, p2}, Lcom/oneplus/server/DynamicVsyncManager;->zc(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/server/DynamicVsyncManager;->nt()V

    :goto_0
    iget-object p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->mLock:Ljava/lang/Object;

    monitor-enter p1

    const-wide/16 p3, 0x0

    :try_start_0
    iput-wide p3, p0, Lcom/oneplus/server/DynamicVsyncManager;->Aja:J

    iput p2, p0, Lcom/oneplus/server/DynamicVsyncManager;->Bja:I

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

.method public zta(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 6

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_b

    aget-object v0, p2, v1

    const-string v3, "dynamicvsync"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    :try_start_0
    array-length v0, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const-string v0, "dump"

    aget-object v3, p2, v2

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/oneplus/server/DynamicVsyncManager;->dump(Ljava/io/PrintWriter;)V

    return v2

    :cond_1
    array-length v0, p2

    const/4 v3, 0x4

    const/4 v4, 0x3

    if-ne v0, v3, :cond_6

    const-string v0, "input"

    aget-object v5, p2, v2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "delay"

    aget-object v5, p2, v1

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->Eja:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    aget-object p2, p2, v4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/oneplus/server/DynamicVsyncManager;->Hja:I

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0}, Lcom/oneplus/server/DynamicVsyncManager;->rt()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    return v2

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0

    :cond_2
    const-string v0, "debug"

    aget-object v5, p2, v1

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "1"

    aget-object p2, p2, v4

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->mDebug:Z

    return v2

    :cond_3
    const-string v0, "support"

    aget-object v5, p2, v1

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->Eja:Ljava/lang/Object;

    monitor-enter p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    aget-object p2, p2, v4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/oneplus/server/DynamicVsyncManager;->Fja:I

    const-string p2, "persist.sys.dps.support"

    iget v0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Fja:I

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-direct {p0}, Lcom/oneplus/server/DynamicVsyncManager;->rt()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    return v2

    :catchall_1
    move-exception p0

    :try_start_7
    monitor-exit p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw p0

    :cond_4
    const-string v0, "backlight"

    aget-object v5, p2, v1

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->Eja:Ljava/lang/Object;

    monitor-enter p1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :try_start_9
    aget-object p2, p2, v4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/oneplus/server/DynamicVsyncManager;->Gja:I

    monitor-exit p1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :try_start_a
    invoke-direct {p0}, Lcom/oneplus/server/DynamicVsyncManager;->rt()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    return v2

    :catchall_2
    move-exception p0

    :try_start_b
    monitor-exit p1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    :try_start_c
    throw p0

    :cond_5
    const-string v0, "allapp"

    aget-object v5, p2, v1

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "1"

    aget-object p2, p2, v4

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->Mja:Z

    return v2

    :cond_6
    array-length v0, p2

    const/4 v5, 0x5

    if-ne v0, v5, :cond_a

    const-string v0, "input"

    aget-object v5, p2, v2

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "add"

    aget-object v5, p2, v4

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, "w"

    aget-object v0, p2, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->Oja:Ljava/util/HashSet;

    monitor-enter p1
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_0

    :try_start_d
    iget-object p0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Oja:Ljava/util/HashSet;

    aget-object p2, p2, v3

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    goto :goto_0

    :catchall_3
    move-exception p0

    monitor-exit p1
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    :try_start_e
    throw p0

    :cond_7
    iget-object p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->Pja:Ljava/util/HashSet;

    monitor-enter p1
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_0

    :try_start_f
    iget-object p0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Pja:Ljava/util/HashSet;

    aget-object p2, p2, v3

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit p1

    :goto_0
    return v2

    :catchall_4
    move-exception p0

    monitor-exit p1
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    :try_start_10
    throw p0

    :cond_8
    const-string v0, "remove"

    aget-object v4, p2, v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string p1, "w"

    aget-object v0, p2, v1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->Oja:Ljava/util/HashSet;

    monitor-enter p1
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_0

    :try_start_11
    iget-object p0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Oja:Ljava/util/HashSet;

    aget-object p2, p2, v3

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit p1

    goto :goto_1

    :catchall_5
    move-exception p0

    monitor-exit p1
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_5

    :try_start_12
    throw p0

    :cond_9
    iget-object p1, p0, Lcom/oneplus/server/DynamicVsyncManager;->Pja:Ljava/util/HashSet;

    monitor-enter p1
    :try_end_12
    .catch Ljava/lang/Exception; {:try_start_12 .. :try_end_12} :catch_0

    :try_start_13
    iget-object p0, p0, Lcom/oneplus/server/DynamicVsyncManager;->Pja:Ljava/util/HashSet;

    aget-object p2, p2, v3

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit p1

    :goto_1
    return v2

    :catchall_6
    move-exception p0

    monitor-exit p1
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_6

    :try_start_14
    throw p0

    :cond_a
    invoke-direct {p0, p1}, Lcom/oneplus/server/DynamicVsyncManager;->wtn(Ljava/io/PrintWriter;)V
    :try_end_14
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DynamicVsyncManager"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v2

    :cond_b
    :goto_3
    return v1
.end method
