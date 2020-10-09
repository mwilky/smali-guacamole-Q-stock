.class public Lcom/android/server/wm/OpScreenCompat;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/wm/IOpScreenCompat;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/OpScreenCompat$zta;,
        Lcom/android/server/wm/OpScreenCompat$you;
    }
.end annotation


# static fields
.field private static final IS_PARALLEL_APP_FEATURED:Z

.field private static final IS_SCREEN_COMPAT_ENABLED:Z

.field private static final IS_SUPPORT_CAMERA_NOTCH:Z

.field private static final IS_SUPPORT_HIDE_CAMERA_NOTCH:Z

.field public static final MODE_COMPAT:I = 0x64

.field public static final MODE_FULL:I = 0x66

.field public static final MODE_NONFULL:I = 0x65

.field public static final OP_COMPAT_MODE_16_9:I = 0x2

.field public static final OP_COMPAT_MODE_DEFAULT:I = 0x0

.field public static final OP_COMPAT_MODE_FULL:I = 0x1

.field private static final OP_ENABLE_PARTIAL_COMPAT:Z

.field private static final PORT_MARGIN_EDIT:I = 0x14

.field private static final SCREEN_COMPAT_CONFIG_NAME:Ljava/lang/String; = "Screen_Compat_Config"

.field private static final TAG:Ljava/lang/String; = "OpScreenCompat"

.field private static mEnableIgnoreCutoutMode:Z

.field private static mIsIgnoreCameraNotch:Z

.field private static mScreenCompatLock:Ljava/lang/Object;

.field private static sDefaultMargin:I

.field private static sLandLeft:I

.field private static sLandRight:I

.field private static sLimitedScreenSize:I

.field private static sMaxScreenSize:I

.field private static sPortBottom:I

.field private static sPortTop:I


# instance fields
.field private mAppOps:Landroid/app/AppOpsManager;

.field private mContext:Landroid/content/Context;

.field public mDisplayCompat2kList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mDisplayCompatFhdList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDriveModeEnable:I

.field private mDriveModeShowing:I

.field private mHandler:Landroid/os/Handler;

.field private mOpScreenDecor:Lcom/android/server/wm/vdw;

.field public mScreenCompatDefaultEnabledList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mScreenCompatDefaultFullscreenList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mScreenCompatIgnoreCutoutList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mScreenCompatSystemAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public mScreenCompatThirdPartyAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mScrrenCompatConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mSettingsObserver:Lcom/android/server/wm/OpScreenCompat$you;

