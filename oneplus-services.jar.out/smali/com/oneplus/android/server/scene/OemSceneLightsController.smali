.class public Lcom/oneplus/android/server/scene/OemSceneLightsController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/scene/OemSceneLightsController$ZenModeLedController;,
        Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "OemSceneLightsController"

.field private static final Vga:I

.field private static final Wga:I

.field private static sInstance:Lcom/oneplus/android/server/scene/OemSceneLightsController;


# instance fields
.field private Tga:Lcom/oneplus/android/server/scene/OemSceneLightsController$ZenModeLedController;

.field private Uga:I

.field private mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

.field private mContext:Landroid/content/Context;

.field private mLightsManager:Lcom/android/server/lights/LightsManager;

.field private mLock:Ljava/lang/Object;

.field private mNotificationLight:Lcom/android/server/lights/Light;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/scene/OemSceneLightsController;->DEBUG:Z

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;->noa:Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sput v0, Lcom/oneplus/android/server/scene/OemSceneLightsController;->Vga:I

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;->ZEN_MODE:Lcom/oneplus/android/server/scene/OemSceneLightsController$LightsMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    shl-int v0, v1, v0

    sput v0, Lcom/oneplus/android/server/scene/OemSceneLightsController;->Wga:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/android/server/scene/OemSceneLightsController;->Uga:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneLightsController;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneLightsController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneLightsController;->mResolver:Landroid/content/ContentResolver;

    const-class p1, Lcom/android/server/lights/LightsManager;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/lights/LightsManager;

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneLightsController;->mLightsManager:Lcom/android/server/lights/LightsManager;

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneLightsController;->mLightsManager:Lcom/android/server/lights/LightsManager;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneLightsController;->mNotificationLight:Lcom/android/server/lights/Light;

    const-class p1, Landroid/os/BatteryManagerInternal;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/BatteryManagerInternal;

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneLightsController;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneLightsController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iput v0, p0, Lcom/oneplus/android/server/scene/OemSceneLightsController;->Uga:I

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private bio(III)Z
    .locals 3

    iget v0, p0, Lcom/oneplus/android/server/scene/OemSceneLightsController;->Uga:I

    sget v1, Lcom/oneplus/android/server/scene/OemSceneLightsController;->Vga:I

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    sget v1, Lcom/oneplus/android/server/scene/OemSceneLightsController;->Wga:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/android/server/scene/OemSceneLightsController;->igw(III)Z

    move-result p0

    return p0

    :cond_1
    return v2
.end method

.method public static canSetLights(III)Z
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneLightsController;->sInstance:Lcom/oneplus/android/server/scene/OemSceneLightsController;

    if-nez v0, :cond_0

    const-string p0, "OemSceneLightsController"

    const-string p1, "Not registerOIMCFunctions yet, just let it go!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oneplus/android/server/scene/OemSceneLightsController;->getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/OemSceneLightsController;

    move-result-object v0

    invoke-direct {v0, p0, p1, p2}, Lcom/oneplus/android/server/scene/OemSceneLightsController;->bio(III)Z

    move-result p0

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/OemSceneLightsController;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneLightsController;->sInstance:Lcom/oneplus/android/server/scene/OemSceneLightsController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneLightsController;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/scene/OemSceneLightsController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneLightsController;->sInstance:Lcom/oneplus/android/server/scene/OemSceneLightsController;

    :cond_0
    sget-object p0, Lcom/oneplus/android/server/scene/OemSceneLightsController;->sInstance:Lcom/oneplus/android/server/scene/OemSceneLightsController;

    return-object p0
.end method

.method private igw(III)Z
    .locals 1

    const/4 p3, 0x1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    return p3

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneLightsController;->mBatteryManagerInternal:Landroid/os/BatteryManagerInternal;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Landroid/os/BatteryManagerInternal;->isPowered(I)Z

    move-result p0

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    if-eqz p2, :cond_1

    return p1

    :cond_1
    return p3

    :cond_2
    const-string p0, "OemSceneLightsController"

    const-string p2, "prohibit Led in zen mode"

    invoke-static {p0, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private ivd(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneLightsController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    :try_start_0
    iget p2, p0, Lcom/oneplus/android/server/scene/OemSceneLightsController;->Uga:I

    shl-int p1, v1, p1

    or-int/2addr p1, p2

    iput p1, p0, Lcom/oneplus/android/server/scene/OemSceneLightsController;->Uga:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/oneplus/android/server/scene/OemSceneLightsController;->Uga:I

    shl-int p1, v1, p1

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/oneplus/android/server/scene/OemSceneLightsController;->Uga:I

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

.method static synthetic zta(Lcom/oneplus/android/server/scene/OemSceneLightsController;)Lcom/android/server/lights/Light;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneLightsController;->mNotificationLight:Lcom/android/server/lights/Light;

    return-object p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/scene/OemSceneLightsController;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/android/server/scene/OemSceneLightsController;->ivd(IZ)V

    return-void
.end method


# virtual methods
.method public uf()Lcom/oneplus/android/server/scene/OemSceneLightsController$ZenModeLedController;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneLightsController;->Tga:Lcom/oneplus/android/server/scene/OemSceneLightsController$ZenModeLedController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneLightsController$ZenModeLedController;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/scene/OemSceneLightsController$ZenModeLedController;-><init>(Lcom/oneplus/android/server/scene/OemSceneLightsController;)V

    iput-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneLightsController;->Tga:Lcom/oneplus/android/server/scene/OemSceneLightsController$ZenModeLedController;

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/scene/OemSceneLightsController;->Tga:Lcom/oneplus/android/server/scene/OemSceneLightsController$ZenModeLedController;

    return-object p0
.end method
