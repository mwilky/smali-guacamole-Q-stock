.class public Lcom/android/server/wallpaper/WallpaperManagerService;
.super Landroid/app/IWallpaperManager$Stub;
.source "WallpaperManagerService.java"

# interfaces
.implements Lcom/android/server/wallpaper/IWallpaperManagerService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;,
        Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;,
        Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;,
        Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;,
        Lcom/android/server/wallpaper/WallpaperManagerService$Lifecycle;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DEBUG_LIVE:Z = true

.field private static final MAX_BITMAP_SIZE:I = 0x6400000

.field private static final MAX_WALLPAPER_COMPONENT_LOG_LENGTH:I = 0x80

.field private static final MIN_WALLPAPER_CRASH_TIME:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "WallpaperManagerService"

.field static final WALLPAPER:Ljava/lang/String; = "wallpaper_orig"

.field static final WALLPAPER_CROP:Ljava/lang/String; = "wallpaper"

.field static final WALLPAPER_INFO:Ljava/lang/String; = "wallpaper_info.xml"

.field static final WALLPAPER_LOCK_CROP:Ljava/lang/String; = "wallpaper_lock"

.field static final WALLPAPER_LOCK_ORIG:Ljava/lang/String; = "wallpaper_lock_orig"

.field private static final sPerUserFiles:[Ljava/lang/String;


# instance fields
.field private final mAppOpsManager:Landroid/app/AppOpsManager;

.field private mCacheDefaultImageWallpaperColors:Landroid/app/WallpaperColors;

.field private final mColorsChangedListeners:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/SparseArray<",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private mCurrentUserId:I

.field private final mDefaultWallpaperComponent:Landroid/content/ComponentName;

.field private mDisplayDatas:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field private final mIPackageManager:Landroid/content/pm/IPackageManager;

.field private final mIWindowManager:Landroid/view/IWindowManager;

.field private final mImageWallpaper:Landroid/content/ComponentName;

.field private mInAmbientMode:Z

.field private mKeyguardListener:Landroid/app/IWallpaperManagerCallback;

.field private mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

.field private final mLock:Ljava/lang/Object;

.field private final mLockWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field private final mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

.field private mShuttingDown:Z

.field private final mUserRestorecon:Landroid/util/SparseBooleanArray;

.field private mWaitingForUnlock:Z

.field private mWallpaperId:I

.field private final mWallpaperMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;",
            ">;"
        }
    .end annotation
.end field