.field public mSystemAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mWms:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x40

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/wm/OpScreenCompat;->IS_SUPPORT_CAMERA_NOTCH:Z

    new-array v1, v0, [I

    const/16 v3, 0x29

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/android/server/wm/OpScreenCompat;->IS_SUPPORT_CAMERA_NOTCH:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v0

    :goto_1
    sput-boolean v1, Lcom/android/server/wm/OpScreenCompat;->IS_SCREEN_COMPAT_ENABLED:Z

    sget-boolean v1, Lcom/android/server/wm/OpScreenCompat;->IS_SUPPORT_CAMERA_NOTCH:Z

    if-eqz v1, :cond_2

    new-array v1, v0, [I

    const/16 v3, 0x41

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    move v1, v0

    goto :goto_2

    :cond_2
    move v1, v2

    :goto_2
    sput-boolean v1, Lcom/android/server/wm/OpScreenCompat;->IS_SUPPORT_HIDE_CAMERA_NOTCH:Z

    new-array v1, v0, [I

    const/16 v3, 0x22

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/wm/OpScreenCompat;->IS_PARALLEL_APP_FEATURED:Z

    const-string v1, "sys.enable.partial.compat"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OpScreenCompat;->OP_ENABLE_PARTIAL_COMPAT:Z

    sput-boolean v2, Lcom/android/server/wm/OpScreenCompat;->mEnableIgnoreCutoutMode:Z

    sput-boolean v2, Lcom/android/server/wm/OpScreenCompat;->mIsIgnoreCameraNotch:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wm/OpScreenCompat;->mScreenCompatLock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpScreenCompat;->mScreenCompatDefaultEnabledList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpScreenCompat;->mScreenCompatDefaultFullscreenList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpScreenCompat;->mScreenCompatSystemAppList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpScreenCompat;->mScreenCompatThirdPartyAppList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpScreenCompat;->mScreenCompatIgnoreCutoutList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "com.android.cts"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/wm/OpScreenCompat;->mDisplayCompat2kList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpScreenCompat;->mDisplayCompatFhdList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/OpScreenCompat;->mSystemAppList:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/wm/OpScreenCompat;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/OpScreenCompat;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpScreenCompat;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpScreenCompat;->IS_SUPPORT_HIDE_CAMERA_NOTCH:Z

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpScreenCompat;->mIsIgnoreCameraNotch:Z

    return v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/wm/OpScreenCompat;->mIsIgnoreCameraNotch:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/server/wm/OpScreenCompat;)Lcom/android/server/wm/WindowManagerService;
    .locals 0

    iget-object p0, p0, Lcom/android/server/wm/OpScreenCompat;->mWms:Lcom/android/server/wm/WindowManagerService;

    return-object p0
.end method

.method static synthetic access$402(Lcom/android/server/wm/OpScreenCompat;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wm/OpScreenCompat;->mDriveModeEnable:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/server/wm/OpScreenCompat;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wm/OpScreenCompat;->mDriveModeShowing:I

    return p1
.end method

.method static synthetic access$600()I
    .locals 1

    sget v0, Lcom/android/server/wm/OpScreenCompat;->sPortTop:I

    return v0
.end method

.method static synthetic access$700()I
    .locals 1

    sget v0, Lcom/android/server/wm/OpScreenCompat;->sLandLeft:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/wm/OpScreenCompat;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpScreenCompat;->resolveScreenCompatConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method private checkContains(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 6

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const-string p0, "\\."

    invoke-virtual {p2, p0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    const/4 p2, 0x0

    const-string v1, ""

    if-eqz p0, :cond_1

    array-length v2, p0

    const/4 v3, 0x2

    if-le v2, v3, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v4, p0, p2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p0, v0

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p0, p0, v3

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_1
    move-object p0, v1

    :goto_0
    if-eq p0, v1, :cond_2

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    return v0

    :cond_2
    return p2
.end method

.method private isAnyPortrait(I)Z
    .locals 0

    if-eqz p1, :cond_1

    const/4 p0, 0x2

    if-ne p1, p0, :cond_0

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

.method private isNotchUnLimit(Lcom/android/server/wm/WindowState;)Z
    .locals 4

    sget-boolean v0, Lcom/android/server/wm/OpScreenCompat;->IS_SUPPORT_CAMERA_NOTCH:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/android/server/wm/OpScreenCompat;->mIsIgnoreCameraNotch:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7db

    if-ne v0, v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getRotation()I

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v3, 0x7d0

    if-ne v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppCompat:I

    if-ne v0, v2, :cond_5

    goto :goto_0

    :cond_3
    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_4

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppCompat:I

    if-ne v0, v2, :cond_4

    :goto_0
    move v1, v2

    goto :goto_1

    :cond_4
    iget v0, p1, Lcom/android/server/wm/WindowState;->mAppOp:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_5

    invoke-static {v0}, Landroid/app/AppOpsManager;->opToName(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "SYSTEM_ALERT_WINDOW"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    iget v3, p1, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/OpScreenCompat;->getCompatMode(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_5

    goto :goto_0

    :cond_5
    :goto_1
    iget-boolean v0, p1, Lcom/android/server/wm/WindowState;->mIsNotchUnLimited:Z

    if-eq v0, v1, :cond_6

    iput-boolean v1, p1, Lcom/android/server/wm/WindowState;->mIsNotchUnLimited:Z

    sget-boolean p1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "CameraNotch: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, " isUnLimited="

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpScreenCompat"

    invoke-static {p1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v1
.end method

.method private resetFrame(Landroid/graphics/Rect;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    sget v1, Lcom/android/server/wm/OpScreenCompat;->sLimitedScreenSize:I

    if-le p0, v1, :cond_1

    sget v1, Lcom/android/server/wm/OpScreenCompat;->sMaxScreenSize:I

    if-gt p0, v1, :cond_1

    sget p0, Lcom/android/server/wm/OpScreenCompat;->sPortTop:I

    iput p0, p1, Landroid/graphics/Rect;->top:I

    sget p0, Lcom/android/server/wm/OpScreenCompat;->sPortBottom:I

    iput p0, p1, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_1
    sget p0, Lcom/android/server/wm/OpScreenCompat;->sLimitedScreenSize:I

    if-le v0, p0, :cond_2

    sget p0, Lcom/android/server/wm/OpScreenCompat;->sMaxScreenSize:I

    if-gt v0, p0, :cond_2

    sget p0, Lcom/android/server/wm/OpScreenCompat;->sLandLeft:I

    iput p0, p1, Landroid/graphics/Rect;->left:I

    sget p0, Lcom/android/server/wm/OpScreenCompat;->sLandRight:I

    iput p0, p1, Landroid/graphics/Rect;->right:I

    :cond_2
    :goto_0
    return-void
.end method

.method private resetScreenCompatConfig()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/wm/OpScreenCompat;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/16 v2, 0x3ee

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager$PackageOps;

    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v3

    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/AppOpsManager$OpEntry;

    invoke-virtual {v5}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v6

    if-ne v6, v2, :cond_1

    invoke-virtual {v5}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v6

    const/16 v7, 0x64

    if-eq v6, v7, :cond_2

    invoke-virtual {v5}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v6

    const/16 v7, 0x65

    if-eq v6, v7, :cond_2

    invoke-virtual {v5}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v5

    const/16 v6, 0x66

    if-ne v5, v6, :cond_1

    :cond_2
    iget-object v5, p0, Lcom/android/server/wm/OpScreenCompat;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v6, 0x3

    invoke-virtual {v5, v2, v3, v4, v6}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method private resolveScreenCompatConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    if-nez v1, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/OpScreenCompat;->updateDefaultForScreenCompat()V

    return-void

    :cond_0
    :try_start_0
    const-string v2, "OpScreenCompat"

    const-string v3, "[OnlineConfig] update config start"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x0

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/json/JSONArray;->length()I

    move-result v10

    if-ge v9, v10, :cond_e

    invoke-virtual {v1, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v10

    sget-boolean v11, Lcom/android/server/wm/OpScreenCompat;->IS_SCREEN_COMPAT_ENABLED:Z

    if-eqz v11, :cond_2

    const-string v11, "op_screen_compat_enabled_config"

    const-string v12, "name"

    invoke-virtual {v10, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_2

    const-string v11, "value"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v10

    invoke-virtual {v10}, Lorg/json/JSONArray;->length()I

    move-result v11

    const/4 v12, 0x0

    :goto_1
    if-ge v12, v11, :cond_d

    invoke-virtual {v10, v12}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v14, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v14, :cond_1

    const-string v14, "OpScreenCompat"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add default enabled pkg:"

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    :cond_2
    sget-boolean v8, Lcom/android/server/wm/OpScreenCompat;->IS_SCREEN_COMPAT_ENABLED:Z

    if-eqz v8, :cond_4

    const-string v8, "op_screen_compat_full_config_mp1"

    const-string v11, "name"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    const-string v8, "value"

    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    const/4 v11, 0x0

    :goto_2
    if-ge v11, v10, :cond_d

    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v3, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v13, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v13, :cond_3

    const-string v13, "OpScreenCompat"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "add default full pkg:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    :cond_4
    sget-boolean v8, Lcom/android/server/wm/OpScreenCompat;->IS_SCREEN_COMPAT_ENABLED:Z

    if-eqz v8, :cond_6

    const-string v8, "op_screen_compat_3p_config"

    const-string v11, "name"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    const-string v8, "value"

    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    const/4 v11, 0x0

    :goto_3
    if-ge v11, v10, :cond_d

    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v13, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v13, :cond_5

    const-string v13, "OpScreenCompat"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "add 3p config pkg:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    :cond_6
    sget-boolean v8, Lcom/android/server/wm/OpScreenCompat;->IS_SCREEN_COMPAT_ENABLED:Z

    if-eqz v8, :cond_9

    const-string v8, "op_screen_compat_ignore_config"

    const-string v11, "name"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    const-string v8, "value"

    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    const/4 v11, 0x0

    sput-boolean v11, Lcom/android/server/wm/OpScreenCompat;->mEnableIgnoreCutoutMode:Z

    const/4 v11, 0x0

    :goto_4
    if-ge v11, v10, :cond_d

    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    const-string v13, "ignore_all"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    const/4 v12, 0x1

    sput-boolean v12, Lcom/android/server/wm/OpScreenCompat;->mEnableIgnoreCutoutMode:Z

    const-string v12, "OpScreenCompat"

    const-string v13, "ignore all cutout."

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_7
    invoke-virtual {v5, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v13, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v13, :cond_8

    const-string v13, "OpScreenCompat"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "add ignore config pkg:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_9
    const-string v8, "op_display_size_compat_2k_config"

    const-string v11, "name"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_b

    const-string v8, "value"

    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    const/4 v11, 0x0

    :goto_6
    if-ge v11, v10, :cond_d

    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v6, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v13, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v13, :cond_a

    const-string v13, "OpScreenCompat"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "add display compat config pkg:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    add-int/lit8 v11, v11, 0x1

    goto :goto_6

    :cond_b
    const-string v8, "op_display_size_compat_fhd_config"

    const-string v11, "name"

    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v8, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_d

    const-string v8, "value"

    invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v8

    invoke-virtual {v8}, Lorg/json/JSONArray;->length()I

    move-result v10

    const/4 v11, 0x0

    :goto_7
    if-ge v11, v10, :cond_d

    invoke-virtual {v8, v11}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v13, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v13, :cond_c

    const-string v13, "OpScreenCompat"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "add display compat fhd config pkg:"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v13, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    add-int/lit8 v11, v11, 0x1

    goto :goto_7

    :cond_d
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    :cond_e
    sget-object v1, Lcom/android/server/wm/OpScreenCompat;->mScreenCompatLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-lez v8, :cond_f

    iput-object v2, v0, Lcom/android/server/wm/OpScreenCompat;->mScreenCompatDefaultEnabledList:Ljava/util/ArrayList;

    :cond_f
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_10

    iput-object v3, v0, Lcom/android/server/wm/OpScreenCompat;->mScreenCompatDefaultFullscreenList:Ljava/util/ArrayList;

    :cond_10
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_11

    iput-object v4, v0, Lcom/android/server/wm/OpScreenCompat;->mScreenCompatThirdPartyAppList:Ljava/util/ArrayList;

    :cond_11
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_12

    iput-object v5, v0, Lcom/android/server/wm/OpScreenCompat;->mScreenCompatIgnoreCutoutList:Ljava/util/ArrayList;

    :cond_12
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_13

    iput-object v6, v0, Lcom/android/server/wm/OpScreenCompat;->mDisplayCompat2kList:Ljava/util/ArrayList;

    :cond_13
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_15

    iget-object v2, v0, Lcom/android/server/wm/OpScreenCompat;->mDisplayCompatFhdList:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v2, :cond_14

    :try_start_2
    const-string v2, "OpScreenCompat"

    const-string v3, "[OnlineConfig] DisplayCompat: kill embryo for compat"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/am/EmbryoManagerInjector;->killEmbryoProcesses(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_8

    :catch_0
    :try_start_3
    const-string v2, "OpScreenCompat"

    const-string v3, "DisplayCompat: failed to kill embryo procs."

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    :goto_8
    iput-object v7, v0, Lcom/android/server/wm/OpScreenCompat;->mDisplayCompatFhdList:Ljava/util/ArrayList;

    :cond_15
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/OpScreenCompat;->updateDefaultForScreenCompat()V

    const-string v0, "OpScreenCompat"

    const-string v1, "[OnlineConfig] update config complete"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_a

    :catchall_0
    move-exception v0

    :try_start_5
    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :try_start_6
    throw v0
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_2
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1

    :catch_1
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] ScreenCompatConfigUpdater, error message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :catch_2
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] ScreenCompatConfigUpdater, error message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    :goto_9
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpScreenCompat"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_a
    return-void
.end method

.method private updateDefaultForScreenCompatUser(Ljava/lang/String;I)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, p2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/OpScreenCompat;->updateDefaultForScreenCompat(Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "OpScreenCompat"

    const-string p2, "updateDefaultForScreenCompat failed: "

    invoke-static {p1, p2, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public expandScreenDecor(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 5

    sget-boolean v0, Lcom/android/server/wm/OpScreenCompat;->IS_SUPPORT_CAMERA_NOTCH:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/wm/OpScreenCompat;->mOpScreenDecor:Lcom/android/server/wm/vdw;

    if-eqz v0, :cond_5

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    if-eqz v0, :cond_5

    sget-boolean v1, Lcom/android/server/wm/OpScreenCompat;->mIsIgnoreCameraNotch:Z

    const/4 v2, 0x1

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/android/server/wm/WindowState;->mIsNotchUnLimited:Z

    if-nez v1, :cond_2

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isLetterboxedAppWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    iget v1, p0, Lcom/android/server/wm/OpScreenCompat;->mDriveModeEnable:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/android/server/wm/OpScreenCompat;->mDriveModeShowing:I

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    move v1, v2

    :goto_2
    iget-object v3, p0, Lcom/android/server/wm/OpScreenCompat;->mOpScreenDecor:Lcom/android/server/wm/vdw;

    iget-boolean v3, v3, Lcom/android/server/wm/vdw;->pX:Z

    if-eq v3, v1, :cond_5

    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "expandScreenDecor to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " ignore="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/wm/OpScreenCompat;->mIsIgnoreCameraNotch:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " topDocked="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " topFull="

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " isLimited="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p1, v0, Lcom/android/server/wm/WindowState;->mIsNotchUnLimited:Z

    xor-int/2addr p1, v2

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, " isLetterboxed="

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->isLetterboxedAppWindow()Z

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OpScreenCompat"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/OpScreenCompat;->mOpScreenDecor:Lcom/android/server/wm/vdw;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/vdw;->z(Z)V

    :cond_5
    return-void
.end method

.method public finishBooting()V
    .locals 5

    const-string v0, "OpScreenCompat"

    const-string v1, "finishBooting"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/OpScreenCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x5020025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/server/wm/OpScreenCompat;->mScreenCompatDefaultEnabledList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v3, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/OpScreenCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x5020028

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    :goto_0
    iput-object v1, p0, Lcom/android/server/wm/OpScreenCompat;->mSystemAppList:Ljava/util/ArrayList;

    goto :goto_1

    :cond_0
    new-array v2, v1, [I

    aput v1, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/OpScreenCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x5020029    # 6.1126E-36f

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_1
    :goto_1
    sget-boolean v1, Lcom/android/server/wm/OpScreenCompat;->IS_SUPPORT_CAMERA_NOTCH:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/OpScreenCompat;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x5020027

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/server/wm/OpScreenCompat;->mScreenCompatThirdPartyAppList:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/server/wm/vdw;

    iget-object v2, p0, Lcom/android/server/wm/OpScreenCompat;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/wm/vdw;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/wm/OpScreenCompat;->mOpScreenDecor:Lcom/android/server/wm/vdw;

    :cond_2
    sget-boolean v1, Lcom/android/server/wm/OpScreenCompat;->IS_SUPPORT_HIDE_CAMERA_NOTCH:Z

    if-eqz v1, :cond_3

    sput-boolean v3, Lcom/android/server/wm/OpScreenCompat;->mIsIgnoreCameraNotch:Z

    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/OpScreenCompat;->updateDefaultForScreenCompat()V

    invoke-virtual {p0}, Lcom/android/server/wm/OpScreenCompat;->updateSizeForResolutionChanged()V

    new-instance v1, Lcom/android/server/ServiceThread;

    const/4 v2, -0x2

    invoke-direct {v1, v0, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->start()V

    new-instance v0, Landroid/os/Handler;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/OpScreenCompat;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/wm/OpScreenCompat;->mScrrenCompatConfigObserver:Lcom/oneplus/config/ConfigObserver;

    const-string v1, "Screen_Compat_Config"

    if-nez v0, :cond_4

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v2, p0, Lcom/android/server/wm/OpScreenCompat;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wm/OpScreenCompat;->mHandler:Landroid/os/Handler;

    new-instance v4, Lcom/android/server/wm/OpScreenCompat$zta;

    invoke-direct {v4, p0}, Lcom/android/server/wm/OpScreenCompat$zta;-><init>(Lcom/android/server/wm/OpScreenCompat;)V

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/OpScreenCompat;->mScrrenCompatConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/android/server/wm/OpScreenCompat;->mScrrenCompatConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    :cond_4
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v2, p0, Lcom/android/server/wm/OpScreenCompat;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/OpScreenCompat;->resolveScreenCompatConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method public getCompatMode(Lcom/android/server/wm/ActivityRecord;)I
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    sget-boolean v1, Lcom/android/server/wm/OpScreenCompat;->IS_PARALLEL_APP_FEATURED:Z

    if-eqz v1, :cond_0

    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const/16 v2, 0x3e7

    if-ne v1, v2, :cond_0

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v1, v2, v0, v0}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v1

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_0
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/OpScreenCompat;->getCompatMode(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCompatMode failed: r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "OpScreenCompat"

    invoke-static {v1, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return v0
.end method

.method public getCompatMode(Ljava/lang/String;I)I
    .locals 4

    const/16 v0, 0x3e8

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/OpScreenCompat;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget v2, v2, Lcom/android/server/wm/WindowManagerService;->mCurrentUserId:I

    invoke-interface {v0, p1, v1, v2}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result p2

    :cond_0
    iget-object p0, p0, Lcom/android/server/wm/OpScreenCompat;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v0, 0x3ee

    invoke-virtual {p0, v0, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p0

    const/4 v0, 0x1

    const/4 v2, 0x2

    if-eq p0, v2, :cond_2

    const/16 v3, 0x66

    if-ne p0, v3, :cond_1

    goto :goto_0

    :cond_1
    if-eqz p0, :cond_5

    const/16 v3, 0x64

    if-ne p0, v3, :cond_3

    goto :goto_1

    :cond_2
    :goto_0
    sget-boolean p0, Lcom/android/server/wm/OpScreenCompat;->mIsIgnoreCameraNotch:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p0, :cond_4

    :cond_3
    move v2, v1

    goto :goto_1

    :cond_4
    move v2, v0

    :cond_5
    :goto_1
    if-ne v2, v0, :cond_6

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    invoke-interface {p0, p1, v1, v0}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const/16 p1, 0x1c

    if-lt p0, p1, :cond_6

    move v2, v1

    goto :goto_3

    :catch_0
    move-exception p0

    goto :goto_2

    :catch_1
    move-exception p0

    move v2, v1

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCompatMode failed: pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " uid="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OpScreenCompat"

    invoke-static {p2, p1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :catch_2
    :cond_6
    :goto_3
    return v2
.end method

.method public getScreenExpandOffset(Lcom/android/server/wm/WindowState;)I
    .locals 3

    sget-boolean v0, Lcom/android/server/wm/OpScreenCompat;->IS_SUPPORT_CAMERA_NOTCH:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/OpScreenCompat;->mOpScreenDecor:Lcom/android/server/wm/vdw;

    if-eqz v0, :cond_2

    iget-boolean v0, v0, Lcom/android/server/wm/vdw;->pX:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/OpScreenCompat;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/OpScreenCompat;->mWms:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getDefaultDisplayRotation()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->isVisibleLw()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    monitor-exit v0

    goto :goto_1

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/OpScreenCompat;->mOpScreenDecor:Lcom/android/server/wm/vdw;

    iget p0, p0, Lcom/android/server/wm/vdw;->rX:I

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public init(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wm/OpScreenCompat;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object p1, p0, Lcom/android/server/wm/OpScreenCompat;->mContext:Landroid/content/Context;

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/android/server/wm/OpScreenCompat;->mAppOps:Landroid/app/AppOpsManager;

    new-instance p1, Lcom/android/server/wm/OpScreenCompat$you;

    invoke-direct {p1, p0}, Lcom/android/server/wm/OpScreenCompat$you;-><init>(Lcom/android/server/wm/OpScreenCompat;)V

    iput-object p1, p0, Lcom/android/server/wm/OpScreenCompat;->mSettingsObserver:Lcom/android/server/wm/OpScreenCompat$you;

    return-void
.end method

.method public isAppWindowCompat(Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_2

    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "SnapshotStartingWindow"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v0

    :cond_1
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v3

    iget v4, p2, Lcom/android/server/wm/WindowState;->mOwnerUid:I

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/OpScreenCompat;->getCompatMode(Ljava/lang/String;I)I

    move-result v3

    iput v3, v1, Lcom/android/server/wm/AppWindowToken;->mAppCompat:I

    :cond_2
    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v1, :cond_3

    iget v1, v1, Lcom/android/server/wm/AppWindowToken;->mAppCompat:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    invoke-virtual {p2}, Lcom/android/server/wm/WindowState;->inMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    :cond_3
    iget-boolean v1, p2, Lcom/android/server/wm/WindowState;->mIsAppWindowCompat:Z

    if-eq v1, v0, :cond_4

    iput-boolean v0, p2, Lcom/android/server/wm/WindowState;->mIsAppWindowCompat:Z

    iget-object v1, p2, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->type:I

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/OpScreenCompat;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mH:Lcom/android/server/wm/WindowManagerService$H;

    new-instance v2, Lcom/android/server/wm/bud;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/server/wm/bud;-><init>(Lcom/android/server/wm/OpScreenCompat;Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;Z)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService$H;->post(Ljava/lang/Runnable;)Z

    :cond_4
    :goto_0
    return v0
.end method

.method public isDisplayCompat(Ljava/lang/String;I)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    sget-boolean v1, Lcom/android/server/wm/OpScreenModeService;->sIsResolutionAuto:Z

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/OpScreenCompat;->mDisplayCompatFhdList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/OpScreenCompat;->checkContains(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    :cond_1
    sget-boolean v1, Lcom/android/server/wm/OpScreenCompat;->OP_ENABLE_PARTIAL_COMPAT:Z

    if-nez v1, :cond_2

    const/16 v1, 0x2710

    if-lt p2, v1, :cond_2

    iget-object p2, p0, Lcom/android/server/wm/OpScreenCompat;->mSystemAppList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_2

    iget-object p2, p0, Lcom/android/server/wm/OpScreenCompat;->mSystemAppList:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    iget-object p2, p0, Lcom/android/server/wm/OpScreenCompat;->mDisplayCompat2kList:Ljava/util/ArrayList;

    invoke-direct {p0, p2, p1}, Lcom/android/server/wm/OpScreenCompat;->checkContains(Ljava/util/ArrayList;Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_2

    return v2

    :cond_2
    :goto_0
    return v0
.end method

.method public isNotchUnLimited(Lcom/android/server/wm/WindowState;)Z
    .locals 0

    sget-boolean p0, Lcom/android/server/wm/OpScreenCompat;->mIsIgnoreCameraNotch:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-boolean p0, p1, Lcom/android/server/wm/WindowState;->mIsNotchUnLimited:Z

    return p0
.end method

.method public onConfigurationChanged()V
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpScreenCompat;->IS_SUPPORT_CAMERA_NOTCH:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/OpScreenCompat;->mOpScreenDecor:Lcom/android/server/wm/vdw;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/vdw;->onConfigurationChanged()V

    :cond_0
    return-void
.end method

.method public overrideCompatInfoIfNeed(Landroid/content/pm/ApplicationInfo;)V
    .locals 3

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/OpScreenCompat;->isDisplayCompat(Ljava/lang/String;I)Z

    move-result v0

    const-string v1, "OpScreenCompat"

    const/high16 v2, -0x80000000

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/OpScreenCompat;->mWms:Lcom/android/server/wm/WindowManagerService;

    iget-object p0, p0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    iput p0, p1, Landroid/content/pm/ApplicationInfo;->overrideDensity:I

    iget p0, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    or-int/2addr p0, v2

    iput p0, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "overrideCompatInfoIfNeed add compat: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget p0, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int v0, p0, v2

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p1, Landroid/content/pm/ApplicationInfo;->overrideDensity:I

    const v0, 0x7fffffff

    and-int/2addr p0, v0

    iput p0, p1, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "overrideCompatInfoIfNeed reset compat: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public overrideScaleIfNeed(Lcom/android/server/wm/WindowState;)F
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/OpScreenModeService;->sIsResolutionAuto:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/high16 p0, 0x3f800000    # 1.0f

    return p0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getOwningUid()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/OpScreenCompat;->isDisplayCompat(Ljava/lang/String;I)Z

    move-result p0

    if-eqz p0, :cond_1

    const p0, 0x3faaaaab

    return p0

    :cond_1
    iget p0, p1, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    return p0
.end method

.method public resetDisplayCutout(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)I
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpScreenCompat;->isNotchUnLimit(Lcom/android/server/wm/WindowState;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/wm/utils/WmDisplayCutout;->NO_CUTOUT:Lcom/android/server/wm/utils/WmDisplayCutout;

    iput-object v1, p2, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getWindowFrames()Lcom/android/server/wm/WindowFrames;

    move-result-object v1

    iget-object v3, p2, Lcom/android/server/wm/DisplayFrames;->mDisplayCutout:Lcom/android/server/wm/utils/WmDisplayCutout;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/WindowFrames;->setDisplayCutout(Lcom/android/server/wm/utils/WmDisplayCutout;)V

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_0
    sget-boolean v1, Lcom/android/server/wm/OpScreenCompat;->IS_SUPPORT_HIDE_CAMERA_NOTCH:Z

    if-eqz v1, :cond_4

    sget-boolean v1, Lcom/android/server/wm/OpScreenCompat;->mIsIgnoreCameraNotch:Z

    if-eqz v1, :cond_4

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    if-ne v1, v2, :cond_4

    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-string v2, "android"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-string v2, "com.oneplus.aod"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-string v2, "com.android.systemui"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget p2, p2, Lcom/android/server/wm/DisplayFrames;->mRotation:I

    invoke-direct {p0, p2}, Lcom/android/server/wm/OpScreenCompat;->isAnyPortrait(I)Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result p2

    and-int/lit8 p2, p2, 0x4

    if-eqz p2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getSystemUiVisibility()I

    move-result p2

    and-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_4

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/OpScreenCompat;->mScreenCompatIgnoreCutoutList:Ljava/util/ArrayList;

    iget-object p2, v0, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-boolean p0, Lcom/android/server/wm/OpScreenCompat;->mEnableIgnoreCutoutMode:Z

    if-eqz p0, :cond_4

    :cond_2
    sget-boolean p0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "CameraNotch: ignore cutout always mode for "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpScreenCompat"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p0, 0x0

    iput p0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    :cond_4
    iget p0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    return p0
.end method

.method public resetFrameForCompat(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)V
    .locals 1

    if-eqz p1, :cond_1

    if-nez p7, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1, p7}, Lcom/android/server/wm/OpScreenCompat;->isAppWindowCompat(Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpScreenCompat;->resetFrame(Landroid/graphics/Rect;)V

    invoke-direct {p0, p2}, Lcom/android/server/wm/OpScreenCompat;->resetFrame(Landroid/graphics/Rect;)V

    invoke-direct {p0, p3}, Lcom/android/server/wm/OpScreenCompat;->resetFrame(Landroid/graphics/Rect;)V

    invoke-direct {p0, p4}, Lcom/android/server/wm/OpScreenCompat;->resetFrame(Landroid/graphics/Rect;)V

    invoke-direct {p0, p5}, Lcom/android/server/wm/OpScreenCompat;->resetFrame(Landroid/graphics/Rect;)V

    invoke-direct {p0, p6}, Lcom/android/server/wm/OpScreenCompat;->resetFrame(Landroid/graphics/Rect;)V

    iget p0, p7, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    and-int/lit16 p0, p0, -0x2001

    iput p0, p7, Lcom/android/server/wm/WindowState;->mSystemUiVisibility:I

    iget-object p0, p7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->fillsParent()Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p7, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    invoke-virtual {p0}, Lcom/android/server/wm/AppWindowToken;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    or-int/lit8 p1, p1, 0x2

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    :cond_1
    :goto_0
    return-void
.end method

.method public resetModeIfNeed(IILjava/lang/String;I)I
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpScreenCompat;->IS_SUPPORT_CAMERA_NOTCH:Z

    if-nez v0, :cond_0

    return p4

    :cond_0
    const/16 v0, 0x3ee

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    if-ne p4, p1, :cond_2

    iget-object p0, p0, Lcom/android/server/wm/OpScreenCompat;->mScreenCompatDefaultEnabledList:Ljava/util/ArrayList;

    invoke-virtual {p0, p3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/16 p0, 0x64

    goto :goto_0

    :cond_1
    move p0, p4

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "resetModeIfNeed from "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " to "

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p4, " for pkg:"

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " uid="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OpScreenCompat"

    invoke-static {p2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    move p0, p4

    :goto_1
    return p0
.end method

.method public updateDefaultForScreenCompat()V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/wm/OpScreenCompat;->resetScreenCompatConfig()V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    sget-object v1, Lcom/android/server/wm/OpScreenCompat;->mScreenCompatLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/OpScreenCompat;->mScreenCompatDefaultEnabledList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/android/server/wm/OpScreenCompat;->updateDefaultForScreenCompatUser(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/OpScreenCompat;->mScreenCompatDefaultFullscreenList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/android/server/wm/OpScreenCompat;->updateDefaultForScreenCompatUser(Ljava/lang/String;I)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/wm/OpScreenCompat;->mScreenCompatSystemAppList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3, v0}, Lcom/android/server/wm/OpScreenCompat;->updateDefaultForScreenCompatUser(Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateDefaultForScreenCompat(Ljava/lang/String;I)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/OpScreenCompat;->updateDefaultForScreenCompatUser(Ljava/lang/String;I)V

    :cond_1
    sget-object v0, Lcom/android/server/wm/OpScreenCompat;->mScreenCompatLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/OpScreenCompat;->mScreenCompatDefaultEnabledList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x3

    if-eqz v1, :cond_2

    const/16 v1, 0x64

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/OpScreenCompat;->mScreenCompatDefaultFullscreenList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/wm/OpScreenCompat;->mScreenCompatSystemAppList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1

    :cond_4
    :goto_0
    const/16 v1, 0x66

    :goto_1
    if-ne v1, v2, :cond_5

    monitor-exit v0

    return-void

    :cond_5
    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_6

    const-string v3, "OpScreenCompat"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDefaultForScreenCompat pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mode="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " caller:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v3, p0, Lcom/android/server/wm/OpScreenCompat;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v4, 0x3ee

    invoke-virtual {v3, v4, p2, p1}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result v3

    if-ne v3, v2, :cond_7

    const-string v2, "OpScreenCompat"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateDefaultForScreenCompat set mode="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " for pkg:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " uid="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/server/wm/OpScreenCompat;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {p0, v4, p2, p1, v1}, Landroid/app/AppOpsManager;->setMode(IILjava/lang/String;I)V

    :cond_7
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public updateSizeForResolutionChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/OpScreenCompat;->mWms:Lcom/android/server/wm/WindowManagerService;

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iget-object p0, p0, Lcom/android/server/wm/OpScreenCompat;->mWms:Lcom/android/server/wm/WindowManagerService;

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    iget p0, v0, Landroid/graphics/Point;->y:I

    sput p0, Lcom/android/server/wm/OpScreenCompat;->sMaxScreenSize:I

    iget p0, v0, Landroid/graphics/Point;->x:I

    div-int/lit8 p0, p0, 0x9

    mul-int/lit8 p0, p0, 0x10

    sput p0, Lcom/android/server/wm/OpScreenCompat;->sLimitedScreenSize:I

    sget p0, Lcom/android/server/wm/OpScreenCompat;->sMaxScreenSize:I

    sget v0, Lcom/android/server/wm/OpScreenCompat;->sLimitedScreenSize:I

    sub-int v0, p0, v0

    div-int/lit8 v0, v0, 0x2

    sput v0, Lcom/android/server/wm/OpScreenCompat;->sDefaultMargin:I

    sget v0, Lcom/android/server/wm/OpScreenCompat;->sDefaultMargin:I

    sput v0, Lcom/android/server/wm/OpScreenCompat;->sLandLeft:I

    add-int/lit8 v1, v0, -0x14

    sput v1, Lcom/android/server/wm/OpScreenCompat;->sPortTop:I

    sub-int v1, p0, v0

    add-int/lit8 v1, v1, -0x14

    sput v1, Lcom/android/server/wm/OpScreenCompat;->sPortBottom:I

    sub-int/2addr p0, v0

    sput p0, Lcom/android/server/wm/OpScreenCompat;->sLandRight:I

    return-void
.end method
