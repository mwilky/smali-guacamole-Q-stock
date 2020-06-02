.class public Lcom/oneplus/android/server/scene/OemSceneActivityController;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/scene/OemSceneActivityController$AllowWhiteActivity;,
        Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String; = "OemSceneActivityController"

.field private static nga:Lcom/oneplus/android/server/scene/OemSceneActivityController$AllowWhiteActivity;

.field private static final oga:I

.field private static final pga:I

.field private static sInstance:Lcom/oneplus/android/server/scene/OemSceneActivityController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLock:Ljava/lang/Object;

.field private mResolver:Landroid/content/ContentResolver;

.field private mga:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->DEBUG:Z

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;->noa:Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x1

    shl-int v0, v1, v0

    sput v0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->oga:I

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;->ooa:Lcom/oneplus/android/server/scene/OemSceneActivityController$ActivityMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    shl-int v0, v1, v0

    sput v0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->pga:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->mga:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->mResolver:Landroid/content/ContentResolver;

    iget-object p1, p0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->mLock:Ljava/lang/Object;

    monitor-enter p1

    :try_start_0
    iput v0, p0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->mga:I

    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public static canActivityGo(Landroid/content/pm/ActivityInfo;)Z
    .locals 2

    const/4 v0, 0x1

    if-nez p0, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/oneplus/android/server/scene/OemSceneActivityController;->sInstance:Lcom/oneplus/android/server/scene/OemSceneActivityController;

    if-nez v1, :cond_1

    const-string p0, "OemSceneActivityController"

    const-string v1, "Not registerOIMCFunctions yet, just let it go!"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oneplus/android/server/scene/OemSceneActivityController;->getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/OemSceneActivityController;

    move-result-object v0

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/scene/OemSceneActivityController;->tsu(Landroid/content/pm/ActivityInfo;)Z

    move-result p0

    return p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/OemSceneActivityController;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->sInstance:Lcom/oneplus/android/server/scene/OemSceneActivityController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneActivityController;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/scene/OemSceneActivityController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->sInstance:Lcom/oneplus/android/server/scene/OemSceneActivityController;

    :cond_0
    sget-object p0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->sInstance:Lcom/oneplus/android/server/scene/OemSceneActivityController;

    return-object p0
.end method

.method private qeg(IZ)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    :try_start_0
    iget p2, p0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->mga:I

    shl-int p1, v1, p1

    or-int/2addr p1, p2

    iput p1, p0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->mga:I

    goto :goto_0

    :cond_0
    iget p2, p0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->mga:I

    shl-int p1, v1, p1

    not-int p1, p1

    and-int/2addr p1, p2

    iput p1, p0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->mga:I

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

.method private rtg(Landroid/content/pm/ActivityInfo;)Z
    .locals 1

    sget-object p0, Lcom/oneplus/android/server/scene/ZenModeObserver;->whiteListInZenMode:Ljava/util/ArrayList;

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-boolean p0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->DEBUG:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "forbid Activity in ZenMode. pkg="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", Info="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OemSceneActivityController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private tsu(Landroid/content/pm/ActivityInfo;)Z
    .locals 3

    iget v0, p0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->mga:I

    sget v1, Lcom/oneplus/android/server/scene/OemSceneActivityController;->oga:I

    and-int/2addr v1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    return v2

    :cond_0
    sget v1, Lcom/oneplus/android/server/scene/OemSceneActivityController;->pga:I

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneActivityController;->rtg(Landroid/content/pm/ActivityInfo;)Z

    move-result p0

    return p0

    :cond_1
    return v2
.end method

.method static synthetic zta(Lcom/oneplus/android/server/scene/OemSceneActivityController;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/android/server/scene/OemSceneActivityController;->qeg(IZ)V

    return-void
.end method


# virtual methods
.method public lf()Lcom/oneplus/android/server/scene/OemSceneActivityController$AllowWhiteActivity;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->nga:Lcom/oneplus/android/server/scene/OemSceneActivityController$AllowWhiteActivity;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/scene/OemSceneActivityController$AllowWhiteActivity;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/scene/OemSceneActivityController$AllowWhiteActivity;-><init>(Lcom/oneplus/android/server/scene/OemSceneActivityController;)V

    sput-object v0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->nga:Lcom/oneplus/android/server/scene/OemSceneActivityController$AllowWhiteActivity;

    :cond_0
    sget-object p0, Lcom/oneplus/android/server/scene/OemSceneActivityController;->nga:Lcom/oneplus/android/server/scene/OemSceneActivityController$AllowWhiteActivity;

    return-object p0
.end method
