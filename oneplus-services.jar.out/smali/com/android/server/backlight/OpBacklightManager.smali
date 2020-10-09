.class public Lcom/android/server/backlight/OpBacklightManager;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/display/IOpDisplayPowerController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/backlight/OpBacklightManager$zta;,
        Lcom/android/server/backlight/OpBacklightManager$you;,
        Lcom/android/server/backlight/OpBacklightManager$DockDividerVisibilityListener;
    }
.end annotation


# static fields
.field private static final CONFIG_NAME:Ljava/lang/String; = "OpBacklightControl"

.field public static final TAG:Ljava/lang/String; = "OpBacklightManager"

.field private static bA:Z = true

.field private static cA:Z = true

.field private static dA:Z = false

.field public static final eA:I = -0x63

.field private static mDebug:Z

.field public static sInstance:Lcom/android/server/backlight/OpBacklightManager;


# instance fields
.field private Tz:Lcom/oneplus/config/ConfigObserver;

.field private Uz:Lcom/android/server/wm/OpScreenModeService;

.field private final Vz:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/backlight/zta;",
            ">;"
        }
    .end annotation
.end field

.field private final Wz:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final Xz:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/backlight/zta$zta;",
            ">;>;"
        }
    .end annotation
.end field

.field private Yz:I

.field private Zz:Z

.field private _z:Lcom/android/server/backlight/OpBacklightManager$DockDividerVisibilityListener;

.field private aA:Ljava/lang/Runnable;

.field private mAdjustBrightnessInterval:I

.field private mContext:Landroid/content/Context;

.field private mCurrentConfig:Lcom/android/server/backlight/zta;

.field private mDisplayPowerController:Lcom/android/server/display/IOpBacklightController;

.field private mHandler:Lcom/android/server/backlight/OpBacklightManager$you;

.field private mLock:Ljava/lang/Object;