.field private final mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const-string/jumbo v0, "wallpaper_orig"

    const-string/jumbo v1, "wallpaper"

    const-string/jumbo v2, "wallpaper_lock_orig"

    const-string/jumbo v3, "wallpaper_lock"

    const-string/jumbo v4, "wallpaper_info.xml"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->sPerUserFiles:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Landroid/app/IWallpaperManager$Stub;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$1;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseBooleanArray;

    invoke-direct {v0}, Landroid/util/SparseBooleanArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mShuttingDown:Z

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040307

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-static {p1}, Landroid/app/WallpaperManager;->getDefaultWallpaperComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    nop

    const-string/jumbo v0, "window"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v1, "appops"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayListener:Landroid/hardware/display/DisplayManager$DisplayListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/hardware/display/DisplayManager;->registerDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;Landroid/os/Handler;)V

    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    invoke-direct {v0, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    const-class v0, Lcom/android/server/wallpaper/WallpaperManagerInternal;

    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;

    invoke-direct {v1, p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$LocalService;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$1;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$000(I)Ljava/io/File;
    .locals 1

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wallpaper/WallpaperManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    .locals 1

    invoke-direct/range {p0 .. p5}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->removeDisplayData(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/wallpaper/WallpaperManagerService;I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/view/IWindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mIWindowManager:Landroid/view/IWindowManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->supportsMultiDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/hardware/display/DisplayManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/wallpaper/WallpaperManagerService;)Lcom/android/server/wm/WindowManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->attachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/wallpaper/WallpaperManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/wallpaper/WallpaperManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mInAmbientMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/util/SparseArray;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/wallpaper/WallpaperManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mShuttingDown:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/server/wallpaper/WallpaperManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mShuttingDown:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/server/wallpaper/WallpaperManagerService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->onDisplayReadyInternal(I)V

    return-void
.end method

.method static synthetic access$3400()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/wallpaper/WallpaperManagerService;->sPerUserFiles:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/wallpaper/WallpaperManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyLockWallpaperChanged()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wallpaper/WallpaperManagerService;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/wallpaper/WallpaperManagerService;)Landroid/content/ComponentName;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    return-object v0
.end method

.method private attachServiceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 1

    new-instance v0, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$-BqUtvsdVGS3ye_UHe7qFnTZPn4;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$-BqUtvsdVGS3ye_UHe7qFnTZPn4;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    invoke-virtual {p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z
    .locals 19

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bindWallpaperComponentLocked: componentName="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "WallpaperManagerService"

    invoke-static {v4, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-nez p2, :cond_0

    invoke-direct {v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->changingToSame(Landroid/content/ComponentName;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v5

    if-eqz v5, :cond_0

    return v0

    :cond_0
    const/4 v5, 0x0

    if-nez v2, :cond_1

    :try_start_0
    iget-object v6, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mDefaultWallpaperComponent:Landroid/content/ComponentName;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v6

    if-nez v2, :cond_1

    :try_start_1
    iget-object v6, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    move-object v2, v6

    const-string v6, "No default component; using image wallpaper"

    invoke-static {v4, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v5, p5

    goto/16 :goto_3

    :cond_1
    :goto_0
    iget v6, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget-object v7, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/16 v8, 0x1080

    invoke-interface {v7, v2, v8, v6}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v7

    if-nez v7, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Attempted wallpaper "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " is unavailable"

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_2
    const-string v8, "android.permission.BIND_WALLPAPER"

    iget-object v9, v7, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Selected service does not have android.permission.BIND_WALLPAPER: "

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_3

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_3
    new-instance v8, Ljava/lang/SecurityException;

    invoke-direct {v8, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v8

    :cond_4
    const/4 v8, 0x0

    new-instance v9, Landroid/content/Intent;

    const-string v10, "android.service.wallpaper.WallpaperService"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_a

    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v2, v10}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_a

    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    iget-object v11, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    invoke-virtual {v9, v11}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v11

    const/16 v12, 0x80

    invoke-interface {v10, v9, v11, v12, v6}, Landroid/content/pm/IPackageManager;->queryIntentServices(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ParceledListSlice;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v10

    move v11, v5

    :goto_1
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_8

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/content/pm/ResolveInfo;

    iget-object v12, v12, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v13, v12, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    iget-object v14, v7, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    iget-object v13, v12, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v14, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    if-eqz v13, :cond_7

    :try_start_2
    new-instance v13, Landroid/app/WallpaperInfo;

    iget-object v14, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/content/pm/ResolveInfo;

    invoke-direct {v13, v14, v15}, Landroid/app/WallpaperInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v8, v13

    goto :goto_2

    :catch_1
    move-exception v0

    if-nez p3, :cond_5

    :try_start_3
    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return v5

    :cond_5
    new-instance v13, Ljava/lang/IllegalArgumentException;

    invoke-direct {v13, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    :catch_2
    move-exception v0

    if-nez p3, :cond_6

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    return v5

    :cond_6
    new-instance v13, Ljava/lang/IllegalArgumentException;

    invoke-direct {v13, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v13

    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_8
    :goto_2
    if-nez v8, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Selected service is not a wallpaper: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_9

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_9
    new-instance v11, Ljava/lang/SecurityException;

    invoke-direct {v11, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_a
    if-eqz v8, :cond_c

    invoke-virtual {v8}, Landroid/app/WallpaperInfo;->supportsAmbientMode()Z

    move-result v10

    if-eqz v10, :cond_c

    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const-string v11, "android.permission.AMBIENT_WALLPAPER"

    invoke-virtual {v8}, Landroid/app/WallpaperInfo;->getPackageName()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v11, v12, v6}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v10

    if-eqz v10, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Selected service does not have android.permission.AMBIENT_WALLPAPER: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_b

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_b
    new-instance v11, Ljava/lang/SecurityException;

    invoke-direct {v11, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v11

    :cond_c
    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v11

    const/high16 v12, 0x10000000

    iget v13, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-interface {v10, v11, v12, v13}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v10

    new-instance v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-direct {v11, v1, v8, v3, v10}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Landroid/app/WallpaperInfo;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    invoke-virtual {v9, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const-string v12, "android.intent.extra.client_label"

    const v13, 0x1040758

    invoke-virtual {v9, v12, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v12, "android.intent.extra.client_intent"

    iget-object v13, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    new-instance v15, Landroid/content/Intent;

    const-string v0, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v15, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v5, 0x1040129

    invoke-virtual {v0, v5}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x0

    new-instance v0, Landroid/os/UserHandle;

    invoke-direct {v0, v6}, Landroid/os/UserHandle;-><init>(I)V

    move-object/from16 v18, v0

    invoke-static/range {v13 .. v18}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {v9, v12, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const v5, 0x22001001

    new-instance v12, Landroid/os/UserHandle;

    invoke-direct {v12, v6}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v9, v11, v5, v12}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to bind service: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    if-nez p3, :cond_d

    invoke-static {v4, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return v4

    :cond_d
    new-instance v5, Ljava/lang/IllegalArgumentException;

    invoke-direct {v5, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_e
    invoke-static {v2}, Lcom/android/server/am/OpAppBootManagerInjector;->setCurrentWallpaperPackage(Landroid/content/ComponentName;)V

    iget v0, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget v5, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v0, v5, :cond_f

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-direct {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    :cond_f
    iput-object v2, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    iput-object v11, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_4

    move-object/from16 v5, p5

    :try_start_4
    iput-object v5, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    iget v0, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    iget v12, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v0, v12, :cond_10

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {v3, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    iput-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    :cond_10
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateFallbackConnection()V
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    nop

    const/4 v0, 0x1

    return v0

    :catch_3
    move-exception v0

    goto :goto_3

    :catch_4
    move-exception v0

    move-object/from16 v5, p5

    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Remote exception for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, "\n"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    if-nez p3, :cond_11

    invoke-static {v4, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    return v4

    :cond_11
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private changingToSame(Landroid/content/ComponentName;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .locals 2

    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_1

    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    if-nez p1, :cond_1

    return v1

    :cond_0
    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private checkPermission(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Access denied to process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", must have permission "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method private detachWallpaperLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 4

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    invoke-interface {v0, v1}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mReply:Landroid/os/IRemoteCallback;

    :cond_0
    :try_start_1
    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-interface {v0}, Landroid/service/wallpaper/IWallpaperService;->detach()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    goto :goto_1

    :catch_1
    move-exception v0

    const-string v2, "WallpaperManagerService"

    const-string v3, "Failed detaching wallpaper service "

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    sget-object v2, Lcom/android/server/wallpaper/-$$Lambda$havGP5uMdRgWQrLydPeIOu1qDGE;->INSTANCE:Lcom/android/server/wallpaper/-$$Lambda$havGP5uMdRgWQrLydPeIOu1qDGE;

    invoke-virtual {v0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iput-object v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->access$1600(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    iput-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-ne p1, v0, :cond_2

    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    :cond_2
    return-void
.end method

.method private static emptyCallbackList(Landroid/os/RemoteCallbackList;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/IInterface;",
            ">(",
            "Landroid/os/RemoteCallbackList<",
            "TT;>;)Z"
        }
    .end annotation

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .locals 5

    invoke-direct {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v0

    if-nez p2, :cond_1

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-gtz v1, :cond_1

    :cond_0
    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    iget v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    return-void
.end method

.method private ensureSaneWallpaperDisplaySize(Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;I)V
    .locals 2

    invoke-direct {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getMaximumSizeDimension(I)I

    move-result v0

    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    if-ge v1, v0, :cond_0

    iput v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    :cond_0
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    if-ge v1, v0, :cond_1

    iput v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    :cond_1
    return-void
.end method

.method private extractColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v3, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-eqz v3, :cond_0

    monitor-exit v2

    return-void

    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractDefaultImageWallpaperColors()Landroid/app/WallpaperColors;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iput-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_1
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_3
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-nez v3, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v3, 0x1

    :goto_1
    if-eqz v3, :cond_4

    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_2

    :cond_4
    if-eqz v3, :cond_5

    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v4

    if-nez v4, :cond_5

    invoke-virtual {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->sourceExists()Z

    move-result v4

    if-nez v4, :cond_5

    const/4 v1, 0x1

    :cond_5
    :goto_2
    iget v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    move v3, v4

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_7

    invoke-static {v4}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    move-result-object v2

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    goto :goto_3

    :cond_6
    if-eqz v1, :cond_7

    invoke-direct {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractDefaultImageWallpaperColors()Landroid/app/WallpaperColors;

    move-result-object v2

    move-object v4, v2

    goto :goto_4

    :cond_7
    :goto_3
    move-object v4, v2

    :goto_4
    if-nez v4, :cond_8

    const-string v2, "WallpaperManagerService"

    const-string v5, "Cannot extract colors because wallpaper could not be read."

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_8
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_4
    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    if-ne v2, v3, :cond_9

    iput-object v4, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    goto :goto_5

    :cond_9
    const-string v2, "WallpaperManagerService"

    const-string v6, "Not setting primary colors since wallpaper changed"

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    monitor-exit v5

    return-void

    :catchall_2
    move-exception v2

    monitor-exit v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v2

    :catchall_3
    move-exception v3

    :try_start_5
    monitor-exit v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    throw v3
.end method

.method private extractDefaultImageWallpaperColors()Landroid/app/WallpaperColors;
    .locals 5

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCacheDefaultImageWallpaperColors:Landroid/app/WallpaperColors;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCacheDefaultImageWallpaperColors:Landroid/app/WallpaperColors;

    monitor-exit v0

    return-object v1

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    const/4 v0, 0x0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/app/WallpaperManager;->openDefaultWallpaper(Landroid/content/Context;I)Ljava/io/InputStream;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x0

    if-nez v1, :cond_2

    :try_start_2
    const-string v3, "WallpaperManagerService"

    const-string v4, "Can\'t open default wallpaper stream"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    if-eqz v1, :cond_1

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :cond_1
    return-object v2

    :cond_2
    :try_start_4
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Landroid/app/WallpaperColors;->fromBitmap(Landroid/graphics/Bitmap;)Landroid/app/WallpaperColors;

    move-result-object v4

    move-object v0, v4

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_3
    :try_start_5
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/OutOfMemoryError; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_6
    throw v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_1
    move-exception v3

    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v4

    :try_start_8
    invoke-virtual {v2, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_4
    :goto_0
    throw v3
    :try_end_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_0

    :catch_0
    move-exception v1

    const-string v2, "WallpaperManagerService"

    const-string v3, "Can\'t close default wallpaper stream"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v1, v0

    goto :goto_2

    :catch_1
    move-exception v1

    const-string v2, "WallpaperManagerService"

    const-string v3, "Can\'t decode default wallpaper stream"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    move-object v1, v0

    :goto_2
    if-nez v1, :cond_5

    const-string v0, "WallpaperManagerService"

    const-string v2, "Extract default image wallpaper colors failed"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_9
    iput-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCacheDefaultImageWallpaperColors:Landroid/app/WallpaperColors;

    monitor-exit v2

    :goto_3
    return-object v1

    :catchall_3
    move-exception v0

    monitor-exit v2
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    throw v0

    :catchall_4
    move-exception v1

    :try_start_a
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    throw v1
.end method

.method private findWallpaperAtDisplay(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    return-object v0
.end method

.method private generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 24

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v3, 0x0

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v4

    new-instance v5, Landroid/graphics/Rect;

    iget-object v6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-direct {v5, v6}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    new-instance v6, Landroid/view/DisplayInfo;

    invoke-direct {v6}, Landroid/view/DisplayInfo;-><init>()V

    iget-object v7, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v7, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v7

    invoke-virtual {v7, v6}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    new-instance v7, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v7}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v8, 0x1

    iput-boolean v8, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    iget-object v9, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v9}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9, v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    iget v9, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const-string v10, "WallpaperManagerService"

    if-lez v9, :cond_12

    iget v9, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-gtz v9, :cond_0

    move/from16 v18, v3

    move-object/from16 v22, v4

    move-object/from16 v20, v6

    goto/16 :goto_c

    :cond_0
    const/4 v9, 0x0

    const/4 v11, 0x0

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v12

    if-eqz v12, :cond_1

    iput v0, v5, Landroid/graphics/Rect;->top:I

    iput v0, v5, Landroid/graphics/Rect;->left:I

    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v12, v5, Landroid/graphics/Rect;->right:I

    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v12, v5, Landroid/graphics/Rect;->bottom:I

    goto :goto_4

    :cond_1
    nop

    iget v12, v5, Landroid/graphics/Rect;->right:I

    iget v13, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le v12, v13, :cond_2

    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v13, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v12, v13

    goto :goto_0

    :cond_2
    move v12, v0

    :goto_0
    iget v13, v5, Landroid/graphics/Rect;->bottom:I

    iget v14, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v13, v14, :cond_3

    iget v13, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v14, v5, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v13, v14

    goto :goto_1

    :cond_3
    move v13, v0

    :goto_1
    invoke-virtual {v5, v12, v13}, Landroid/graphics/Rect;->offset(II)V

    iget v12, v5, Landroid/graphics/Rect;->left:I

    if-gez v12, :cond_4

    iput v0, v5, Landroid/graphics/Rect;->left:I

    :cond_4
    iget v12, v5, Landroid/graphics/Rect;->top:I

    if-gez v12, :cond_5

    iput v0, v5, Landroid/graphics/Rect;->top:I

    :cond_5
    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-gt v12, v13, :cond_7

    iget v12, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v13

    if-le v12, v13, :cond_6

    goto :goto_2

    :cond_6
    move v12, v0

    goto :goto_3

    :cond_7
    :goto_2
    move v12, v8

    :goto_3
    move v9, v12

    :goto_4
    iget v12, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v13

    if-ne v12, v13, :cond_9

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v13

    if-gt v12, v13, :cond_9

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v12

    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v13

    if-le v12, v13, :cond_8

    goto :goto_5

    :cond_8
    move v12, v0

    goto :goto_6

    :cond_9
    :goto_5
    move v12, v8

    :goto_6
    move v11, v12

    if-eqz v11, :cond_a

    iget v12, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    int-to-float v12, v12

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v13

    int-to-float v13, v13

    div-float/2addr v12, v13

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v12

    float-to-int v13, v13

    iget v14, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    if-ge v13, v14, :cond_a

    iget v14, v6, Landroid/view/DisplayInfo;->logicalHeight:I

    int-to-float v14, v14

    iget v15, v6, Landroid/view/DisplayInfo;->logicalWidth:I

    int-to-float v15, v15

    div-float/2addr v14, v15

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v14

    float-to-int v15, v15

    iput v15, v5, Landroid/graphics/Rect;->bottom:I

    const/4 v9, 0x1

    :cond_a
    if-nez v9, :cond_d

    if-nez v11, :cond_d

    iget v0, v7, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v8, v7, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    mul-int/2addr v0, v8

    mul-int/lit8 v0, v0, 0x4

    int-to-long v12, v0

    const-wide/32 v14, 0x6400000

    cmp-long v0, v12, v14

    if-gez v0, :cond_b

    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    iget-object v8, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-static {v0, v8}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    move-result v3

    :cond_b
    if-nez v3, :cond_c

    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_c
    move-object/from16 v22, v4

    move-object/from16 v20, v6

    goto/16 :goto_d

    :cond_d
    const/4 v12, 0x0

    const/4 v13, 0x0

    :try_start_0
    iget-object v14, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v14}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v14

    invoke-static {v14, v0}, Landroid/graphics/BitmapRegionDecoder;->newInstance(Ljava/lang/String;Z)Landroid/graphics/BitmapRegionDecoder;

    move-result-object v14

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v15

    iget v8, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    div-int/2addr v15, v8

    move v8, v15

    const/4 v15, 0x1

    :goto_7
    mul-int/lit8 v0, v15, 0x2

    if-gt v0, v8, :cond_e

    mul-int/lit8 v15, v15, 0x2

    const/4 v0, 0x0

    goto :goto_7

    :cond_e
    iput v15, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    const/4 v0, 0x0

    iput-boolean v0, v7, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iget v1, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v1, v1

    const/high16 v17, 0x3f800000    # 1.0f

    div-float v1, v17, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->scale(F)V

    iget v1, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    int-to-float v1, v1

    move/from16 v18, v3

    :try_start_1
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v1, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    move/from16 v19, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    move-object/from16 v20, v6

    :try_start_2
    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v6

    if-le v3, v6, :cond_f

    iget v6, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    int-to-float v6, v6

    div-float/2addr v6, v1

    float-to-int v6, v6

    move/from16 v21, v3

    iget v3, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual {v0, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v22, v4

    :try_start_3
    iget v4, v0, Landroid/graphics/Rect;->left:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v23

    sub-int v23, v23, v3

    div-int/lit8 v23, v23, 0x2

    add-int v4, v4, v23

    iput v4, v0, Landroid/graphics/Rect;->left:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v23

    sub-int v23, v23, v6

    div-int/lit8 v23, v23, 0x2

    add-int v4, v4, v23

    iput v4, v0, Landroid/graphics/Rect;->top:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v3

    iput v4, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v6

    iput v4, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v5, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget v4, v7, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    int-to-float v4, v4

    div-float v4, v17, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Rect;->scale(F)V

    goto :goto_8

    :cond_f
    move/from16 v21, v3

    move-object/from16 v22, v4

    :goto_8
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v1

    float-to-int v3, v3

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v4, v1

    float-to-int v4, v4

    invoke-virtual {v14, v5, v7}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v14}, Landroid/graphics/BitmapRegionDecoder;->recycle()V

    if-nez v6, :cond_10

    move-object/from16 v17, v0

    const-string v0, "Could not decode new wallpaper"

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v3, v18

    goto :goto_9

    :cond_10
    move-object/from16 v17, v0

    const/4 v0, 0x1

    invoke-static {v6, v4, v3, v0}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    move/from16 v16, v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getByteCount()I

    move-result v1

    move/from16 v23, v3

    const/high16 v3, 0x6400000

    if-gt v1, v3, :cond_11

    new-instance v1, Ljava/io/FileOutputStream;

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-direct {v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v12, v1

    new-instance v1, Ljava/io/BufferedOutputStream;

    const v3, 0x8000

    invoke-direct {v1, v12, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    move-object v13, v1

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {v0, v1, v3, v13}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v13}, Ljava/io/BufferedOutputStream;->flush()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 v3, 0x1

    :goto_9
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_d

    :cond_11
    :try_start_4
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v3, "Too large bitmap, limit=104857600"

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :catchall_0
    move-exception v0

    goto :goto_a

    :catch_0
    move-exception v0

    goto :goto_b

    :catchall_1
    move-exception v0

    move-object/from16 v22, v4

    goto :goto_a

    :catch_1
    move-exception v0

    move-object/from16 v22, v4

    goto :goto_b

    :catchall_2
    move-exception v0

    move-object/from16 v22, v4

    move-object/from16 v20, v6

    goto :goto_a

    :catch_2
    move-exception v0

    move-object/from16 v22, v4

    move-object/from16 v20, v6

    goto :goto_b

    :catchall_3
    move-exception v0

    move/from16 v18, v3

    move-object/from16 v22, v4

    move-object/from16 v20, v6

    :goto_a
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :catch_3
    move-exception v0

    move/from16 v18, v3

    move-object/from16 v22, v4

    move-object/from16 v20, v6

    :goto_b
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v12}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    move/from16 v3, v18

    goto :goto_d

    :cond_12
    move/from16 v18, v3

    move-object/from16 v22, v4

    move-object/from16 v20, v6

    :goto_c
    const-string v0, "Invalid wallpaper data"

    invoke-static {v10, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    :goto_d
    if-nez v3, :cond_13

    const-string v0, "Unable to apply new wallpaper"

    invoke-static {v10, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_13
    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-static {v0}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    :cond_14
    return-void
.end method

.method private getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I
    .locals 2

    const/4 v0, 0x0

    invoke-interface {p1, v0, p2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return p3

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;
    .locals 2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    invoke-direct {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;-><init>(I)V

    move-object v0, v1

    invoke-direct {p0, v0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperDisplaySize(Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;I)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    :cond_0
    return-object v0
.end method

.method private getMaximumSizeDimension(I)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid displayId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x4

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WallpaperManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getMaximumSizeDimension()I

    move-result v1

    return v1
.end method

.method private getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IWallpaperManagerCallback;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/os/RemoteCallbackList;

    :cond_0
    return-object v0
.end method

.method private static getWallpaperDir(I)Ljava/io/File;
    .locals 1

    invoke-static {p0}, Landroid/os/Environment;->getUserSystemDirectory(I)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;
    .locals 6

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    :goto_0
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-nez v2, :cond_2

    const/4 v3, 0x0

    invoke-direct {p0, p1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-nez v2, :cond_2

    if-ne p2, v0, :cond_1

    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string/jumbo v4, "wallpaper_lock_orig"

    const-string/jumbo v5, "wallpaper_lock"

    invoke-direct {v0, p1, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    goto :goto_1

    :cond_1
    const-string v0, "WallpaperManagerService"

    const-string v4, "Didn\'t find wallpaper in non-lock case!"

    invoke-static {v0, v4}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string/jumbo v4, "wallpaper_orig"

    const-string/jumbo v5, "wallpaper"

    invoke-direct {v0, p1, v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v2, v0

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-direct {p0, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    :cond_2
    :goto_1
    return-object v2
.end method

.method private initializeFallbackWallpaper()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const/4 v1, 0x0

    const-string/jumbo v2, "wallpaper_orig"

    const-string/jumbo v3, "wallpaper"

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iput-boolean v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v1

    iput v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const/4 v7, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    :cond_0
    return-void
.end method

.method private isValidDisplay(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$attachServiceLocked$6(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .locals 0

    invoke-virtual {p2, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    return-void
.end method

.method static synthetic lambda$dump$7(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;)V
    .locals 1

    const-string v0, "  displayId="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mDisplayId:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mWidth="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, "  mHeight="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "  mPadding="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$dump$8(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .locals 1

    const-string v0, "     mDisplayId="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "     mToken="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mToken:Landroid/os/Binder;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "     mEngine="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$dump$9(Ljava/io/PrintWriter;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .locals 1

    const-string v0, "     mDisplayId="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(I)V

    const-string v0, "     mToken="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mToken:Landroid/os/Binder;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v0, "     mEngine="

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$updateFallbackConnection$1(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->disconnectLocked()V

    :cond_0
    return-void
.end method

.method static synthetic lambda$updateFallbackConnection$2(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/view/Display;)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->access$3600(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Landroid/view/Display;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/Display;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->containsDisplay(I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private loadSettingsLocked(IZ)V
    .locals 19

    move-object/from16 v1, p0

    move/from16 v2, p1

    const-string v3, " "

    const-string v4, "failed parsing "

    invoke-static/range {p1 .. p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5}, Lcom/android/internal/util/JournaledFile;->chooseForRead()Ljava/io/File;

    move-result-object v7

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const/4 v8, 0x1

    const-string v9, "WallpaperManagerService"

    if-nez v0, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateFromOld()V

    new-instance v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string/jumbo v11, "wallpaper_orig"

    const-string/jumbo v12, "wallpaper"

    invoke-direct {v10, v2, v11, v12}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v0, v10

    iput-boolean v8, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    iget-object v10, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v10, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v10

    if-nez v10, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->sourceExists()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-direct {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_0

    :cond_0
    const-string v10, "No static wallpaper imagery; defaults will be shown"

    invoke-static {v9, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->initializeFallbackWallpaper()V

    move-object v10, v0

    goto :goto_1

    :cond_2
    move-object v10, v0

    :goto_1
    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-direct {v1, v12}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v13

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_23
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_22
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_21
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_20
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1f
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_1e

    move-object v6, v0

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v0

    sget-object v14, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v14}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v0, v6, v14}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    :goto_2
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v14

    const/4 v15, 0x2

    if-ne v14, v15, :cond_8

    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v8, "wp"

    invoke-virtual {v8, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1d
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1b
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1a
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_19
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_18

    if-eqz v8, :cond_5

    move/from16 v8, p2

    :try_start_2
    invoke-direct {v1, v0, v10, v8}, Lcom/android/server/wallpaper/WallpaperManagerService;->parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V

    const-string v12, "component"
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_11
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_10
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_f
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_e
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_d
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_c

    move-object/from16 v16, v5

    const/4 v5, 0x0

    :try_start_3
    invoke-interface {v0, v5, v12}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_8
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_6

    if-eqz v12, :cond_3

    :try_start_4
    invoke-static {v12}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_3

    :catch_0
    move-exception v0

    goto/16 :goto_e

    :catch_1
    move-exception v0

    goto/16 :goto_f

    :catch_2
    move-exception v0

    goto/16 :goto_10

    :catch_3
    move-exception v0

    goto/16 :goto_11

    :catch_4
    move-exception v0

    goto/16 :goto_12

    :catch_5
    move-exception v0

    goto/16 :goto_13

    :cond_3
    nop

    :goto_3
    :try_start_5
    iput-object v5, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    iget-object v5, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v5, :cond_4

    const-string v5, "android"
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_a
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_9
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_6

    move-object/from16 v17, v6

    :try_start_6
    iget-object v6, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    goto :goto_4

    :cond_4
    move-object/from16 v17, v6

    :goto_4
    iget-object v5, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iput-object v5, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    goto/16 :goto_6

    :catch_6
    move-exception v0

    move-object/from16 v17, v6

    goto/16 :goto_e

    :catch_7
    move-exception v0

    move-object/from16 v17, v6

    goto/16 :goto_f

    :catch_8
    move-exception v0

    move-object/from16 v17, v6

    goto/16 :goto_10

    :catch_9
    move-exception v0

    move-object/from16 v17, v6

    goto/16 :goto_11

    :catch_a
    move-exception v0

    move-object/from16 v17, v6

    goto/16 :goto_12

    :catch_b
    move-exception v0

    move-object/from16 v17, v6

    goto/16 :goto_13

    :catch_c
    move-exception v0

    goto/16 :goto_8

    :catch_d
    move-exception v0

    goto/16 :goto_9

    :catch_e
    move-exception v0

    goto/16 :goto_a

    :catch_f
    move-exception v0

    goto/16 :goto_b

    :catch_10
    move-exception v0

    goto/16 :goto_c

    :catch_11
    move-exception v0

    goto/16 :goto_d

    :cond_5
    move/from16 v8, p2

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    const-string/jumbo v5, "kwp"

    invoke-virtual {v5, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-nez v5, :cond_6

    new-instance v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string/jumbo v12, "wallpaper_lock_orig"

    move-object/from16 v18, v5

    const-string/jumbo v5, "wallpaper_lock"

    invoke-direct {v6, v2, v12, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v5, v6

    iget-object v6, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v6, v2, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_5

    :cond_6
    move-object/from16 v18, v5

    :goto_5
    const/4 v6, 0x0

    invoke-direct {v1, v0, v5, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V
    :try_end_6
    .catch Ljava/io/FileNotFoundException; {:try_start_6 .. :try_end_6} :catch_17
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_16
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_15
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_14
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_13
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_12

    goto :goto_7

    :cond_7
    :goto_6
    goto :goto_7

    :catch_12
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_e

    :catch_13
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_f

    :catch_14
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_10

    :catch_15
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_11

    :catch_16
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_12

    :catch_17
    move-exception v0

    move-object/from16 v6, v17

    goto/16 :goto_13

    :cond_8
    move/from16 v8, p2

    move-object/from16 v16, v5

    move-object/from16 v17, v6

    :goto_7
    const/4 v5, 0x1

    if-ne v14, v5, :cond_9

    const/4 v11, 0x1

    move-object/from16 v6, v17

    goto/16 :goto_15

    :cond_9
    move v8, v5

    move-object/from16 v5, v16

    move-object/from16 v6, v17

    const/4 v12, 0x0

    goto/16 :goto_2

    :catch_18
    move-exception v0

    move/from16 v8, p2

    :goto_8
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    goto :goto_e

    :catch_19
    move-exception v0

    move/from16 v8, p2

    :goto_9
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    goto :goto_f

    :catch_1a
    move-exception v0

    move/from16 v8, p2

    :goto_a
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    goto :goto_10

    :catch_1b
    move-exception v0

    move/from16 v8, p2

    :goto_b
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    goto/16 :goto_11

    :catch_1c
    move-exception v0

    move/from16 v8, p2

    :goto_c
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    goto/16 :goto_12

    :catch_1d
    move-exception v0

    move/from16 v8, p2

    :goto_d
    move-object/from16 v16, v5

    move-object/from16 v17, v6

    goto/16 :goto_13

    :catch_1e
    move-exception v0

    move/from16 v8, p2

    move-object/from16 v16, v5

    :goto_e
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    :catch_1f
    move-exception v0

    move/from16 v8, p2

    move-object/from16 v16, v5

    :goto_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :catch_20
    move-exception v0

    move/from16 v8, p2

    move-object/from16 v16, v5

    :goto_10
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :catch_21
    move-exception v0

    move/from16 v8, p2

    move-object/from16 v16, v5

    :goto_11
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :catch_22
    move-exception v0

    move/from16 v8, p2

    move-object/from16 v16, v5

    :goto_12
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_14

    :catch_23
    move-exception v0

    move/from16 v8, p2

    move-object/from16 v16, v5

    :goto_13
    const-string/jumbo v3, "no current wallpaper -- first boot?"

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_14
    nop

    :goto_15
    invoke-static {v6}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-nez v11, :cond_a

    iget-object v0, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, v13, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v3, v3, v3}, Landroid/graphics/Rect;->set(IIII)V

    const-string v0, ""

    iput-object v0, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_16

    :cond_a
    iget v0, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    if-gtz v0, :cond_b

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v0

    iput v0, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    :cond_b
    :goto_16
    const/4 v3, 0x0

    invoke-direct {v1, v13, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperDisplaySize(Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;I)V

    invoke-direct {v1, v10, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v0, :cond_c

    invoke-direct {v1, v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    :cond_c
    return-void
.end method

.method private static makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;
    .locals 6

    new-instance v0, Ljava/io/File;

    invoke-static {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v2, "wallpaper_info.xml"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/internal/util/JournaledFile;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ".tmp"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2, v3}, Lcom/android/internal/util/JournaledFile;-><init>(Ljava/io/File;Ljava/io/File;)V

    return-object v1
.end method

.method private migrateFromOld()V
    .locals 7

    new-instance v0, Ljava/io/File;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "wallpaper"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/com.android.settings/files/wallpaper"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/File;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v4

    const-string/jumbo v5, "wallpaper_orig"

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {v0, v3}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Ljava/io/File;

    const-string v5, "/data/system/wallpaper_info.xml"

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_1

    new-instance v5, Ljava/io/File;

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    const-string/jumbo v6, "wallpaper_info.xml"

    invoke-direct {v5, v1, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    move-object v1, v5

    invoke-virtual {v4, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_1
    invoke-static {v2, v0}, Landroid/os/FileUtils;->copyFile(Ljava/io/File;Ljava/io/File;)Z

    invoke-virtual {v2, v3}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_2
    :goto_0
    return-void
.end method

.method private migrateSystemToLockWallpaperLocked(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string/jumbo v2, "wallpaper_lock_orig"

    const-string/jumbo v3, "wallpaper_lock"

    invoke-direct {v1, p1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    iput v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iget-boolean v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    iput-boolean v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    iput-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    :try_start_0
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/system/Os;->rename(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/system/ErrnoException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t migrate system wallpaper: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/system/ErrnoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "WallpaperManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    iget-object v3, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z

    return-void
.end method

.method private notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 5

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$3500(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$3500(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v2}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$3500(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.WALLPAPER_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/UserHandle;

    iget v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-direct {v3, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v2, v1, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method

.method private notifyColorListeners(Landroid/app/WallpaperColors;III)V
    .locals 8

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    nop

    :try_start_0
    invoke-direct {p0, p3, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v2

    const/4 v3, -0x1

    invoke-direct {p0, v3, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_0

    invoke-virtual {v2, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/app/IWallpaperManagerCallback;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_1
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v5

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    invoke-virtual {v3, v6}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v7

    check-cast v7, Landroid/app/IWallpaperManagerCallback;

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_4

    :try_start_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/IWallpaperManagerCallback;

    invoke-interface {v3, p1, p2, p3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    if-eqz v4, :cond_5

    if-nez p4, :cond_5

    :try_start_2
    invoke-interface {v4, p1, p2, p3}, Landroid/app/IWallpaperManagerCallback;->onWallpaperColorsChanged(Landroid/app/WallpaperColors;II)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v2

    :cond_5
    :goto_4
    return-void

    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v2
.end method

.method private notifyLockWallpaperChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :cond_0
    :goto_0
    return-void
.end method

.method private notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V
    .locals 2

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    new-instance v1, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$la7x4YHA-l88Cd6HFTscnLBbKfI;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$la7x4YHA-l88Cd6HFTscnLBbKfI;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    invoke-virtual {v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V

    :goto_0
    return-void
.end method

.method private notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-direct {p0, v1, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v1

    const/4 v2, -0x1

    invoke-direct {p0, v2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperCallbacks(II)Landroid/os/RemoteCallbackList;

    move-result-object v2

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->emptyCallbackList(Landroid/os/RemoteCallbackList;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->emptyCallbackList(Landroid/os/RemoteCallbackList;)Z

    move-result v3

    if-eqz v3, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v3, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-nez v3, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    move v1, v3

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-direct {p0, v0, p2, v2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyColorListeners(Landroid/app/WallpaperColors;III)V

    if-eqz v1, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iget-object v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-nez v2, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    iget v2, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-direct {p0, v0, p2, v2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyColorListeners(Landroid/app/WallpaperColors;III)V

    goto :goto_1

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2

    :cond_3
    :goto_1
    return-void

    :catchall_1
    move-exception v1

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v1
.end method

.method private onDisplayReadyInternal(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->supportsMultiDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    monitor-exit v0

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v1, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object v1

    if-nez v1, :cond_3

    monitor-exit v0

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_0

    :cond_4
    const-string v1, "WallpaperManagerService"

    const-string v2, "No wallpaper can be added to the new display"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private parseWallpaperAttributes(Lorg/xmlpull/v1/XmlPullParser;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Z)V
    .locals 11

    const/4 v0, 0x0

    const-string v1, "id"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    iget v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    if-le v2, v3, :cond_0

    iput v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    :cond_0
    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v2

    iput v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    :goto_0
    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v3

    if-nez p3, :cond_2

    const-string/jumbo v4, "width"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    const-string v4, "height"

    invoke-interface {p1, v0, v4}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iput v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    :cond_2
    iget-object v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v5, "cropLeft"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v5, "cropTop"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget-object v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v5, "cropRight"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    const-string v5, "cropBottom"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    const-string/jumbo v5, "paddingLeft"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->left:I

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    const-string/jumbo v5, "paddingTop"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->top:I

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    const-string/jumbo v5, "paddingRight"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->right:I

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    const-string/jumbo v5, "paddingBottom"

    invoke-direct {p0, p1, v5, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v5

    iput v5, v4, Landroid/graphics/Rect;->bottom:I

    const-string v4, "colorsCount"

    invoke-direct {p0, p1, v4, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v4

    if-lez v4, :cond_6

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_1
    if-ge v8, v4, :cond_5

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "colorValue"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {p0, p1, v9, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v9

    invoke-static {v9}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v9

    if-nez v8, :cond_3

    move-object v5, v9

    goto :goto_2

    :cond_3
    const/4 v10, 0x1

    if-ne v8, v10, :cond_4

    move-object v6, v9

    goto :goto_2

    :cond_4
    const/4 v10, 0x2

    if-ne v8, v10, :cond_5

    move-object v7, v9

    :goto_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_5
    const-string v8, "colorHints"

    invoke-direct {p0, p1, v8, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getAttributeInt(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;I)I

    move-result v2

    new-instance v8, Landroid/app/WallpaperColors;

    invoke-direct {v8, v5, v6, v7, v2}, Landroid/app/WallpaperColors;-><init>(Landroid/graphics/Color;Landroid/graphics/Color;Landroid/graphics/Color;I)V

    iput-object v8, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    :cond_6
    const-string/jumbo v2, "name"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    const-string v2, "backup"

    invoke-interface {p1, v0, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "true"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    return-void
.end method

.method private removeDisplayData(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method private restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z
    .locals 18

    move-object/from16 v1, p1

    const-string v2, "WallpaperManagerService"

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x4

    const/4 v4, 0x0

    if-le v0, v3, :cond_f

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v5, "res:"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const/4 v0, 0x0

    const/16 v6, 0x3a

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v6

    if-lez v6, :cond_0

    invoke-virtual {v5, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v7, v0

    goto :goto_0

    :cond_0
    move-object v7, v0

    :goto_0
    const/4 v0, 0x0

    const/16 v8, 0x2f

    invoke-virtual {v5, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v8

    if-lez v8, :cond_1

    add-int/lit8 v9, v8, 0x1

    invoke-virtual {v5, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v9, v0

    goto :goto_1

    :cond_1
    move-object v9, v0

    :goto_1
    const/4 v0, 0x0

    const/4 v10, 0x1

    if-lez v6, :cond_2

    if-lez v8, :cond_2

    sub-int v11, v8, v6

    if-le v11, v10, :cond_2

    add-int/lit8 v11, v6, 0x1

    invoke-virtual {v5, v11, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    move-object v11, v0

    goto :goto_2

    :cond_2
    move-object v11, v0

    :goto_2
    if-eqz v7, :cond_e

    if-eqz v9, :cond_e

    if-eqz v11, :cond_e

    const/4 v12, -0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    move-object/from16 v10, p0

    :try_start_0
    iget-object v0, v10, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v5, v4, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    move v12, v4

    if-nez v12, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v0

    const-string v0, "couldn\'t resolve identifier pkg="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " type="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " ident="

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v14, :cond_3

    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    :cond_3
    if-eqz v15, :cond_4

    invoke-static {v15}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    :cond_4
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v2, 0x0

    return v2

    :cond_5
    move-object/from16 v16, v0

    :try_start_1
    invoke-virtual {v3, v12}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v0

    move-object v13, v0

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_6
    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v14, v0

    new-instance v0, Ljava/io/FileOutputStream;

    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-direct {v0, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v15, v0

    const v0, 0x8000

    new-array v0, v0, [B

    :goto_3
    invoke-virtual {v13, v0}, Ljava/io/InputStream;->read([B)I

    move-result v4

    move/from16 v17, v4

    if-lez v4, :cond_7

    move/from16 v4, v17

    const/4 v1, 0x0

    invoke-virtual {v14, v0, v1, v4}, Ljava/io/FileOutputStream;->write([BII)V

    invoke-virtual {v15, v0, v1, v4}, Ljava/io/FileOutputStream;->write([BII)V

    move-object/from16 v1, p1

    goto :goto_3

    :cond_7
    move/from16 v4, v17

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v17, v0

    const-string v0, "Restored wallpaper: "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    nop

    invoke-static {v15}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_2
    const-string v1, "IOException while restoring wallpaper "

    invoke-static {v2, v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    nop

    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v14, :cond_8

    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    :cond_8
    if-eqz v15, :cond_9

    :goto_4
    invoke-static {v15}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    :cond_9
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    goto :goto_6

    :catch_1
    move-exception v0

    :try_start_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Resource not found: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v14, :cond_a

    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    :cond_a
    if-eqz v15, :cond_9

    goto :goto_4

    :catch_2
    move-exception v0

    :try_start_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Package name "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " not found"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    nop

    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v14, :cond_b

    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    :cond_b
    if-eqz v15, :cond_9

    goto :goto_4

    :goto_5
    invoke-static {v13}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    if-eqz v14, :cond_c

    invoke-static {v14}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    :cond_c
    if-eqz v15, :cond_d

    invoke-static {v15}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    :cond_d
    invoke-static {v14}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-static {v15}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v0

    :cond_e
    move-object/from16 v10, p0

    goto :goto_6

    :cond_f
    move-object/from16 v10, p0

    :goto_6
    const/4 v1, 0x0

    return v1
.end method

.method private saveSettingsLocked(I)V
    .locals 7

    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeJournaledFile(I)Lcom/android/internal/util/JournaledFile;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Lcom/android/internal/util/FastXmlSerializer;

    invoke-direct {v3}, Lcom/android/internal/util/FastXmlSerializer;-><init>()V

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->chooseForWrite()Ljava/io/File;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    move-object v1, v4

    new-instance v4, Ljava/io/BufferedOutputStream;

    invoke-direct {v4, v1}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v4

    sget-object v4, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v4}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v4, :cond_0

    const-string/jumbo v5, "wp"

    invoke-direct {p0, v3, v5, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeWallpaperAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    :cond_0
    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v5, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v4, v5

    if-eqz v4, :cond_1

    const-string/jumbo v5, "kwp"

    invoke-direct {p0, v3, v5, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->writeWallpaperAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    :cond_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->flush()V

    invoke-static {v1}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->commit()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-static {v2}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    invoke-virtual {v0}, Lcom/android/internal/util/JournaledFile;->rollback()V

    :goto_0
    return-void
.end method

.method private setWallpaperComponent(Landroid/content/ComponentName;I)V
    .locals 13

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "changing live wallpaper"

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    const-string v0, "android.permission.SET_WALLPAPER_COMPONENT"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v3, :cond_5

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    move-wide v10, v4

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateSystemToLockWallpaperLocked(I)V

    :cond_0
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v4, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    const/4 v4, 0x0

    :try_start_1
    iput-boolean v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    invoke-direct {p0, p1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->changingToSame(Landroid/content/ComponentName;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v4

    move v12, v4

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v9, 0x0

    move-object v4, p0

    move-object v5, p1

    move-object v8, v3

    invoke-direct/range {v4 .. v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-nez v12, :cond_2

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v4

    iput v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    :cond_3
    :try_start_2
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_4

    invoke-direct {p0, v3, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const/4 v4, 0x1

    invoke-direct {p0, v2, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    :cond_4
    return-void

    :catchall_0
    move-exception v4

    :try_start_3
    invoke-static {v10, v11}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    :cond_5
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Wallpaper not yet initialized for user "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    :catchall_1
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3
.end method

.method private supportsMultiDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v1}, Landroid/app/WallpaperInfo;->supportsMultipleDisplays()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0

    :cond_2
    return v0
.end method

.method private updateFallbackConnection()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLastWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v0, :cond_4

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-nez v1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-nez v1, :cond_1

    const-string v2, "WallpaperManagerService"

    const-string v3, "Fallback wallpaper connection has not been created yet!!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->supportsMultiDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->access$1600(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-eqz v2, :cond_3

    sget-object v2, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$pVmree9DyIpBSg0s3RDK3MDesvs;->INSTANCE:Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$pVmree9DyIpBSg0s3RDK3MDesvs;

    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->access$1600(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)Landroid/util/SparseArray;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    goto :goto_0

    :cond_2
    new-instance v2, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$SxaUJpgTTfzUoz6u3AWuAOQdoNw;

    invoke-direct {v2, v1}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$SxaUJpgTTfzUoz6u3AWuAOQdoNw;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    invoke-static {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->access$1700(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Ljava/util/function/Predicate;)V

    new-instance v2, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$tRb4SPHGj0pcxb3p7arcqKFqs08;

    invoke-direct {v2, p0, v1}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$tRb4SPHGj0pcxb3p7arcqKFqs08;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private writeWallpaperAttributes(Lorg/xmlpull/v1/XmlSerializer;Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "width"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "height"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cropLeft"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cropTop"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cropRight"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "cropBottom"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "paddingLeft"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_0
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "paddingTop"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_1
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "paddingRight"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_2
    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "paddingBottom"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_3
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-eqz v2, :cond_5

    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v2}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "colorsCount"

    invoke-interface {p1, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    if-lez v2, :cond_4

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    iget-object v4, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v4}, Landroid/app/WallpaperColors;->getMainColors()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/graphics/Color;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "colorValue"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Landroid/graphics/Color;->toArgb()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v1, v5, v6}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    iget-object v3, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    invoke-virtual {v3}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "colorHints"

    invoke-interface {p1, v1, v4, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_5
    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    const-string/jumbo v3, "name"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v2, :cond_6

    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    iget-object v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "component"

    invoke-interface {p1, v1, v3, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_6
    iget-boolean v2, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    if-eqz v2, :cond_7

    const-string v2, "backup"

    const-string/jumbo v3, "true"

    invoke-interface {p1, v1, v2, v3}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    :cond_7
    invoke-interface {p1, v1, p2}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    return-void
.end method


# virtual methods
.method public clearWallpaper(Ljava/lang/String;II)V
    .locals 8

    const-string v0, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    const-string v6, "clearWallpaper"

    move v3, p3

    invoke-static/range {v1 .. v7}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    const/4 p3, 0x0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p0, v2, p2, v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object p3, v2

    :cond_1
    const/4 v2, 0x1

    if-eq p2, v2, :cond_2

    if-nez p3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object p3, v3

    :cond_3
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p3, :cond_4

    invoke-direct {p0, p3, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-direct {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    :cond_4
    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_5
    :goto_0
    return-void
.end method

.method clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V
    .locals 16

    move-object/from16 v7, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p4

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq v8, v1, :cond_1

    if-ne v8, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify exactly one kind of wallpaper to clear"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    const/4 v1, 0x0

    const/4 v2, 0x0

    if-ne v8, v0, :cond_3

    iget-object v3, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-nez v1, :cond_2

    return-void

    :cond_2
    move-object v11, v1

    goto :goto_1

    :cond_3
    iget-object v3, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-nez v1, :cond_4

    invoke-direct {v7, v9, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    iget-object v3, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v11, v1

    goto :goto_1

    :cond_4
    move-object v11, v1

    :goto_1
    if-nez v11, :cond_5

    return-void

    :cond_5
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    :try_start_0
    iget-object v1, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    iget-object v1, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    if-ne v8, v0, :cond_7

    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v0

    if-eqz v1, :cond_6

    :try_start_1
    invoke-interface {v1}, Landroid/app/IWallpaperManagerCallback;->onWallpaperChanged()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_2

    :catch_0
    move-exception v0

    :cond_6
    :goto_2
    :try_start_2
    invoke-direct {v7, v9}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_7
    const/4 v14, 0x0

    const/4 v15, 0x0

    :try_start_3
    iput-object v15, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    iput-boolean v2, v11, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    iget v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eq v9, v0, :cond_8

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_8
    if-eqz p1, :cond_9

    :try_start_4
    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    move-object v2, v0

    goto :goto_3

    :cond_9
    move-object v2, v15

    :goto_3
    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object/from16 v1, p0

    move-object v5, v11

    move-object/from16 v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v0, :cond_a

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :cond_a
    goto :goto_4

    :catch_1
    move-exception v0

    move-object v14, v0

    :goto_4
    :try_start_5
    const-string v0, "WallpaperManagerService"

    const-string v1, "Default wallpaper component not found!"

    invoke-static {v0, v1, v14}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    invoke-direct {v7, v11}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperComponentLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v10, :cond_b

    :try_start_6
    invoke-interface {v10, v15}, Landroid/os/IRemoteCallback;->sendResult(Landroid/os/Bundle;)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_5

    :catch_2
    move-exception v0

    :cond_b
    :goto_5
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v1, "WallpaperManagerService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "System wallpaper state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string v4, " User "

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(I)V

    const-string v4, ": id="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(I)V

    const-string v4, " Display state:"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v4, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$93YXv2Z9dcGnT0Vr4Zebgn1qyVM;

    invoke-direct {v4, p2}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$93YXv2Z9dcGnT0Vr4Zebgn1qyVM;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {p0, v4}, Lcom/android/server/wallpaper/WallpaperManagerService;->forEachDisplayData(Ljava/util/function/Consumer;)V

    const-string v4, "  mCropHint="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v4, "  mName="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v4, "  mAllowBackup="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Z)V

    const-string v4, "  mWallpaperComponent="

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v4, :cond_2

    iget-object v4, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    const-string v5, "  Wallpaper connection "

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v5, ":"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v5, :cond_1

    const-string v5, "    mInfo.component="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v5}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    new-instance v5, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$VUhQWq8Flr0dsQqeVHhHT8jU7qY;

    invoke-direct {v5, p2}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$VUhQWq8Flr0dsQqeVHhHT8jU7qY;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v4, v5}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    const-string v5, "    mService="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v5, "    mLastDiedTime="

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    sub-long/2addr v5, v7

    invoke-virtual {p2, v5, v6}, Ljava/io/PrintWriter;->println(J)V

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_3
    const-string v2, "Lock wallpaper state:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    nop

    :goto_1
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    const-string v3, " User "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(I)V

    const-string v3, ": id="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(I)V

    const-string v3, "  mCropHint="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v3, "  mName="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "  mAllowBackup="

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const-string v1, "Fallback wallpaper state:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, " User "

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, ": id="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(I)V

    const-string v1, "  mCropHint="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v1, "  mName="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  mAllowBackup="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-boolean v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    const-string v2, "  Fallback Wallpaper connection "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    const-string v2, ":"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v2, :cond_5

    const-string v2, "    mInfo.component="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_5
    new-instance v2, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$4phuz9MKBqoKfDMu8M8EBVJyI2I;

    invoke-direct {v2, p2}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$4phuz9MKBqoKfDMu8M8EBVJyI2I;-><init>(Ljava/io/PrintWriter;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->forEachDisplayConnector(Ljava/util/function/Consumer;)V

    const-string v2, "    mService="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    const-string v2, "    mLastDiedTime="

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-wide v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->lastDiedTime:J

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {p2, v2, v3}, Ljava/io/PrintWriter;->println(J)V

    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v2}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method forEachDisplayData(Ljava/util/function/Consumer;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mDisplayDatas:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getHeightHint(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isValidDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v2

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    monitor-exit v0

    return v3

    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find display with id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v1, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "getName() can only be called from the system process"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getWallpaper(Ljava/lang/String;Landroid/app/IWallpaperManagerCallback;ILandroid/os/Bundle;I)Landroid/os/ParcelFileDescriptor;
    .locals 17

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move/from16 v3, p3

    move-object/from16 v4, p4

    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string v5, "android.permission.READ_WALLPAPER_INTERNAL"

    invoke-virtual {v0, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v5

    const/4 v0, 0x1

    if-eqz v5, :cond_0

    iget-object v6, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-class v7, Landroid/os/storage/StorageManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/storage/StorageManager;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    move-object/from16 v9, p1

    invoke-virtual {v6, v0, v7, v8, v9}, Landroid/os/storage/StorageManager;->checkPermissionReadImages(ZIILjava/lang/String;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v9, p1

    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    const/4 v13, 0x0

    const/4 v14, 0x1

    const/16 v16, 0x0

    const-string v15, "getWallpaper"

    move/from16 v12, p5

    invoke-static/range {v10 .. v16}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x2

    if-eq v3, v0, :cond_2

    if-ne v3, v7, :cond_1

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v7, "Must specify exactly one kind of wallpaper to read"

    invoke-direct {v0, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    :goto_1
    iget-object v8, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v8

    if-ne v3, v7, :cond_3

    :try_start_0
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_2

    :cond_3
    iget-object v0, v1, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    :goto_2
    move-object v7, v0

    invoke-virtual {v7, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v10, v0

    const/4 v11, 0x0

    if-nez v10, :cond_4

    monitor-exit v8

    return-object v11

    :cond_4
    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v12, v0

    if-eqz v4, :cond_5

    :try_start_1
    const-string/jumbo v0, "width"

    iget v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    invoke-virtual {v4, v0, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "height"

    iget v13, v12, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    invoke-virtual {v4, v0, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_4

    :cond_5
    :goto_3
    if-eqz v2, :cond_6

    invoke-static {v10}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->access$3500(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    :cond_6
    iget-object v0, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v0, :cond_7

    :try_start_2
    monitor-exit v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-object v11

    :cond_7
    :try_start_3
    iget-object v0, v10, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropFile:Ljava/io/File;

    const/high16 v13, 0x10000000

    invoke-static {v0, v13}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    monitor-exit v8

    return-object v0

    :goto_4
    const-string v13, "WallpaperManagerService"

    const-string v14, "Error getting wallpaper"

    invoke-static {v13, v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    monitor-exit v8

    return-object v11

    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0
.end method

.method public getWallpaperColors(III)Landroid/app/WallpaperColors;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "which should be either FLAG_LOCK or FLAG_SYSTEM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v8, 0x0

    const-string v7, "getWallpaperColors"

    move v4, p2

    invoke-static/range {v2 .. v8}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    if-ne p1, v1, :cond_2

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v2, v1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_2
    :goto_1
    if-nez v2, :cond_3

    invoke-direct {p0, p2, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->findWallpaperAtDisplay(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    move-object v2, v1

    :cond_3
    if-nez v2, :cond_4

    const/4 v0, 0x0

    monitor-exit v3

    return-object v0

    :cond_4
    iget-object v1, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    if-nez v1, :cond_5

    goto :goto_2

    :cond_5
    const/4 v0, 0x0

    :goto_2
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_6

    invoke-direct {p0, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->extractColors(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    :cond_6
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_1
    iget-object v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;

    monitor-exit v1

    return-object v3

    :catchall_1
    move-exception v3

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v3

    :goto_3
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method public getWallpaperIdForUser(II)I
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "getWallpaperIdForUser"

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eq p1, v1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must specify exactly one kind of wallpaper"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    :goto_1
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v2, :cond_3

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    monitor-exit v1

    return v3

    :cond_3
    monitor-exit v1

    const/4 v1, -0x1

    return v1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getWallpaperInfo(I)Landroid/app/WallpaperInfo;
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "getWallpaperInfo"

    const/4 v6, 0x0

    move v2, p1

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    monitor-exit v0

    return-object v2

    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return-object v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getWidthHint(I)I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->isValidDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v2

    iget v3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    monitor-exit v0

    return v3

    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find display with id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasNamedWallpaper(Ljava/lang/String;)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "user"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/UserInfo;

    invoke-virtual {v5}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v7

    if-eqz v7, :cond_0

    goto :goto_0

    :cond_0
    iget-object v7, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-nez v7, :cond_1

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, v8, v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    iget-object v6, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v8, v5, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v7, v6

    :cond_1
    if-eqz v7, :cond_2

    iget-object v6, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    const/4 v4, 0x1

    monitor-exit v0

    return v4

    :cond_2
    goto :goto_0

    :cond_3
    monitor-exit v0

    return v6

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method initialize()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mMonitor:Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$MyPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->mkdirs()Z

    invoke-direct {p0, v0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    invoke-direct {p0, v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    return-void
.end method

.method public isSetWallpaperAllowed(Ljava/lang/String;)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v3, 0x0

    return v3

    :cond_0
    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-class v4, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v3, p1}, Landroid/app/admin/DevicePolicyManager;->isDeviceOwnerApp(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_2

    invoke-virtual {v3, p1}, Landroid/app/admin/DevicePolicyManager;->isProfileOwnerApp(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_0

    :cond_1
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "user"

    invoke-virtual {v4, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserManager;

    const-string/jumbo v6, "no_set_wallpaper"

    invoke-virtual {v4, v6}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v6

    xor-int/2addr v5, v6

    return v5

    :cond_2
    :goto_0
    return v5
.end method

.method public isWallpaperBackupEligible(II)Z
    .locals 2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    :goto_0
    nop

    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_2
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Only the system may call isWallpaperBackupEligible"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isWallpaperSupported(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/16 v2, 0x30

    invoke-virtual {v0, v2, v1, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public synthetic lambda$notifyWallpaperColorsChanged$0$WallpaperManagerService(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;ILcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .locals 1

    iget v0, p3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDisplayId:I

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChangedOnDisplay(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;II)V

    return-void
.end method

.method public synthetic lambda$switchUser$4$WallpaperManagerService(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    const/4 v1, 0x2

    invoke-direct {p0, p2, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-direct {p0, v1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyWallpaperColorsChanged(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    return-void
.end method

.method public synthetic lambda$switchUser$5$WallpaperManagerService(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/oneplus/wallpaper/OpWallpaperHelperInjector;->setupDefaultKeyguardWallpaper(Landroid/content/Context;I)V

    return-void
.end method

.method public synthetic lambda$updateFallbackConnection$3$WallpaperManagerService(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;)V
    .locals 1

    iget-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mFallbackWallpaper:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p2, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->connectLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    :cond_0
    return-void
.end method

.method makeWallpaperIdLocked()I
    .locals 1

    :goto_0
    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    iget v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperId:I

    if-eqz v0, :cond_0

    return v0

    :cond_0
    goto :goto_0
.end method

.method public onBootPhase(I)V
    .locals 2

    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->systemReady()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x258

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchUser(ILandroid/os/IRemoteCallback;)V

    :cond_1
    :goto_0
    return-void
.end method

.method onRemoveUser(I)V
    .locals 7

    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserversLocked(I)V

    sget-object v2, Lcom/android/server/wallpaper/WallpaperManagerService;->sPerUserFiles:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v2, v4

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    nop

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseBooleanArray;->delete(I)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public onUnlockUser(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_1

    iget-boolean v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWaitingForUnlock:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    nop

    invoke-direct {p0, p1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->get(I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mUserRestorecon:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseBooleanArray;->put(IZ)V

    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$5;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wallpaper/WallpaperManagerService$5;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string/jumbo v5, "registerWallpaperColorsCallback"

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-nez v1, :cond_0

    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    move-object v1, v2

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v2, p2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_0
    nop

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    if-nez v2, :cond_1

    new-instance v3, Landroid/os/RemoteCallbackList;

    invoke-direct {v3}, Landroid/os/RemoteCallbackList;-><init>()V

    move-object v2, v3

    invoke-virtual {v1, p3, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_1
    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    nop

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setDimensionHints(IILjava/lang/String;I)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    invoke-virtual {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {}, Lcom/android/server/wallpaper/GLHelper;->getMaxTextureSize()I

    move-result v0

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    if-lez p1, :cond_8

    if-lez p2, :cond_8

    invoke-direct {p0, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->isValidDisplay(I)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0, p4}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v4

    iget v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    if-ne p1, v5, :cond_1

    iget v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    if-eq p2, v5, :cond_6

    :cond_1
    iput p1, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mWidth:I

    iput p2, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mHeight:I

    if-nez p4, :cond_2

    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    :cond_2
    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-eq v5, v1, :cond_3

    monitor-exit v0

    return-void

    :cond_3
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v5, :cond_6

    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v5, p4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v6, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_4
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_5

    :try_start_1
    invoke-interface {v6, p1, p2}, Landroid/service/wallpaper/IWallpaperEngine;->setDesiredSize(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    :try_start_2
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_2

    :cond_5
    iget-object v7, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v7, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v7, :cond_6

    if-eqz v5, :cond_6

    iput-boolean v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mDimensionsChanged:Z

    :cond_6
    :goto_2
    monitor-exit v0

    return-void

    :cond_7
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Cannot find display with id="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "width and height must be > 0"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setDisplayPadding(Landroid/graphics/Rect;Ljava/lang/String;I)V
    .locals 8

    const-string v0, "android.permission.SET_WALLPAPER_HINTS"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->isValidDisplay(I)Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    const/4 v2, 0x1

    invoke-direct {p0, v1, v2}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v3

    iget v4, p1, Landroid/graphics/Rect;->left:I

    if-ltz v4, :cond_6

    iget v4, p1, Landroid/graphics/Rect;->top:I

    if-ltz v4, :cond_6

    iget v4, p1, Landroid/graphics/Rect;->right:I

    if-ltz v4, :cond_6

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    if-ltz v4, :cond_6

    invoke-direct {p0, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getDisplayDataOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;

    move-result-object v4

    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {p1, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    iget-object v5, v4, Lcom/android/server/wallpaper/WallpaperManagerService$DisplayData;->mPadding:Landroid/graphics/Rect;

    invoke-virtual {v5, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    if-nez p3, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    :cond_1
    iget v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-eq v5, v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v5, :cond_5

    iget-object v5, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    invoke-virtual {v5, p3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object v5

    if-eqz v5, :cond_3

    iget-object v6, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    const/4 v6, 0x0

    :goto_0
    if-eqz v6, :cond_4

    :try_start_1
    invoke-interface {v6, p1}, Landroid/service/wallpaper/IWallpaperEngine;->setDisplayPadding(Landroid/graphics/Rect;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    :try_start_2
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->notifyCallbacksLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    goto :goto_2

    :cond_4
    iget-object v7, v3, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v7, v7, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mService:Landroid/service/wallpaper/IWallpaperService;

    if-eqz v7, :cond_5

    if-eqz v5, :cond_5

    iput-boolean v2, v5, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mPaddingChanged:Z

    :cond_5
    :goto_2
    monitor-exit v0

    return-void

    :cond_6
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "padding must be positive: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot find display with id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setInAmbientMode(ZJ)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-boolean p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mInAmbientMode:Z

    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    iget v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    if-eqz v2, :cond_0

    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->mInfo:Landroid/app/WallpaperInfo;

    invoke-virtual {v2}, Landroid/app/WallpaperInfo;->supportsAmbientMode()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    iget-object v2, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->connection:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection;->getDisplayConnectorOrCreate(I)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperConnection$DisplayConnector;->mEngine:Landroid/service/wallpaper/IWallpaperEngine;

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_2

    :try_start_1
    invoke-interface {v2, p1, p2, p3}, Landroid/service/wallpaper/IWallpaperEngine;->setInAmbientMode(ZJ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_2
    :goto_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method public setLockWallpaperCallback(Landroid/app/IWallpaperManagerCallback;)Z
    .locals 2

    const-string v0, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mKeyguardListener:Landroid/app/IWallpaperManagerCallback;

    monitor-exit v0

    const/4 v0, 0x1

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setWallpaper(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;ZLandroid/os/Bundle;ILandroid/app/IWallpaperManagerCallback;I)Landroid/os/ParcelFileDescriptor;
    .locals 7

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCallingPid()I

    move-result v0

    invoke-static {}, Lcom/android/server/wallpaper/WallpaperManagerService;->getCallingUid()I

    move-result v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    const-string v5, "changing wallpaper"

    const/4 v6, 0x0

    move v2, p8

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p8

    const-string v0, "android.permission.SET_WALLPAPER"

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->checkPermission(Ljava/lang/String;)V

    and-int/lit8 v0, p6, 0x3

    if-eqz v0, :cond_6

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    if-nez p3, :cond_1

    new-instance v0, Landroid/graphics/Rect;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    move-object p3, v0

    goto :goto_0

    :cond_1
    invoke-virtual {p3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget v0, p3, Landroid/graphics/Rect;->left:I

    if-ltz v0, :cond_4

    iget v0, p3, Landroid/graphics/Rect;->top:I

    if-ltz v0, :cond_4

    move-object v0, p3

    :goto_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    const/4 p3, 0x1

    if-ne p6, p3, :cond_2

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    invoke-direct {p0, p8}, Lcom/android/server/wallpaper/WallpaperManagerService;->migrateSystemToLockWallpaperLocked(I)V

    :cond_2
    invoke-direct {p0, p8, p6}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {p0, p1, v2, p5}, Lcom/android/server/wallpaper/WallpaperManagerService;->updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;

    move-result-object v5

    if-eqz v5, :cond_3

    iput-boolean p3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->imageWallpaperPending:Z

    iput p6, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->whichPending:I

    iput-object p7, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->setComplete:Landroid/app/IWallpaperManagerCallback;

    iget-object p3, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropHint:Landroid/graphics/Rect;

    invoke-virtual {p3, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    iput-boolean p4, v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_3
    nop

    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v1

    return-object v5

    :catchall_0
    move-exception p3

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p3

    :catchall_1
    move-exception p3

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw p3

    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid crop rect supplied: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    :goto_1
    const/4 v0, 0x0

    return-object v0

    :cond_6
    const-string v0, "Must specify a valid wallpaper category to set"

    const-string v1, "WallpaperManagerService"

    const-string v2, "Must specify a valid wallpaper category to set"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Must specify a valid wallpaper category to set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setWallpaperComponent(Landroid/content/ComponentName;)V
    .locals 1

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;I)V

    return-void
.end method

.method public setWallpaperComponentChecked(Landroid/content/ComponentName;Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isWallpaperSupported(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->isSetWallpaperAllowed(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p3}, Lcom/android/server/wallpaper/WallpaperManagerService;->setWallpaperComponent(Landroid/content/ComponentName;I)V

    :cond_0
    return-void
.end method

.method public settingsRestored()V
    .locals 11

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_5

    const/4 v0, 0x0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, 0x0

    :try_start_0
    invoke-direct {p0, v3, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->loadSettingsLocked(IZ)V

    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-object v0, v4

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v4

    iput v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    const/4 v4, 0x1

    iput-boolean v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->allowBackup:Z

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    iget-object v5, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    invoke-virtual {v4, v5}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v9, v0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v9, v0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    :cond_0
    const/4 v1, 0x1

    goto :goto_1

    :cond_1
    const-string v4, ""

    iget-object v5, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->restoreNamedResourceLocked(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)Z

    move-result v4

    move v1, v4

    :goto_0
    if-eqz v1, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iget-object v6, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v10, 0x0

    move-object v5, p0

    move-object v9, v0

    invoke-direct/range {v5 .. v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    :cond_3
    :goto_1
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-nez v1, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to restore wallpaper: \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "WallpaperManagerService"

    invoke-static {v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, ""

    iput-object v2, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-static {v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    :cond_4
    iget-object v4, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_1
    invoke-direct {p0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->saveSettingsLocked(I)V

    monitor-exit v4

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :catchall_1
    move-exception v3

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v3

    :cond_5
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "settingsRestored() can only be called from the system process"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->stopWatching()V

    const/4 v0, 0x0

    iput-object v0, p1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    :cond_0
    return-void
.end method

.method stopObserversLocked(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    invoke-virtual {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->stopObserver(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->remove(I)V

    return-void
.end method

.method switchUser(ILandroid/os/IRemoteCallback;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    if-ne v1, p1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mCurrentUserId:I

    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperSafeLocked(II)Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    if-nez v2, :cond_1

    move-object v3, v1

    goto :goto_0

    :cond_1
    move-object v3, v2

    :goto_0
    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    if-nez v4, :cond_2

    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-direct {v4, p0, v1}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    iput-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    iget-object v4, v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperObserver:Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;

    invoke-virtual {v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperObserver;->startWatching()V

    :cond_2
    invoke-virtual {p0, v1, p2}, Lcom/android/server/wallpaper/WallpaperManagerService;->switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$xeJGAwCI8tssclwKFf8jMsYdoKQ;

    invoke-direct {v2, p0, v1, v3}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$xeJGAwCI8tssclwKFf8jMsYdoKQ;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLockWallpaperMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v2, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$T0_AqEZbb981DGpVUrLSw9u11Og;

    invoke-direct {v2, p0, p1}, Lcom/android/server/wallpaper/-$$Lambda$WallpaperManagerService$T0_AqEZbb981DGpVUrLSw9u11Og;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;I)V

    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_3
    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method switchWallpaper(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)V
    .locals 15

    move-object v7, p0

    move-object/from16 v8, p1

    iget-object v9, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    const/4 v10, 0x0

    :try_start_0
    iput-boolean v10, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mWaitingForUnlock:Z

    iget-object v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    iget-object v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    goto :goto_0

    :cond_0
    iget-object v0, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    :goto_0
    move-object v11, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v2, v11

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_2

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mIPackageManager:Landroid/content/pm/IPackageManager;

    const/high16 v2, 0x40000

    iget v3, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-interface {v0, v11, v2, v3}, Landroid/content/pm/IPackageManager;->getServiceInfo(Landroid/content/ComponentName;II)Landroid/content/pm/ServiceInfo;

    move-result-object v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v1, v0

    goto :goto_1

    :catch_0
    move-exception v0

    move-object v0, v1

    :goto_1
    const/4 v12, 0x1

    if-nez v0, :cond_1

    :try_start_2
    const-string v1, "WallpaperManagerService"

    const-string v2, "Failure starting previous wallpaper; clearing"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object/from16 v13, p2

    :try_start_3
    invoke-virtual {p0, v10, v12, v1, v13}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    goto :goto_2

    :cond_1
    move-object/from16 v13, p2

    const-string v1, "WallpaperManagerService"

    const-string v2, "Wallpaper isn\'t direct boot aware; using fallback until unlocked"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    iput-object v1, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperComponent:Landroid/content/ComponentName;

    new-instance v1, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget v2, v8, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    const-string/jumbo v3, "wallpaper_lock_orig"

    const-string/jumbo v4, "wallpaper_lock"

    invoke-direct {v1, v2, v3, v4}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    move-object v14, v1

    invoke-direct {p0, v14, v10}, Lcom/android/server/wallpaper/WallpaperManagerService;->ensureSaneWallpaperData(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;I)V

    iget-object v2, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move-object v5, v14

    move-object/from16 v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wallpaper/WallpaperManagerService;->bindWallpaperComponentLocked(Landroid/content/ComponentName;ZZLcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/IRemoteCallback;)Z

    iput-boolean v12, v7, Lcom/android/server/wallpaper/WallpaperManagerService;->mWaitingForUnlock:Z

    goto :goto_2

    :cond_2
    move-object/from16 v13, p2

    :goto_2
    monitor-exit v9

    return-void

    :catchall_0
    move-exception v0

    move-object/from16 v13, p2

    :goto_3
    monitor-exit v9
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_3
.end method

.method systemReady()V
    .locals 6

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->initialize()V

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mWallpaperMap:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mImageWallpaper:Landroid/content/ComponentName;

    iget-object v3, v0, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->nextWallpaperComponent:Landroid/content/ComponentName;

    invoke-virtual {v2, v3}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/wallpaper/WallpaperManagerService;->generateCrop(Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;)V

    :cond_0
    invoke-virtual {v0}, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->cropExists()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p0, v1, v2, v1, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;->clearWallpaperLocked(ZIILandroid/os/IRemoteCallback;)V

    :cond_1
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.USER_REMOVED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/server/wallpaper/WallpaperManagerService$2;

    invoke-direct {v3, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$2;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.ACTION_SHUTDOWN"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$3;

    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$3;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v3

    new-instance v4, Lcom/android/server/wallpaper/WallpaperManagerService$4;

    invoke-direct {v4, p0}, Lcom/android/server/wallpaper/WallpaperManagerService$4;-><init>(Lcom/android/server/wallpaper/WallpaperManagerService;)V

    const-string v5, "WallpaperManagerService"

    invoke-interface {v3, v4, v5}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    :goto_0
    return-void
.end method

.method public unregisterWallpaperColorsCallback(Landroid/app/IWallpaperManagerCallback;II)V
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const/4 v3, 0x1

    const/4 v4, 0x1

    const-string/jumbo v5, "unregisterWallpaperColorsCallback"

    const/4 v6, 0x0

    move v2, p2

    invoke-static/range {v0 .. v6}, Landroid/app/ActivityManager;->handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wallpaper/WallpaperManagerService;->mColorsChangedListeners:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    nop

    invoke-virtual {v1, p3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/RemoteCallbackList;

    if-eqz v2, :cond_0

    invoke-virtual {v2, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method updateWallpaperBitmapLocked(Ljava/lang/String;Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;Landroid/os/Bundle;)Landroid/os/ParcelFileDescriptor;
    .locals 5

    if-nez p1, :cond_0

    const-string p1, ""

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget v1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->userId:I

    invoke-static {v1}, Lcom/android/server/wallpaper/WallpaperManagerService;->getWallpaperDir(I)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    nop

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x1f9

    const/4 v4, -0x1

    invoke-static {v2, v3, v4, v4}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    :cond_1
    iget-object v2, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    const/high16 v3, 0x3c000000    # 0.0078125f

    invoke-static {v2, v3}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v2

    iget-object v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperFile:Ljava/io/File;

    invoke-static {v3}, Landroid/os/SELinux;->restorecon(Ljava/io/File;)Z

    move-result v3

    if-nez v3, :cond_2

    return-object v0

    :cond_2
    iput-object p1, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->name:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/android/server/wallpaper/WallpaperManagerService;->makeWallpaperIdLocked()I

    move-result v3

    iput v3, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    if-eqz p3, :cond_3

    const-string v3, "android.service.wallpaper.extra.ID"

    iget v4, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->wallpaperId:I

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_3
    iput-object v0, p2, Lcom/android/server/wallpaper/WallpaperManagerService$WallpaperData;->primaryColors:Landroid/app/WallpaperColors;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception v1

    const-string v2, "WallpaperManagerService"

    const-string v3, "Error setting wallpaper"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v0
.end method