.field private mMaxBrightness:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/backlight/OpBacklightManager;->mDebug:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/backlight/OpBacklightManager;->dA:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/backlight/OpBacklightManager;->sInstance:Lcom/android/server/backlight/OpBacklightManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/backlight/OpBacklightManager;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/backlight/OpBacklightManager;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/backlight/zta;

    invoke-direct {v0}, Lcom/android/server/backlight/zta;-><init>()V

    iput-object v0, p0, Lcom/android/server/backlight/OpBacklightManager;->mCurrentConfig:Lcom/android/server/backlight/zta;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/backlight/OpBacklightManager;->Vz:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/backlight/OpBacklightManager;->Wz:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/backlight/OpBacklightManager;->Xz:Ljava/util/HashMap;

    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/server/backlight/OpBacklightManager;->Yz:I

    const/16 v0, 0xffa

    iput v0, p0, Lcom/android/server/backlight/OpBacklightManager;->mMaxBrightness:I

    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/server/backlight/OpBacklightManager;->mAdjustBrightnessInterval:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/backlight/OpBacklightManager;->Zz:Z

    new-instance v0, Lcom/android/server/backlight/you;

    invoke-direct {v0, p0}, Lcom/android/server/backlight/you;-><init>(Lcom/android/server/backlight/OpBacklightManager;)V

    iput-object v0, p0, Lcom/android/server/backlight/OpBacklightManager;->aA:Ljava/lang/Runnable;

    new-instance v0, Lcom/android/server/backlight/OpBacklightManager$you;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/backlight/OpBacklightManager$you;-><init>(Lcom/android/server/backlight/OpBacklightManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/backlight/OpBacklightManager;->mHandler:Lcom/android/server/backlight/OpBacklightManager$you;

    new-instance v0, Lcom/android/server/backlight/OpBacklightManager$DockDividerVisibilityListener;

    invoke-direct {v0, p0}, Lcom/android/server/backlight/OpBacklightManager$DockDividerVisibilityListener;-><init>(Lcom/android/server/backlight/OpBacklightManager;)V

    iput-object v0, p0, Lcom/android/server/backlight/OpBacklightManager;->_z:Lcom/android/server/backlight/OpBacklightManager$DockDividerVisibilityListener;

    new-instance v0, Lcom/android/server/backlight/zta$zta;

    const-string v2, "default"

    const-wide v3, 0x3fed70a3d70a3d71L    # 0.92

    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const/16 v7, 0x2710

    const/16 v8, 0x2710

    const v9, 0xdbba0

    move-object v1, v0

    invoke-direct/range {v1 .. v9}, Lcom/android/server/backlight/zta$zta;-><init>(Ljava/lang/String;DDIII)V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/android/server/backlight/OpBacklightManager;->Xz:Ljava/util/HashMap;

    const-string v0, "default"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private Ab(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/backlight/OpBacklightManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/android/server/backlight/OpBacklightManager;->mMaxBrightness:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static B(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/backlight/OpBacklightManager;->dA:Z

    if-eqz v0, :cond_0

    const-string v0, "OpBacklightManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private Bb(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/backlight/OpBacklightManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/android/server/backlight/OpBacklightManager;->Yz:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private Ca(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/backlight/OpBacklightManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/backlight/OpBacklightManager;->cA:Z

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mFeatureCommonEnable from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/backlight/OpBacklightManager;->cA:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/backlight/OpBacklightManager;->myLog(Ljava/lang/String;)V

    sput-boolean p1, Lcom/android/server/backlight/OpBacklightManager;->cA:Z

    sget-boolean p1, Lcom/android/server/backlight/OpBacklightManager;->cA:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager;->mHandler:Lcom/android/server/backlight/OpBacklightManager$you;

    iget-object v1, p0, Lcom/android/server/backlight/OpBacklightManager;->aA:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager;->mHandler:Lcom/android/server/backlight/OpBacklightManager$you;

    iget-object v1, p0, Lcom/android/server/backlight/OpBacklightManager;->aA:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager;->mCurrentConfig:Lcom/android/server/backlight/zta;

    invoke-virtual {p1}, Lcom/android/server/backlight/zta;->Ec()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager;->mHandler:Lcom/android/server/backlight/OpBacklightManager$you;

    iget-object p0, p0, Lcom/android/server/backlight/OpBacklightManager;->aA:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

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

.method private Da(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/backlight/OpBacklightManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/backlight/OpBacklightManager;->bA:Z

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateFeatureEnable from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/backlight/OpBacklightManager;->bA:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/backlight/OpBacklightManager;->myLog(Ljava/lang/String;)V

    sput-boolean p1, Lcom/android/server/backlight/OpBacklightManager;->bA:Z

    sget-boolean p1, Lcom/android/server/backlight/OpBacklightManager;->bA:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager;->mHandler:Lcom/android/server/backlight/OpBacklightManager$you;

    iget-object v1, p0, Lcom/android/server/backlight/OpBacklightManager;->aA:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager;->mHandler:Lcom/android/server/backlight/OpBacklightManager$you;

    iget-object v1, p0, Lcom/android/server/backlight/OpBacklightManager;->aA:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager;->mCurrentConfig:Lcom/android/server/backlight/zta;

    invoke-virtual {p1}, Lcom/android/server/backlight/zta;->Ec()I

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager;->mHandler:Lcom/android/server/backlight/OpBacklightManager$you;

    iget-object p0, p0, Lcom/android/server/backlight/OpBacklightManager;->aA:Ljava/lang/Runnable;

    const-wide/16 v1, 0x0

    invoke-virtual {p1, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

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

.method private Wb(Ljava/lang/String;)Lcom/android/server/backlight/zta;
    .locals 4

    iget-object v0, p0, Lcom/android/server/backlight/OpBacklightManager;->Wz:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/backlight/OpBacklightManager;->Wz:Ljava/util/HashSet;

    invoke-virtual {v1, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    monitor-exit v0

    return-object v2

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v1, p0, Lcom/android/server/backlight/OpBacklightManager;->Vz:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_1
    iget-object p0, p0, Lcom/android/server/backlight/OpBacklightManager;->Vz:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/backlight/zta;

    invoke-virtual {v0}, Lcom/android/server/backlight/zta;->Za()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    monitor-exit v1

    return-object v0

    :cond_2
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean p0, Lcom/android/server/backlight/OpBacklightManager;->cA:Z

    if-eqz p0, :cond_4

    invoke-static {p1}, Lcom/android/server/am/AppRecordManager;->getUidFromPackageName(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/android/server/am/AppRecordManager;->ire(I)Z

    move-result p0

    if-nez p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is system app!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/backlight/OpBacklightManager;->B(Ljava/lang/String;)V

    return-object v2

    :cond_3
    new-instance p0, Lcom/android/server/backlight/zta;

    const/4 v0, 0x0

    const-string v1, "default"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/backlight/zta;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    return-object p0

    :cond_4
    return-object v2

    :catchall_0
    move-exception p0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0
.end method

.method private Xb(Ljava/lang/String;)Z
    .locals 1

    iget-object p0, p0, Lcom/android/server/backlight/OpBacklightManager;->Uz:Lcom/android/server/wm/OpScreenModeService;

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/OpScreenModeService;->getRawRefreshRate(Ljava/lang/String;)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    return p1

    :cond_1
    return v0
.end method

.method static synthetic bio(Lcom/android/server/backlight/OpBacklightManager;)I
    .locals 0

    invoke-direct {p0}, Lcom/android/server/backlight/OpBacklightManager;->eo()I

    move-result p0

    return p0
.end method

.method private bo()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/backlight/OpBacklightManager;->mCurrentConfig:Lcom/android/server/backlight/zta;

    invoke-direct {p0, v0}, Lcom/android/server/backlight/OpBacklightManager;->you(Lcom/android/server/backlight/zta;)Lcom/android/server/backlight/zta$zta;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getAnimateDurationLocked is null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/backlight/OpBacklightManager;->mCurrentConfig:Lcom/android/server/backlight/zta;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/backlight/OpBacklightManager;->myLog(Ljava/lang/String;)V

    const/4 p0, 0x1

    return p0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/backlight/zta$zta;->Ac()I

    move-result p0

    return p0
.end method

.method private bvj(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/backlight/OpBacklightManager;->Xb(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager;->mCurrentConfig:Lcom/android/server/backlight/zta;

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Lcom/android/server/backlight/zta;->updateStatus(I)V

    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager;->mHandler:Lcom/android/server/backlight/OpBacklightManager$you;

    iget-object p2, p0, Lcom/android/server/backlight/OpBacklightManager;->aA:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager;->mCurrentConfig:Lcom/android/server/backlight/zta;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/server/backlight/zta;->updateStatus(I)V

    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager;->mHandler:Lcom/android/server/backlight/OpBacklightManager$you;

    iget-object p2, p0, Lcom/android/server/backlight/OpBacklightManager;->aA:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_1

    :goto_0
    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager;->mHandler:Lcom/android/server/backlight/OpBacklightManager$you;

    iget-object p2, p0, Lcom/android/server/backlight/OpBacklightManager;->aA:Ljava/lang/Runnable;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_1
    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager;->mHandler:Lcom/android/server/backlight/OpBacklightManager$you;

    iget-object p2, p0, Lcom/android/server/backlight/OpBacklightManager;->aA:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/backlight/OpBacklightManager;->co()I

    move-result p0

    int-to-long v0, p0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method static synthetic cno(Lcom/android/server/backlight/OpBacklightManager;)I
    .locals 0

    iget p0, p0, Lcom/android/server/backlight/OpBacklightManager;->mAdjustBrightnessInterval:I

    return p0
.end method

.method private co()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/backlight/OpBacklightManager;->mCurrentConfig:Lcom/android/server/backlight/zta;

    invoke-direct {p0, v0}, Lcom/android/server/backlight/OpBacklightManager;->you(Lcom/android/server/backlight/zta;)Lcom/android/server/backlight/zta$zta;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentDelayMillisecodLocked is null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/backlight/OpBacklightManager;->mCurrentConfig:Lcom/android/server/backlight/zta;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/backlight/OpBacklightManager;->myLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/backlight/zta$zta;->zc()I

    move-result p0

    return p0
.end method

.method private do()D
    .locals 2

    iget-object v0, p0, Lcom/android/server/backlight/OpBacklightManager;->mCurrentConfig:Lcom/android/server/backlight/zta;

    invoke-direct {p0, v0}, Lcom/android/server/backlight/OpBacklightManager;->you(Lcom/android/server/backlight/zta;)Lcom/android/server/backlight/zta$zta;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentPercent is null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/backlight/OpBacklightManager;->mCurrentConfig:Lcom/android/server/backlight/zta;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/backlight/OpBacklightManager;->myLog(Ljava/lang/String;)V

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/backlight/zta$zta;->yc()D

    move-result-wide v0

    return-wide v0
.end method

.method private dump(Ljava/io/PrintWriter;)V
    .locals 5

    const-string v0, " OpBacklightManager: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/backlight/OpBacklightManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   feature="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/backlight/OpBacklightManager;->bA:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   feature_common="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/backlight/OpBacklightManager;->cA:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   mMinBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/backlight/OpBacklightManager;->Yz:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   mMaxBrightness="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/backlight/OpBacklightManager;->mMaxBrightness:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   mAdjustBrightnessInterval="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/backlight/OpBacklightManager;->mAdjustBrightnessInterval:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "   mCurrentConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/backlight/OpBacklightManager;->mCurrentConfig:Lcom/android/server/backlight/zta;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    iget-object v1, p0, Lcom/android/server/backlight/OpBacklightManager;->Vz:Ljava/util/ArrayList;

    monitor-enter v1

    :try_start_1
    const-string v0, "   PkgList: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/backlight/OpBacklightManager;->Vz:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backlight/zta;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/backlight/zta;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    iget-object v0, p0, Lcom/android/server/backlight/OpBacklightManager;->Wz:Ljava/util/HashSet;

    monitor-enter v0

    :try_start_2
    const-string v1, "   BlackList: "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/backlight/OpBacklightManager;->Wz:Ljava/util/HashSet;

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object v1, p0, Lcom/android/server/backlight/OpBacklightManager;->Xz:Ljava/util/HashMap;

    monitor-enter v1

    :try_start_3
    const-string v0, "   ParamList: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/server/backlight/OpBacklightManager;->Xz:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/backlight/zta$zta;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/android/server/backlight/zta$zta;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :catchall_3
    move-exception p0

    :try_start_6
    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw p0
.end method

.method private eo()I
    .locals 3

    iget-object v0, p0, Lcom/android/server/backlight/OpBacklightManager;->mCurrentConfig:Lcom/android/server/backlight/zta;

    invoke-direct {p0, v0}, Lcom/android/server/backlight/OpBacklightManager;->you(Lcom/android/server/backlight/zta;)Lcom/android/server/backlight/zta$zta;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getDelayForNextAnimationLocked is null: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/backlight/OpBacklightManager;->mCurrentConfig:Lcom/android/server/backlight/zta;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/backlight/OpBacklightManager;->myLog(Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v1, p0, Lcom/android/server/backlight/OpBacklightManager;->mCurrentConfig:Lcom/android/server/backlight/zta;

    invoke-virtual {v1}, Lcom/android/server/backlight/zta;->Ec()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/server/backlight/OpBacklightManager;->mCurrentConfig:Lcom/android/server/backlight/zta;

    invoke-virtual {v1}, Lcom/android/server/backlight/zta;->Ec()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/backlight/OpBacklightManager;->mCurrentConfig:Lcom/android/server/backlight/zta;

    invoke-virtual {p0}, Lcom/android/server/backlight/zta;->Ec()I

    move-result p0

    const/4 v1, 0x3

    if-ne p0, v1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/backlight/zta$zta;->zc()I

    move-result p0

    invoke-virtual {v0}, Lcom/android/server/backlight/zta$zta;->Bc()I

    move-result v0

    add-int/2addr p0, v0

    return p0

    :cond_2
    invoke-virtual {v0}, Lcom/android/server/backlight/zta$zta;->zc()I

    move-result p0

    return p0

    :cond_3
    :goto_0
    invoke-virtual {v0}, Lcom/android/server/backlight/zta$zta;->zc()I

    move-result p0

    invoke-virtual {v0}, Lcom/android/server/backlight/zta$zta;->Ac()I

    move-result v0

    add-int/2addr p0, v0

    return p0
.end method

.method public static declared-synchronized getInstance()Lcom/android/server/backlight/OpBacklightManager;
    .locals 2

    const-class v0, Lcom/android/server/backlight/OpBacklightManager;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/backlight/OpBacklightManager;->sInstance:Lcom/android/server/backlight/OpBacklightManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/backlight/OpBacklightManager;

    invoke-direct {v1}, Lcom/android/server/backlight/OpBacklightManager;-><init>()V

    sput-object v1, Lcom/android/server/backlight/OpBacklightManager;->sInstance:Lcom/android/server/backlight/OpBacklightManager;

    :cond_0
    sget-object v1, Lcom/android/server/backlight/OpBacklightManager;->sInstance:Lcom/android/server/backlight/OpBacklightManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method static synthetic igw(Lcom/android/server/backlight/OpBacklightManager;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/server/backlight/OpBacklightManager;->aA:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic kth(Lcom/android/server/backlight/OpBacklightManager;)Lcom/android/server/display/IOpBacklightController;
    .locals 0

    iget-object p0, p0, Lcom/android/server/backlight/OpBacklightManager;->mDisplayPowerController:Lcom/android/server/display/IOpBacklightController;

    return-object p0
.end method

.method public static myLog(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/backlight/OpBacklightManager;->mDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "OpBacklightManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private resolvePerfConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolvePerfConfigFromJSON "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/backlight/OpBacklightManager;->myLog(Ljava/lang/String;)V

    if-nez v1, :cond_0

    return-void

    :cond_0
    const/4 v3, 0x0

    :goto_0
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_e

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "list"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const-string v6, "value"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x0

    :goto_1
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_1

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "pkg"

    invoke-virtual {v8, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v10, "type"

    invoke-virtual {v8, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const-string v11, "level"

    invoke-virtual {v8, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    new-instance v11, Lcom/android/server/backlight/zta;

    invoke-direct {v11, v9, v10, v8}, Lcom/android/server/backlight/zta;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v5, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_2

    iget-object v6, v0, Lcom/android/server/backlight/OpBacklightManager;->Vz:Ljava/util/ArrayList;

    monitor-enter v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v7, v0, Lcom/android/server/backlight/OpBacklightManager;->Vz:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    iget-object v7, v0, Lcom/android/server/backlight/OpBacklightManager;->Vz:Ljava/util/ArrayList;

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    monitor-exit v6

    goto :goto_2

    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_2
    :goto_2
    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "black"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const-string v6, "value"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x0

    :goto_3
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_3

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_3
    iget-object v6, v0, Lcom/android/server/backlight/OpBacklightManager;->Wz:Ljava/util/HashSet;

    monitor-enter v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v7, v0, Lcom/android/server/backlight/OpBacklightManager;->Wz:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    iget-object v7, v0, Lcom/android/server/backlight/OpBacklightManager;->Wz:Ljava/util/HashSet;

    invoke-virtual {v7, v5}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    monitor-exit v6

    goto :goto_4

    :catchall_1
    move-exception v0

    monitor-exit v6
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw v0

    :cond_4
    :goto_4
    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "param"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string v6, "value"

    invoke-virtual {v4, v6}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v6

    const/4 v7, 0x0

    :goto_5
    invoke-virtual {v6}, Lorg/json/JSONArray;->length()I

    move-result v8

    if-ge v7, v8, :cond_7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v6, v7}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v9

    const-string v10, "level"

    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string v11, "item"

    invoke-virtual {v9, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v9

    const/4 v15, 0x0

    :goto_6
    invoke-virtual {v9}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v15, v11, :cond_5

    invoke-virtual {v9, v15}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    const-string v12, "dec"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    const-string v12, "inc"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v16

    const-string v12, "in"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v18

    const-string v12, "out"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v19

    const-string v12, "delay"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    new-instance v12, Lcom/android/server/backlight/zta$zta;

    move-object v11, v12

    move-object v2, v12

    move-object v12, v10

    move/from16 v21, v15

    move-wide/from16 v15, v16

    move/from16 v17, v18

    move/from16 v18, v19

    move/from16 v19, v20

    invoke-direct/range {v11 .. v19}, Lcom/android/server/backlight/zta$zta;-><init>(Ljava/lang/String;DDIII)V

    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v15, v21, 0x1

    goto :goto_6

    :cond_5
    if-eqz v10, :cond_6

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_6

    invoke-virtual {v5, v10, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_7
    invoke-virtual {v5}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, v0, Lcom/android/server/backlight/OpBacklightManager;->Xz:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v6, v0, Lcom/android/server/backlight/OpBacklightManager;->Xz:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->clear()V

    iget-object v6, v0, Lcom/android/server/backlight/OpBacklightManager;->Xz:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    monitor-exit v2

    goto :goto_7

    :catchall_2
    move-exception v0

    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw v0

    :cond_8
    :goto_7
    const-string v2, "name"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "feature"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "value"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/server/backlight/OpBacklightManager;->Da(Z)V

    :cond_9
    const-string v2, "name"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "feature_common"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const-string v2, "value"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/server/backlight/OpBacklightManager;->Ca(Z)V

    :cond_a
    const-string v2, "name"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "minBrightness"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "value"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/server/backlight/OpBacklightManager;->Bb(I)V

    :cond_b
    const-string v2, "name"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "maxBrightness"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    const-string v2, "value"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/server/backlight/OpBacklightManager;->Ab(I)V

    :cond_c
    const-string v2, "name"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v5, "adjustBrightnessInterval"

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    const-string v2, "value"

    invoke-virtual {v4, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-direct {v0, v2}, Lcom/android/server/backlight/OpBacklightManager;->zb(I)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :cond_d
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] OpBacklightManager Exception:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpBacklightManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    return-void
.end method

.method static synthetic rtg(Lcom/android/server/backlight/OpBacklightManager;)I
    .locals 0

    iget p0, p0, Lcom/android/server/backlight/OpBacklightManager;->Yz:I

    return p0
.end method

.method static synthetic rtg(Lcom/android/server/backlight/OpBacklightManager;Lcom/android/server/backlight/zta;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/backlight/OpBacklightManager;->zta(Lcom/android/server/backlight/zta;)I

    move-result p0

    return p0
.end method

.method private rtg(Lcom/android/server/backlight/zta;)V
    .locals 4

    const/4 v0, 0x3

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz p1, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/backlight/OpBacklightManager;->sis(Lcom/android/server/backlight/zta;)V

    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager;->mHandler:Lcom/android/server/backlight/OpBacklightManager$you;

    iget-object v3, p0, Lcom/android/server/backlight/OpBacklightManager;->aA:Ljava/lang/Runnable;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager;->mHandler:Lcom/android/server/backlight/OpBacklightManager$you;

    iget-object v3, p0, Lcom/android/server/backlight/OpBacklightManager;->aA:Ljava/lang/Runnable;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_0
    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager;->mCurrentConfig:Lcom/android/server/backlight/zta;

    invoke-virtual {p1}, Lcom/android/server/backlight/zta;->getType()I

    move-result p1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager;->mCurrentConfig:Lcom/android/server/backlight/zta;

    invoke-virtual {p1}, Lcom/android/server/backlight/zta;->Za()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/backlight/OpBacklightManager;->Xb(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager;->mCurrentConfig:Lcom/android/server/backlight/zta;

    invoke-virtual {p1, v0}, Lcom/android/server/backlight/zta;->updateStatus(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager;->mCurrentConfig:Lcom/android/server/backlight/zta;

    invoke-virtual {p1, v2}, Lcom/android/server/backlight/zta;->updateStatus(I)V

    :goto_0
    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager;->mHandler:Lcom/android/server/backlight/OpBacklightManager$you;

    iget-object v0, p0, Lcom/android/server/backlight/OpBacklightManager;->aA:Ljava/lang/Runnable;

    invoke-direct {p0}, Lcom/android/server/backlight/OpBacklightManager;->co()I

    move-result p0

    int-to-long v1, p0

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager;->mCurrentConfig:Lcom/android/server/backlight/zta;

    invoke-virtual {p1}, Lcom/android/server/backlight/zta;->Ec()I

    move-result p1

    if-eq p1, v2, :cond_3

    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager;->mCurrentConfig:Lcom/android/server/backlight/zta;

    invoke-virtual {p1}, Lcom/android/server/backlight/zta;->Ec()I

    move-result p1

    if-ne p1, v1, :cond_5

    :cond_3
    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager;->mHandler:Lcom/android/server/backlight/OpBacklightManager$you;

    iget-object v1, p0, Lcom/android/server/backlight/OpBacklightManager;->aA:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager;->mHandler:Lcom/android/server/backlight/OpBacklightManager$you;

    iget-object v1, p0, Lcom/android/server/backlight/OpBacklightManager;->aA:Ljava/lang/Runnable;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager;->mCurrentConfig:Lcom/android/server/backlight/zta;

    invoke-virtual {p1, v0}, Lcom/android/server/backlight/zta;->updateStatus(I)V

    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager;->mHandler:Lcom/android/server/backlight/OpBacklightManager$you;

    iget-object p0, p0, Lcom/android/server/backlight/OpBacklightManager;->aA:Ljava/lang/Runnable;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_1
    return-void
.end method

.method static synthetic sis(Lcom/android/server/backlight/OpBacklightManager;)Lcom/android/server/backlight/OpBacklightManager$you;
    .locals 0

    iget-object p0, p0, Lcom/android/server/backlight/OpBacklightManager;->mHandler:Lcom/android/server/backlight/OpBacklightManager$you;

    return-object p0
.end method

.method static synthetic sis(Lcom/android/server/backlight/OpBacklightManager;Lcom/android/server/backlight/zta;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/backlight/OpBacklightManager;->rtg(Lcom/android/server/backlight/zta;)V

    return-void
.end method

.method private sis(Lcom/android/server/backlight/zta;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/backlight/OpBacklightManager;->mCurrentConfig:Lcom/android/server/backlight/zta;

    invoke-virtual {v0}, Lcom/android/server/backlight/zta;->Ec()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/backlight/OpBacklightManager;->mCurrentConfig:Lcom/android/server/backlight/zta;

    invoke-direct {p0, v0}, Lcom/android/server/backlight/OpBacklightManager;->you(Lcom/android/server/backlight/zta;)Lcom/android/server/backlight/zta$zta;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/android/server/backlight/OpBacklightManager;->zta(Lcom/android/server/backlight/zta;Lcom/android/server/backlight/zta$zta;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/backlight/zta;->q(I)I

    :cond_0
    iput-object p1, p0, Lcom/android/server/backlight/OpBacklightManager;->mCurrentConfig:Lcom/android/server/backlight/zta;

    return-void
.end method

.method static synthetic ssp(Lcom/android/server/backlight/OpBacklightManager;)I
    .locals 0

    iget p0, p0, Lcom/android/server/backlight/OpBacklightManager;->mMaxBrightness:I

    return p0
.end method

.method static synthetic tsu(Lcom/android/server/backlight/OpBacklightManager;Lcom/android/server/backlight/zta;)Lcom/android/server/backlight/zta$zta;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/backlight/OpBacklightManager;->you(Lcom/android/server/backlight/zta;)Lcom/android/server/backlight/zta$zta;

    move-result-object p0

    return-object p0
.end method

.method static synthetic tsu(Lcom/android/server/backlight/OpBacklightManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/backlight/OpBacklightManager;->Zz:Z

    return p0
.end method

.method private tsu(Lcom/android/server/backlight/zta;)Z
    .locals 2

    iget-object p0, p0, Lcom/android/server/backlight/OpBacklightManager;->Uz:Lcom/android/server/wm/OpScreenModeService;

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/backlight/zta;->Za()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/OpScreenModeService;->getRawRefreshRate(Ljava/lang/String;)I

    move-result p0

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    const/16 v1, -0x63

    if-ne p0, v1, :cond_1

    invoke-virtual {p1}, Lcom/android/server/backlight/zta;->getRefreshRate()I

    move-result p0

    :cond_1
    const/4 p1, 0x1

    if-ne p0, p1, :cond_2

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    return p1
.end method

.method private wtn(Ljava/io/PrintWriter;)V
    .locals 1

    const-string p0, "********************** Help begin:**********************"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "1. dump all info"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "cmd: dumpsys display opbacklight dump"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "----------------------------------"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "2. feature switch"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys display opbacklight enable 0/1"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys display opbacklight enable_common 0/1"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys display opbacklight debug 0/1"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "3. add/remove package"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys display opbacklight add/remove PKGNAME LEVEL TYPE"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "4. add/remove black package"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys display opbacklight add/remove black PKGNAME"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "5. add level item(index is the position of this item)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys display opbacklight add LEVEL DEC INC IN OUT DELAY INDEX"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "6. remove level\'s all items"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys display opbacklight level remove LEVEL"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "********************** Help end.  **********************"

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private you(Lcom/android/server/backlight/zta;)Lcom/android/server/backlight/zta$zta;
    .locals 2

    iget-object v0, p0, Lcom/android/server/backlight/OpBacklightManager;->Xz:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/backlight/OpBacklightManager;->Xz:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/backlight/zta;->getLevel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/backlight/zta;->Dc()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/backlight/zta$zta;

    monitor-exit v0

    return-object p0

    :cond_0
    monitor-exit v0

    const/4 p0, 0x0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic you(Lcom/android/server/backlight/OpBacklightManager;)Lcom/android/server/backlight/zta;
    .locals 0

    iget-object p0, p0, Lcom/android/server/backlight/OpBacklightManager;->mCurrentConfig:Lcom/android/server/backlight/zta;

    return-object p0
.end method

.method static synthetic you(Lcom/android/server/backlight/OpBacklightManager;Lcom/android/server/backlight/zta;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/backlight/OpBacklightManager;->tsu(Lcom/android/server/backlight/zta;)Z

    move-result p0

    return p0
.end method

.method private zb(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/backlight/OpBacklightManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/android/server/backlight/OpBacklightManager;->mAdjustBrightnessInterval:I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private zta(Lcom/android/server/backlight/zta;)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/backlight/OpBacklightManager;->Xz:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/backlight/OpBacklightManager;->Xz:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/backlight/zta;->getLevel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    monitor-exit v0

    return p0

    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

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

.method private zta(Lcom/android/server/backlight/zta;Lcom/android/server/backlight/zta$zta;)I
    .locals 8

    iget-object v0, p0, Lcom/android/server/backlight/OpBacklightManager;->Xz:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/backlight/OpBacklightManager;->Xz:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/android/server/backlight/zta;->getLevel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    move-wide v2, v1

    move v1, p1

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge p1, v4, :cond_1

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/backlight/zta$zta;

    invoke-virtual {v4}, Lcom/android/server/backlight/zta$zta;->yc()D

    move-result-wide v4

    invoke-virtual {p2}, Lcom/android/server/backlight/zta$zta;->yc()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    cmpg-double v6, v4, v2

    if-gez v6, :cond_0

    move v1, p1

    move-wide v2, v4

    :cond_0
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    move p1, v1

    :cond_2
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic zta(Lcom/android/server/backlight/OpBacklightManager;Lcom/android/server/backlight/zta;)Lcom/android/server/backlight/zta;
    .locals 0

    iput-object p1, p0, Lcom/android/server/backlight/OpBacklightManager;->mCurrentConfig:Lcom/android/server/backlight/zta;

    return-object p1
.end method

.method static synthetic zta(Lcom/android/server/backlight/OpBacklightManager;Ljava/lang/String;)Lcom/android/server/backlight/zta;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/backlight/OpBacklightManager;->Wb(Ljava/lang/String;)Lcom/android/server/backlight/zta;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/backlight/OpBacklightManager;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/backlight/OpBacklightManager;->mLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/backlight/OpBacklightManager;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/backlight/OpBacklightManager;->resolvePerfConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/backlight/OpBacklightManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/backlight/OpBacklightManager;->Zz:Z

    return p1
.end method


# virtual methods
.method public hookDisplayPowerController(Lcom/android/server/display/IOpBacklightController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/backlight/OpBacklightManager;->mDisplayPowerController:Lcom/android/server/display/IOpBacklightController;

    return-void
.end method

.method public initOnlineConfig(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/backlight/OpBacklightManager;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/android/server/backlight/OpBacklightManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/backlight/OpBacklightManager;->mHandler:Lcom/android/server/backlight/OpBacklightManager$you;

    new-instance v2, Lcom/android/server/backlight/OpBacklightManager$zta;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/backlight/OpBacklightManager$zta;-><init>(Lcom/android/server/backlight/OpBacklightManager;Lcom/android/server/backlight/you;)V

    const-string v3, "OpBacklightControl"

    invoke-direct {p1, v0, v1, v2, v3}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/backlight/OpBacklightManager;->Tz:Lcom/oneplus/config/ConfigObserver;

    iget-object p1, p0, Lcom/android/server/backlight/OpBacklightManager;->Tz:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigObserver;->register()V

    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object p1

    iget-object p0, p0, Lcom/android/server/backlight/OpBacklightManager;->_z:Lcom/android/server/backlight/OpBacklightManager$DockDividerVisibilityListener;

    invoke-interface {p1, p0}, Landroid/view/IWindowManager;->registerDockedStackListener(Landroid/view/IDockedStackListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "OpBacklightManager"

    const-string v0, "Failed to register docked stack listener"

    invoke-static {p1, v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public rtg(Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OnePlusUtil$zta;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/backlight/OpBacklightManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/backlight/OpBacklightManager;->bA:Z

    if-eqz v1, :cond_5

    iget-boolean v1, p0, Lcom/android/server/backlight/OpBacklightManager;->Zz:Z

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/android/server/backlight/OpBacklightManager;->mDisplayPowerController:Lcom/android/server/display/IOpBacklightController;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/backlight/OpBacklightManager;->mContext:Landroid/content/Context;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/server/backlight/OpBacklightManager;->mCurrentConfig:Lcom/android/server/backlight/zta;

    invoke-virtual {v1}, Lcom/android/server/backlight/zta;->Za()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/backlight/OpBacklightManager;->mCurrentConfig:Lcom/android/server/backlight/zta;

    invoke-virtual {v1}, Lcom/android/server/backlight/zta;->Ec()I

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/backlight/OpBacklightManager;->mCurrentConfig:Lcom/android/server/backlight/zta;

    invoke-virtual {v1}, Lcom/android/server/backlight/zta;->getType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/backlight/OpBacklightManager;->mCurrentConfig:Lcom/android/server/backlight/zta;

    invoke-virtual {v1}, Lcom/android/server/backlight/zta;->getRefreshRate()I

    move-result v1

    if-eq v1, p2, :cond_2

    invoke-direct {p0, p1, p2}, Lcom/android/server/backlight/OpBacklightManager;->bvj(Ljava/lang/String;I)V

    :cond_2
    iget-object p0, p0, Lcom/android/server/backlight/OpBacklightManager;->mCurrentConfig:Lcom/android/server/backlight/zta;

    invoke-virtual {p0, p2}, Lcom/android/server/backlight/zta;->r(I)V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/android/server/backlight/OpBacklightManager;->Wb(Ljava/lang/String;)Lcom/android/server/backlight/zta;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-virtual {p1, p2}, Lcom/android/server/backlight/zta;->r(I)V

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/backlight/OpBacklightManager;->rtg(Lcom/android/server/backlight/zta;)V

    :goto_0
    monitor-exit v0

    return-void

    :cond_5
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

.method public zta(Lcom/android/server/wm/OpScreenModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/backlight/OpBacklightManager;->Uz:Lcom/android/server/wm/OpScreenModeService;

    return-void
.end method

.method public zta(Ljava/io/PrintWriter;[Ljava/lang/String;)Z
    .locals 13

    array-length v0, p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lt v0, v2, :cond_12

    aget-object v0, p2, v1

    const-string v3, "opbacklight"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    array-length v0, p2

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    aget-object v0, p2, v2

    const-string v3, "dump"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/backlight/OpBacklightManager;->dump(Ljava/io/PrintWriter;)V

    return v2

    :cond_1
    array-length v0, p2

    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    aget-object v0, p2, v2

    const-string v4, "enable"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    aget-object p1, p2, v1

    const-string p2, "0"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/android/server/backlight/OpBacklightManager;->Da(Z)V

    return v2

    :cond_2
    aget-object v0, p2, v2

    const-string v4, "enable_common"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    aget-object p1, p2, v1

    const-string p2, "0"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-direct {p0, p1}, Lcom/android/server/backlight/OpBacklightManager;->Ca(Z)V

    return v2

    :cond_3
    aget-object v0, p2, v2

    const-string v4, "debug"

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    aget-object p0, p2, v1

    const-string p1, "0"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    xor-int/2addr p0, v2

    sput-boolean p0, Lcom/android/server/backlight/OpBacklightManager;->mDebug:Z

    sput-boolean p0, Lcom/android/server/backlight/OpBacklightManager;->dA:Z

    return v2

    :cond_4
    :try_start_0
    array-length v0, p2

    const/4 v4, 0x5

    const/4 v5, 0x4

    if-ne v0, v4, :cond_8

    const-string v0, "add"

    aget-object v4, p2, v2

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    aget-object v1, p2, v1

    aget-object v3, p2, v3

    aget-object p2, p2, v5

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iget-object v4, p0, Lcom/android/server/backlight/OpBacklightManager;->Vz:Ljava/util/ArrayList;

    monitor-enter v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v5, p0, Lcom/android/server/backlight/OpBacklightManager;->Vz:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_5
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/backlight/zta;

    invoke-virtual {v6}, Lcom/android/server/backlight/zta;->Za()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v7, p0, Lcom/android/server/backlight/OpBacklightManager;->Vz:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_6
    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/backlight/OpBacklightManager;->Vz:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/backlight/zta;

    invoke-direct {v5, v1, p2, v3}, Lcom/android/server/backlight/zta;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    monitor-exit v4

    return v2

    :catchall_0
    move-exception p2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p2

    :cond_8
    array-length v0, p2

    if-ne v0, v5, :cond_b

    const-string v0, "level"

    aget-object v6, p2, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "remove"

    aget-object v6, p2, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    aget-object p2, p2, v3

    iget-object v0, p0, Lcom/android/server/backlight/OpBacklightManager;->Xz:Ljava/util/HashMap;

    monitor-enter v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v1, p0, Lcom/android/server/backlight/OpBacklightManager;->Xz:Ljava/util/HashMap;

    invoke-virtual {v1, p2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v0

    return v2

    :catchall_1
    move-exception p2

    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    throw p2

    :cond_9
    const-string v0, "black"

    aget-object v6, p2, v1

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    const-string v0, "add"

    aget-object v6, p2, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/backlight/OpBacklightManager;->Wz:Ljava/util/HashSet;

    monitor-enter v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :try_start_5
    iget-object v6, p0, Lcom/android/server/backlight/OpBacklightManager;->Wz:Ljava/util/HashSet;

    aget-object v7, p2, v3

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_1

    :catchall_2
    move-exception p2

    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :try_start_6
    throw p2

    :cond_a
    const-string v0, "remove"

    aget-object v6, p2, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/backlight/OpBacklightManager;->Wz:Ljava/util/HashSet;

    monitor-enter v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    :try_start_7
    iget-object v6, p0, Lcom/android/server/backlight/OpBacklightManager;->Wz:Ljava/util/HashSet;

    aget-object v7, p2, v3

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    goto :goto_1

    :catchall_3
    move-exception p2

    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :try_start_8
    throw p2

    :cond_b
    :goto_1
    array-length v0, p2

    const/16 v6, 0x9

    if-ne v0, v6, :cond_11

    const-string v0, "add"

    aget-object v6, p2, v2

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    const-string p2, "cmd should like: dumpsys display opbacklight add LEVEL DEC INC IN OUT DELAY INDEX"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return v2

    :cond_c
    aget-object v0, p2, v1

    aget-object v1, p2, v3

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v6

    aget-object v1, p2, v5

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    aget-object v1, p2, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v3, 0x6

    aget-object v3, p2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    const/4 v3, 0x7

    aget-object v3, p2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v11

    const/16 v3, 0x8

    aget-object p2, p2, v3

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    new-instance v12, Lcom/android/server/backlight/zta$zta;

    move-object v3, v12

    move-object v4, v0

    move-wide v5, v6

    move-wide v7, v8

    move v9, v1

    invoke-direct/range {v3 .. v11}, Lcom/android/server/backlight/zta$zta;-><init>(Ljava/lang/String;DDIII)V

    iget-object v1, p0, Lcom/android/server/backlight/OpBacklightManager;->Xz:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0

    :try_start_9
    iget-object v3, p0, Lcom/android/server/backlight/OpBacklightManager;->Xz:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v3, :cond_e

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_d

    const-string p2, "this first level item\'s index must be 0"

    :goto_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_d
    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p2, p0, Lcom/android/server/backlight/OpBacklightManager;->Xz:Ljava/util/HashMap;

    invoke-virtual {p2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_e
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v0, p2, :cond_f

    const-string p2, "error for index > level size!"

    goto :goto_2

    :cond_f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, p2, :cond_10

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_10
    invoke-virtual {v3, p2, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :goto_3
    monitor-exit v1

    return v2

    :catchall_4
    move-exception p2

    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_4

    :try_start_a
    throw p2
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_11
    invoke-direct {p0, p1}, Lcom/android/server/backlight/OpBacklightManager;->wtn(Ljava/io/PrintWriter;)V

    return v2

    :cond_12
    :goto_4
    return v1
.end method
