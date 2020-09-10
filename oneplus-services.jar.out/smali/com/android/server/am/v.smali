.class public Lcom/android/server/am/v;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/am/IOpRestartProcessManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/v$igw;,
        Lcom/android/server/am/v$kth;,
        Lcom/android/server/am/v$sis;,
        Lcom/android/server/am/v$ssp;,
        Lcom/android/server/am/v$rtg;,
        Lcom/android/server/am/v$tsu;,
        Lcom/android/server/am/v$cno;,
        Lcom/android/server/am/v$bio;,
        Lcom/android/server/am/v$zta;,
        Lcom/android/server/am/v$you;
    }
.end annotation


# static fields
.field private static Ay:Z = false

.field private static By:J = 0x0L

.field public static final CONFIG_NAME:Ljava/lang/String; = "OpRestartProcessManager"

.field private static Cy:Ljava/lang/String; = null

.field private static final DEBUG:Z

.field private static Dy:Ljava/lang/String; = null

.field private static Ey:Lcom/android/server/am/v; = null

.field private static Fy:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/am/v$bio;",
            ">;"
        }
    .end annotation
.end field

.field private static Gy:I = 0x0

.field private static Hy:J = 0x0L

.field private static Iy:J = 0x0L

.field private static Jy:Z = false

.field private static Ky:Z = false

.field private static Ly:J = 0x0L

.field private static Mf:Lcom/android/server/OpPowerControllerService; = null

.field private static My:J = 0x0L

.field private static Ny:J = 0x0L

.field private static Oy:J = 0x0L

.field public static final PROPERTY_RESTART_PROCESS:Ljava/lang/String; = "persist.sys.rp.debug"

.field private static Py:I = 0x0

.field private static Qy:J = 0x0L

.field private static Ry:J = 0x0L

.field private static Sy:J = 0x0L

.field private static final TAG:Ljava/lang/String; = "OpRestartProcessManager"

.field private static Ty:I = 0x0

.field private static Uy:D = 0.0

.field private static Vy:I = 0x0

.field private static Wy:I = 0x0

.field private static Xy:I = 0x0

.field private static Yy:I = 0x0

.field private static Zy:I = 0x0

.field private static _y:I = 0x0

.field public static final hy:Ljava/lang/String; = "Ultra Used Packages"

.field public static final iy:Ljava/lang/String; = "High Used Packages"

.field public static final jy:Ljava/lang/String; = "General Used Packages"

.field public static final ky:Ljava/lang/String; = "Seldom Used Packages"

.field public static final ly:Ljava/lang/String; = "Low Used Packages"

.field public static final my:Ljava/lang/String; = "persist.sys.rp.enable"

.field public static final ny:Ljava/lang/String; = "persist.sys.rp.enableall"

.field public static final oy:Ljava/lang/String; = "OpRestartProcessManager"

.field public static final py:Ljava/lang/String; = "record.txt"

.field public static final qy:Ljava/lang/String; = "record_backup.txt"

.field private static final ry:Ljava/lang/String; = "valid_duration"

.field private static final sy:Ljava/lang/String; = "general_duration"

.field private static final ty:Ljava/lang/String; = "enable_module"

.field private static final uy:Ljava/lang/String; = "enable_all_module"

.field public static vy:Z

.field public static wy:Z

.field public static xy:Z

.field private static yy:Z

.field private static zy:Z


# instance fields
.field private Cf:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/v$you;",
            ">;"
        }
    .end annotation
.end field

.field private _x:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/v$bio;",
            ">;"
        }
    .end annotation
.end field

.field private ay:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/v$bio;",
            ">;>;"
        }
    .end annotation
.end field

.field private by:Ljava/io/File;

.field private cy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/v$zta;",
            ">;"
        }
    .end annotation
.end field

.field private dy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ey:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private fy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private gy:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseDir:Ljava/io/File;

.field private mFile:Landroid/util/AtomicFile;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/v;->DEBUG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/v;->vy:Z

    sput-boolean v0, Lcom/android/server/am/v;->wy:Z

    sput-boolean v0, Lcom/android/server/am/v;->xy:Z

    sput-boolean v0, Lcom/android/server/am/v;->yy:Z

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/am/v;->zy:Z

    sput-boolean v0, Lcom/android/server/am/v;->Ay:Z

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/android/server/am/v;->By:J

    const-string v4, ""

    sput-object v4, Lcom/android/server/am/v;->Cy:Ljava/lang/String;

    sput-object v4, Lcom/android/server/am/v;->Dy:Ljava/lang/String;

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    sput-object v4, Lcom/android/server/am/v;->Fy:Ljava/util/HashMap;

    sput v0, Lcom/android/server/am/v;->Gy:I

    sput-wide v2, Lcom/android/server/am/v;->Hy:J

    sput-wide v2, Lcom/android/server/am/v;->Iy:J

    sput-boolean v1, Lcom/android/server/am/v;->Jy:Z

    sput-boolean v1, Lcom/android/server/am/v;->Ky:Z

    const-wide/16 v2, 0x3e8

    sput-wide v2, Lcom/android/server/am/v;->Ly:J

    const-wide/32 v2, 0x5265c00

    sput-wide v2, Lcom/android/server/am/v;->My:J

    const-wide/32 v4, 0x1b7740

    sput-wide v4, Lcom/android/server/am/v;->Ny:J

    sput-wide v4, Lcom/android/server/am/v;->Oy:J

    const/16 v0, 0x1e

    sput v0, Lcom/android/server/am/v;->Py:I

    sput-wide v2, Lcom/android/server/am/v;->Qy:J

    const-string v0, "ro.build.beta"

    const-string v4, "0"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "1"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v2, 0x2932e00

    :cond_0
    sput-wide v2, Lcom/android/server/am/v;->Ry:J

    const-wide/32 v2, 0x36ee80

    sput-wide v2, Lcom/android/server/am/v;->Sy:J

    const/16 v0, 0x14

    sput v0, Lcom/android/server/am/v;->Ty:I

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    sput-wide v2, Lcom/android/server/am/v;->Uy:D

    const/4 v0, 0x3

    sput v0, Lcom/android/server/am/v;->Vy:I

    sput v1, Lcom/android/server/am/v;->Wy:I

    sput v1, Lcom/android/server/am/v;->Xy:I

    sget v1, Lcom/android/server/am/v;->Vy:I

    sget v2, Lcom/android/server/am/v;->Wy:I

    add-int/2addr v1, v2

    sget v2, Lcom/android/server/am/v;->Xy:I

    add-int/2addr v1, v2

    sput v1, Lcom/android/server/am/v;->Yy:I

    sput v0, Lcom/android/server/am/v;->Zy:I

    const/16 v0, 0xa

    sput v0, Lcom/android/server/am/v;->_y:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/v;->_x:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/v;->ay:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/v;->Cf:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/v;->cy:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/v;->dy:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/v;->ey:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/v;->fy:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/v;->gy:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/v;->_x:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/v;->ay:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/v;->Cf:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/v;->cy:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/v;->dy:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/v;->ey:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/v;->fy:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/v;->gy:Ljava/util/ArrayList;

    :try_start_0
    sget-boolean v0, Lcom/android/server/am/v;->DEBUG:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "OpRestartProcessManager"

    if-eqz v0, :cond_0

    :try_start_1
    const-string v0, "OpRestartProcessManager start"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "persist.sys.rp.enable"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/v;->Jy:Z

    const-string v0, "persist.sys.rp.enableall"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/v;->Ky:Z

    sget-boolean v0, Lcom/android/server/am/v;->Ky:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/v;->Jy:Z

    if-nez v0, :cond_1

    sput-boolean v2, Lcom/android/server/am/v;->Jy:Z

    :cond_1
    sget-boolean v0, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROPERTY_RESTART_PROCESS_ENABLE : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/v;->Jy:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PROPERTY_RESTART_PROCESS_ENABLEAL : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/v;->Ky:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput-object p1, p0, Lcom/android/server/am/v;->mBaseDir:Ljava/io/File;

    iget-object p1, p0, Lcom/android/server/am/v;->mBaseDir:Ljava/io/File;

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/server/am/v;->mBaseDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-nez p1, :cond_3

    iget-object p1, p0, Lcom/android/server/am/v;->mBaseDir:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    :cond_3
    sget-boolean p1, Lcom/android/server/am/v;->Ky:Z

    if-nez p1, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/v;->doCleanData(J)V

    :cond_4
    sget-boolean p1, Lcom/android/server/am/v;->Ky:Z

    if-eqz p1, :cond_5

    invoke-virtual {p0}, Lcom/android/server/am/v;->initEssentials()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_0
    sput-object p0, Lcom/android/server/am/v;->Ey:Lcom/android/server/am/v;

    sget-object p0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_power_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {p0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/OpPowerControllerService;

    sput-object p0, Lcom/android/server/am/v;->Mf:Lcom/android/server/OpPowerControllerService;

    return-void
.end method

.method private Ba(Z)Ljava/util/HashMap;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/v$bio;",
            ">;>;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/am/v;->Jy:Z

    if-eqz v0, :cond_12

    sget-boolean v0, Lcom/android/server/am/v;->Ky:Z

    if-nez v0, :cond_0

    goto/16 :goto_a

    :cond_0
    sget-object v0, Lcom/android/server/am/v;->Mf:Lcom/android/server/OpPowerControllerService;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/server/OpPowerControllerService;->isInDeepIdle()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/server/am/v;->Wn()V

    :goto_1
    iget-object p0, p0, Lcom/android/server/am/v;->ay:Ljava/util/HashMap;

    return-object p0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-eqz p1, :cond_3

    :goto_2
    invoke-virtual {p0}, Lcom/android/server/am/v;->rankAllPkgs()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/v;->Hy:J

    goto :goto_3

    :cond_3
    sget-boolean p1, Lcom/android/server/am/v;->xy:Z

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/android/server/am/v;->vy:Z

    if-eqz p1, :cond_1

    sget-boolean p1, Lcom/android/server/am/v;->wy:Z

    if-eqz p1, :cond_1

    sget-wide v2, Lcom/android/server/am/v;->Hy:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/android/server/am/v;->Oy:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Need to rank due to duration is over : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v0, Lcom/android/server/am/v;->Oy:J

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpRestartProcessManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :goto_3
    monitor-enter p0

    :try_start_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/v;->ay:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    iget-object v2, p0, Lcom/android/server/am/v;->_x:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sget-boolean v3, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "OpRestartProcessManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Total packages : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v2, p0, Lcom/android/server/am/v;->Cf:Ljava/util/ArrayList;

    new-instance v3, Lcom/android/server/am/v$sis;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/android/server/am/v$sis;-><init>(Lcom/android/server/am/u;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v2, 0x0

    move v3, v2

    :goto_4
    sget v5, Lcom/android/server/am/v;->Xy:I

    if-ge v3, v5, :cond_5

    iget-object v5, p0, Lcom/android/server/am/v;->Cf:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/v$you;

    iget-object v5, v5, Lcom/android/server/am/v$you;->Dx:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_5
    sget v3, Lcom/android/server/am/v;->Xy:I

    :goto_5
    sget v5, Lcom/android/server/am/v;->Xy:I

    sget v6, Lcom/android/server/am/v;->Wy:I

    add-int/2addr v5, v6

    if-ge v3, v5, :cond_6

    iget-object v5, p0, Lcom/android/server/am/v;->Cf:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/v$you;

    iget-object v5, v5, Lcom/android/server/am/v$you;->Dx:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_6
    sget v3, Lcom/android/server/am/v;->Xy:I

    sget v5, Lcom/android/server/am/v;->Wy:I

    add-int/2addr v3, v5

    :goto_6
    sget v5, Lcom/android/server/am/v;->Yy:I

    if-ge v3, v5, :cond_7

    iget-object v5, p0, Lcom/android/server/am/v;->Cf:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/v$you;

    iget-object v5, v5, Lcom/android/server/am/v$you;->Dx:Ljava/util/ArrayList;

    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_7
    sget-boolean v3, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz v3, :cond_8

    move v3, v2

    :goto_7
    sget v5, Lcom/android/server/am/v;->Yy:I

    if-ge v3, v5, :cond_8

    iget-object v5, p0, Lcom/android/server/am/v;->Cf:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/v$you;

    invoke-virtual {v5}, Lcom/android/server/am/v$you;->dump()V

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_8
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    sget v5, Lcom/android/server/am/v;->_y:I

    sub-int/2addr v3, v5

    if-lez v3, :cond_b

    new-instance v5, Lcom/android/server/am/v$kth;

    invoke-direct {v5, v4}, Lcom/android/server/am/v$kth;-><init>(Lcom/android/server/am/u;)V

    invoke-static {p1, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v5, v2

    :goto_8
    if-ge v5, v3, :cond_b

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_a

    add-int/lit8 v6, v6, -0x1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/v$bio;

    sget-boolean v7, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz v7, :cond_9

    const-string v7, "OpRestartProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Choose "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/am/v$bio;->sis(Lcom/android/server/am/v$bio;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from High to General"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_a
    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_b
    sget v3, Lcom/android/server/am/v;->Zy:I

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v3, v5

    if-lez v3, :cond_e

    new-instance v5, Lcom/android/server/am/v$kth;

    invoke-direct {v5, v4}, Lcom/android/server/am/v$kth;-><init>(Lcom/android/server/am/u;)V

    invoke-static {v0, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move v5, v2

    :goto_9
    if-ge v5, v3, :cond_e

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_d

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/v$bio;

    sget-boolean v7, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz v7, :cond_c

    const-string v7, "OpRestartProcessManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Choose "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/am/v$bio;->sis(Lcom/android/server/am/v$bio;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " from General to High"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_d
    add-int/lit8 v5, v5, 0x1

    goto :goto_9

    :cond_e
    new-instance v2, Lcom/android/server/am/v$kth;

    invoke-direct {v2, v4}, Lcom/android/server/am/v$kth;-><init>(Lcom/android/server/am/u;)V

    invoke-static {p1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Lcom/android/server/am/v$kth;

    invoke-direct {v2, v4}, Lcom/android/server/am/v$kth;-><init>(Lcom/android/server/am/u;)V

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    new-instance v2, Lcom/android/server/am/v$kth;

    invoke-direct {v2, v4}, Lcom/android/server/am/v$kth;-><init>(Lcom/android/server/am/u;)V

    invoke-static {v1, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, p0, Lcom/android/server/am/v;->ay:Ljava/util/HashMap;

    const-string v3, "High Used Packages"

    invoke-virtual {v2, v3, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v2, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz v2, :cond_f

    const-string v2, "OpRestartProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "KEY_HIGH_USED_PACKAGES : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object p1, p0, Lcom/android/server/am/v;->ay:Ljava/util/HashMap;

    const-string v2, "General Used Packages"

    invoke-virtual {p1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz p1, :cond_10

    const-string p1, "OpRestartProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "KEY_GENERAL_USED_PACKAGES : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_10
    iget-object p1, p0, Lcom/android/server/am/v;->ay:Ljava/util/HashMap;

    const-string v0, "Low Used Packages"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean p1, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz p1, :cond_11

    const-string p1, "OpRestartProcessManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "KEY_LOW_USED_PACKAGES : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    monitor-exit p0

    goto/16 :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_12
    :goto_a
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "sEnableModule is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/v;->Jy:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", sEnableAllModule is "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/android/server/am/v;->Ky:Z

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpRestartProcessManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/am/v;->ay:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    goto/16 :goto_1
.end method

.method static synthetic Cb()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/v;->Qy:J

    return-wide v0
.end method

.method private Nn()V
    .locals 10

    sget-object v0, Lcom/android/server/am/v;->Fy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sget-object v4, Lcom/android/server/am/v;->Fy:Ljava/util/HashMap;

    invoke-virtual {v4, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/v$bio;

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v5, v4

    move v4, v2

    move v2, v1

    :goto_1
    sget v7, Lcom/android/server/am/v;->Yy:I

    if-ge v2, v7, :cond_1

    iget-object v7, p0, Lcom/android/server/am/v;->Cf:Ljava/util/ArrayList;

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/v$you;

    invoke-virtual {v7}, Lcom/android/server/am/v$you;->lc()Lcom/android/server/am/v$zta;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/android/server/am/v;->you(Lcom/android/server/am/v$bio;Lcom/android/server/am/v$zta;)D

    move-result-wide v7

    cmpg-double v9, v7, v5

    if-gez v9, :cond_0

    move v4, v2

    move-wide v5, v7

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v3, v4}, Lcom/android/server/am/v$bio;->n(I)V

    iget-object v2, p0, Lcom/android/server/am/v;->Cf:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/v$you;

    invoke-virtual {v2, v3}, Lcom/android/server/am/v$you;->zta(Lcom/android/server/am/v$bio;)V

    move v2, v4

    goto :goto_0

    :cond_2
    return-void
.end method

.method private On()V
    .locals 12

    iget-object p0, p0, Lcom/android/server/am/v;->Cf:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/v$you;

    invoke-virtual {v0}, Lcom/android/server/am/v$you;->mc()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide/16 v3, 0x0

    move-wide v5, v3

    move-wide v7, v5

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/v$bio;

    iget-wide v10, v9, Lcom/android/server/am/v$bio;->Qx:D

    add-double/2addr v3, v10

    iget-wide v10, v9, Lcom/android/server/am/v$bio;->Rx:D

    add-double/2addr v5, v10

    iget-wide v9, v9, Lcom/android/server/am/v$bio;->Sx:D

    add-double/2addr v7, v9

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcom/android/server/am/v$you;->lc()Lcom/android/server/am/v$zta;

    move-result-object v0

    if-lez v2, :cond_0

    int-to-double v1, v2

    div-double/2addr v3, v1

    div-double/2addr v5, v1

    div-double/2addr v7, v1

    iput-wide v3, v0, Lcom/android/server/am/v$zta;->mX:D

    iput-wide v5, v0, Lcom/android/server/am/v$zta;->mY:D

    iput-wide v7, v0, Lcom/android/server/am/v$zta;->Cx:D

    goto :goto_0

    :cond_2
    return-void
.end method

.method private Pn()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/v;->dy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/am/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object p0, p0, Lcom/android/server/am/v;->fy:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private Qn()V
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/v;->Cf:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/v$you;

    invoke-virtual {v0}, Lcom/android/server/am/v$you;->clear()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private Rn()Ljava/util/ArrayList;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/v$zta;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object p0, p0, Lcom/android/server/am/v;->Cf:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/v$you;

    invoke-virtual {v1}, Lcom/android/server/am/v$you;->lc()Lcom/android/server/am/v$zta;

    move-result-object v1

    new-instance v9, Lcom/android/server/am/v$zta;

    iget-wide v3, v1, Lcom/android/server/am/v$zta;->mX:D

    iget-wide v5, v1, Lcom/android/server/am/v$zta;->mY:D

    iget-wide v7, v1, Lcom/android/server/am/v$zta;->Cx:D

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/v$zta;-><init>(DDD)V

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private Sn()Z
    .locals 4

    sget-boolean p0, Lcom/android/server/am/v;->Ay:Z

    if-nez p0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/android/server/am/v;->By:J

    sub-long/2addr v0, v2

    sget-wide v2, Lcom/android/server/am/v;->Ry:J

    cmp-long p0, v0, v2

    if-gez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/server/am/v;->Ay:Z

    return p0
.end method

.method private Tn()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/v;->cy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/server/am/v;->Cf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    :goto_0
    sget v1, Lcom/android/server/am/v;->Yy:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/v;->cy:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/server/am/v$zta;

    invoke-direct {v2}, Lcom/android/server/am/v$zta;-><init>()V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    new-instance v1, Lcom/android/server/am/v$you;

    invoke-direct {v1, v0}, Lcom/android/server/am/v$you;-><init>(I)V

    iget-object v2, p0, Lcom/android/server/am/v;->cy:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/v$zta;

    invoke-virtual {v1, v2}, Lcom/android/server/am/v$you;->zta(Lcom/android/server/am/v$zta;)V

    iget-object v2, p0, Lcom/android/server/am/v;->Cf:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private Un()V
    .locals 3

    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/am/v;->mBaseDir:Ljava/io/File;

    const-string v2, "record.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/am/v;->mBaseDir:Ljava/io/File;

    const-string v2, "record_backup.txt"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Use "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpRestartProcessManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-enter p0

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/am/v;->you(Ljava/io/File;)V

    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_2
    :goto_1
    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/server/am/v;->xy:Z

    return-void
.end method

.method private Vn()V
    .locals 2

    const-string p0, "persist.sys.rp.debug"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "persist.sys.rp.debug : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpRestartProcessManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/android/server/am/v;->My:J

    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/android/server/am/v;->Qy:J

    const/4 p0, 0x5

    sput p0, Lcom/android/server/am/v;->Py:I

    const-wide/32 v0, 0x493e0

    sput-wide v0, Lcom/android/server/am/v;->Ry:J

    :cond_0
    return-void
.end method

.method private Wn()V
    .locals 10

    const/4 v0, 0x0

    const-string v1, "persist.sys.rp.debug"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/v;->ay:Ljava/util/HashMap;

    const-string v2, "High Used Packages"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/am/v;->ay:Ljava/util/HashMap;

    const-string v3, "General Used Packages"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/v;->ay:Ljava/util/HashMap;

    const-string v4, "Low Used Packages"

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    if-nez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/server/am/v;->ay:Ljava/util/HashMap;

    const-string v5, "High Used Packages"

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    if-nez v2, :cond_2

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/server/am/v;->ay:Ljava/util/HashMap;

    const-string v5, "General Used Packages"

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-nez v3, :cond_3

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/android/server/am/v;->ay:Ljava/util/HashMap;

    const-string v5, "Low Used Packages"

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    iget-object v4, p0, Lcom/android/server/am/v;->dy:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/v$bio;

    invoke-virtual {v8}, Lcom/android/server/am/v$bio;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_6
    move v6, v0

    :goto_1
    if-nez v6, :cond_4

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/v$bio;

    invoke-virtual {v7}, Lcom/android/server/am/v$bio;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_8
    iget-object v4, p0, Lcom/android/server/am/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_9
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_d

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/v$bio;

    invoke-virtual {v8}, Lcom/android/server/am/v$bio;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_a

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v6

    goto :goto_3

    :cond_b
    move v7, v0

    :goto_3
    if-nez v7, :cond_9

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_c
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/v$bio;

    invoke-virtual {v8}, Lcom/android/server/am/v$bio;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_c

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_d
    iget-object v4, p0, Lcom/android/server/am/v;->fy:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_e
    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_f
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_10

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/v$bio;

    invoke-virtual {v8}, Lcom/android/server/am/v$bio;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v7, v6

    goto :goto_5

    :cond_10
    move v7, v0

    :goto_5
    if-nez v7, :cond_e

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_11
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/v$bio;

    invoke-virtual {v8}, Lcom/android/server/am/v$bio;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_11

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_12
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/v;->DEBUG:Z

    return v0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/v;->Ay:Z

    return v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/v;->Ay:Z

    return p0
.end method

.method static synthetic access$3300()I
    .locals 1

    sget v0, Lcom/android/server/am/v;->Gy:I

    return v0
.end method

.method static synthetic access$3500()I
    .locals 1

    sget v0, Lcom/android/server/am/v;->Py:I

    return v0
.end method

.method static synthetic access$400()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/v;->By:J

    return-wide v0
.end method

.method static synthetic access$500()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/android/server/am/v;->Fy:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic bvj(J)J
    .locals 0

    sput-wide p0, Lcom/android/server/am/v;->Iy:J

    return-wide p0
.end method

.method private calculate()V
    .locals 12

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :cond_0
    :goto_0
    if-nez v1, :cond_4

    sget v3, Lcom/android/server/am/v;->Ty:I

    if-le v3, v2, :cond_4

    invoke-direct {p0}, Lcom/android/server/am/v;->Qn()V

    invoke-direct {p0}, Lcom/android/server/am/v;->Rn()Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {p0}, Lcom/android/server/am/v;->Nn()V

    invoke-direct {p0}, Lcom/android/server/am/v;->On()V

    add-int/lit8 v2, v2, 0x1

    invoke-direct {p0}, Lcom/android/server/am/v;->Rn()Ljava/util/ArrayList;

    move-result-object v4

    const-wide/16 v5, 0x0

    move v7, v0

    move-wide v8, v5

    :goto_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v7, v10, :cond_1

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/v$zta;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/v$zta;

    invoke-static {v10, v11}, Lcom/android/server/am/v;->zta(Lcom/android/server/am/v$zta;Lcom/android/server/am/v$zta;)D

    move-result-wide v10

    add-double/2addr v8, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_1
    sget-boolean v3, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/am/v;->Cf:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/v$you;

    iget-object v4, v4, Lcom/android/server/am/v$you;->Ex:Lcom/android/server/am/v$zta;

    invoke-virtual {v4}, Lcom/android/server/am/v$zta;->dump()V

    goto :goto_2

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Iteration: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OpRestartProcessManager"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Centroid distances: "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    cmpl-double v3, v8, v5

    if-nez v3, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_0

    :cond_4
    iget-object p0, p0, Lcom/android/server/am/v;->Cf:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/v$you;

    invoke-virtual {v0}, Lcom/android/server/am/v$you;->lc()Lcom/android/server/am/v$zta;

    move-result-object v1

    new-instance v9, Lcom/android/server/am/v$zta;

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const-wide/16 v7, 0x0

    move-object v2, v9

    invoke-direct/range {v2 .. v8}, Lcom/android/server/am/v$zta;-><init>(DDD)V

    invoke-static {v1, v9}, Lcom/android/server/am/v;->zta(Lcom/android/server/am/v$zta;Lcom/android/server/am/v$zta;)D

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/am/v$you;->Fx:D

    goto :goto_3

    :cond_5
    return-void
.end method

.method static synthetic cgv(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/v;->zy:Z

    return p0
.end method

.method public static getInstance()Lcom/android/server/am/v;
    .locals 4

    sget-object v0, Lcom/android/server/am/v;->Ey:Lcom/android/server/am/v;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/v;

    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/"

    const-string v3, "OpRestartProcessManager"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/android/server/am/v;-><init>(Ljava/io/File;)V

    sput-object v0, Lcom/android/server/am/v;->Ey:Lcom/android/server/am/v;

    :cond_0
    sget-object v0, Lcom/android/server/am/v;->Ey:Lcom/android/server/am/v;

    return-object v0
.end method

.method static synthetic ibl(J)J
    .locals 0

    sput-wide p0, Lcom/android/server/am/v;->By:J

    return-wide p0
.end method

.method private igw(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/v$bio;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object p0

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/v$bio;

    invoke-static {v0}, Lcom/android/server/am/v$bio;->sis(Lcom/android/server/am/v$bio;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method static synthetic o(I)I
    .locals 0

    sput p0, Lcom/android/server/am/v;->Gy:I

    return p0
.end method

.method private static qeg(J)V
    .locals 0

    sput-wide p0, Lcom/android/server/am/v;->Ly:J

    return-void
.end method

.method public static resolveConfig(Lorg/json/JSONArray;)V
    .locals 7

    const-string v0, "OpRestartProcessManager"

    if-nez p0, :cond_0

    const-string p0, "[OnlineConfig] RestartProcess jsonArray is null"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_8

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/am/v;->DEBUG:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "value"

    if-eqz v4, :cond_1

    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Online config : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", value : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v4, "valid_duration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/am/v;->Ly:J

    goto :goto_2

    :cond_2
    const-string v4, "general_duration"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/am/v;->My:J

    goto :goto_2

    :cond_3
    const-string v4, "enable_module"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/android/server/am/v;->Jy:Z

    goto :goto_2

    :cond_4
    const-string v4, "enable_all_module"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-virtual {v2, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    sget-boolean v3, Lcom/android/server/am/v;->Ky:Z

    if-eq v3, v2, :cond_6

    if-eqz v2, :cond_5

    invoke-static {}, Lcom/android/server/am/v;->getInstance()Lcom/android/server/am/v;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/v;->initEssentials()V

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/android/server/am/v;->getInstance()Lcom/android/server/am/v;

    move-result-object v3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/v;->doCleanData(J)V

    :cond_6
    :goto_1
    sput-boolean v2, Lcom/android/server/am/v;->Ky:Z

    :cond_7
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_8
    sget-boolean p0, Lcom/android/server/am/v;->Ky:Z

    if-eqz p0, :cond_9

    sget-boolean p0, Lcom/android/server/am/v;->Jy:Z

    if-nez p0, :cond_9

    const/4 p0, 0x1

    sput-boolean p0, Lcom/android/server/am/v;->Jy:Z

    :cond_9
    sget-boolean p0, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz p0, :cond_a

    const-string p0, "[OnlineConfig] OpRestartProcessManager updated complete"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolve error message:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_3
    return-void
.end method

.method private rtg([Ljava/lang/String;)V
    .locals 2

    array-length v0, p1

    add-int/lit8 v1, v0, -0x2

    aget-object v1, p1, v1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    const-string v0, "high"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/v;->dy:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const-string v0, "general"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/am/v;->ey:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    const-string v0, "low"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/am/v;->fy:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method static synthetic sc()J
    .locals 2

    sget-wide v0, Lcom/android/server/am/v;->Ly:J

    return-wide v0
.end method

.method private sis([Ljava/lang/String;)V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/v;->gy:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x2

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/v;->gy:Ljava/util/ArrayList;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/android/server/am/v;->Fy:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    iget-object v1, p0, Lcom/android/server/am/v;->gy:Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/v$bio;

    invoke-static {v2}, Lcom/android/server/am/v$bio;->sis(Lcom/android/server/am/v$bio;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "OpRestartProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/v$bio;

    invoke-static {v0}, Lcom/android/server/am/v$bio;->sis(Lcom/android/server/am/v$bio;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " due to it\'s not in specific list"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Ljava/util/Iterator;->remove()V

    goto :goto_1

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private ssp([Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    const/4 v0, 0x2

    :try_start_0
    aget-object v0, p1, v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, 0x3

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x4

    aget-object p1, p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    sput v0, Lcom/android/server/am/v;->Vy:I

    sput v1, Lcom/android/server/am/v;->Wy:I

    sput p1, Lcom/android/server/am/v;->Xy:I

    sget p1, Lcom/android/server/am/v;->Vy:I

    sget v0, Lcom/android/server/am/v;->Wy:I

    add-int/2addr p1, v0

    sget v0, Lcom/android/server/am/v;->Xy:I

    add-int/2addr p1, v0

    sput p1, Lcom/android/server/am/v;->Yy:I

    sget-boolean p1, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "OpRestartProcessManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "NUM_CLUSTERS_HIGH : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/v;->Vy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", NUM_CLUSTERS_GENERAL : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/v;->Wy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", NUM_CLUSTERS_LOW : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/am/v;->Xy:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/android/server/am/v;->cy:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/server/am/v;->Cf:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/server/am/v;->Tn()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method private tsu([Ljava/lang/String;)V
    .locals 2

    array-length v0, p1

    add-int/lit8 v1, v0, -0x2

    aget-object v1, p1, v1

    add-int/lit8 v0, v0, -0x1

    aget-object p1, p1, v0

    iget-object v0, p0, Lcom/android/server/am/v;->dy:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/am/v;->fy:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    const-string v0, "high"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/am/v;->dy:Ljava/util/ArrayList;

    :goto_0
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    const-string v0, "general"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/am/v;->ey:Ljava/util/ArrayList;

    goto :goto_0

    :cond_1
    const-string v0, "low"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/server/am/v;->fy:Ljava/util/ArrayList;

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method private static vdw(J)V
    .locals 0

    sput-wide p0, Lcom/android/server/am/v;->My:J

    return-void
.end method

.method private wtn(Ljava/util/ArrayList;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/v$cno;",
            ">;)V"
        }
    .end annotation

    move-object/from16 v0, p1

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/v$cno;

    invoke-virtual {v2}, Lcom/android/server/am/v$cno;->pc()V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/android/server/am/v$tsu;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/server/am/v$tsu;-><init>(Lcom/android/server/am/u;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/v$cno;

    invoke-static {v1}, Lcom/android/server/am/v$cno;->bio(Lcom/android/server/am/v$cno;)J

    move-result-wide v3

    sget-boolean v1, Lcom/android/server/am/v;->DEBUG:Z

    const-string v5, "OpRestartProcessManager"

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Max day duration : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const-string v7, " got score "

    const-wide/16 v8, 0x0

    if-eqz v6, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/v$cno;

    invoke-static {v6}, Lcom/android/server/am/v$cno;->bio(Lcom/android/server/am/v$cno;)J

    move-result-wide v10

    cmp-long v8, v10, v8

    if-eqz v8, :cond_2

    sget-wide v8, Lcom/android/server/am/v;->Uy:D

    invoke-static {v6}, Lcom/android/server/am/v$cno;->bio(Lcom/android/server/am/v$cno;)J

    move-result-wide v10

    long-to-double v10, v10

    long-to-double v12, v3

    div-double/2addr v10, v12

    mul-double/2addr v8, v10

    invoke-static {v6, v8, v9}, Lcom/android/server/am/v$cno;->you(Lcom/android/server/am/v$cno;D)D

    sget-boolean v8, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lcom/android/server/am/v$cno;->kth(Lcom/android/server/am/v$cno;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/am/v$cno;->ssp(Lcom/android/server/am/v$cno;)D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v7, " in DayDuration for duration : "

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/am/v$cno;->bio(Lcom/android/server/am/v$cno;)J

    move-result-wide v6

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    new-instance v1, Lcom/android/server/am/v$rtg;

    invoke-direct {v1, v2}, Lcom/android/server/am/v$rtg;-><init>(Lcom/android/server/am/u;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/v$cno;

    invoke-static {v1}, Lcom/android/server/am/v$cno;->zta(Lcom/android/server/am/v$cno;)J

    move-result-wide v3

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/v$cno;

    invoke-static {v1}, Lcom/android/server/am/v$cno;->sis(Lcom/android/server/am/v$cno;)J

    move-result-wide v10

    sub-long/2addr v3, v10

    sget-boolean v1, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Max LRU Diff : "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/v$cno;

    invoke-static {v6}, Lcom/android/server/am/v$cno;->zta(Lcom/android/server/am/v$cno;)J

    move-result-wide v10

    invoke-static {v6}, Lcom/android/server/am/v$cno;->sis(Lcom/android/server/am/v$cno;)J

    move-result-wide v12

    sub-long/2addr v10, v12

    cmp-long v12, v10, v8

    if-gez v12, :cond_5

    goto :goto_2

    :cond_5
    sget-wide v12, Lcom/android/server/am/v;->Uy:D

    long-to-double v14, v10

    long-to-double v8, v3

    div-double/2addr v14, v8

    mul-double/2addr v12, v14

    invoke-static {v6, v12, v13}, Lcom/android/server/am/v$cno;->sis(Lcom/android/server/am/v$cno;D)D

    sget-boolean v8, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz v8, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v6}, Lcom/android/server/am/v$cno;->kth(Lcom/android/server/am/v$cno;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6}, Lcom/android/server/am/v$cno;->cno(Lcom/android/server/am/v$cno;)D

    move-result-wide v12

    invoke-virtual {v8, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, " in DayLRU for LRU diff : "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-wide/16 v8, 0x0

    goto :goto_2

    :cond_7
    new-instance v1, Lcom/android/server/am/v$ssp;

    invoke-direct {v1, v2}, Lcom/android/server/am/v$ssp;-><init>(Lcom/android/server/am/u;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/v$cno;

    invoke-static {v1}, Lcom/android/server/am/v$cno;->you(Lcom/android/server/am/v$cno;)J

    move-result-wide v1

    sget-boolean v3, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Max launch times : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/v$cno;

    invoke-static {v3}, Lcom/android/server/am/v$cno;->you(Lcom/android/server/am/v$cno;)J

    move-result-wide v8

    const-wide/16 v10, 0x0

    cmp-long v4, v8, v10

    if-eqz v4, :cond_9

    sget-wide v8, Lcom/android/server/am/v;->Uy:D

    invoke-static {v3}, Lcom/android/server/am/v$cno;->you(Lcom/android/server/am/v$cno;)J

    move-result-wide v12

    long-to-double v12, v12

    long-to-double v14, v1

    div-double/2addr v12, v14

    mul-double/2addr v8, v12

    invoke-static {v3, v8, v9}, Lcom/android/server/am/v$cno;->zta(Lcom/android/server/am/v$cno;D)D

    sget-boolean v4, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Lcom/android/server/am/v$cno;->kth(Lcom/android/server/am/v$cno;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/am/v$cno;->rtg(Lcom/android/server/am/v$cno;)D

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, " in DayLaunchTimes for launch times : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3}, Lcom/android/server/am/v$cno;->you(Lcom/android/server/am/v$cno;)J

    move-result-wide v8

    invoke-virtual {v4, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_a
    return-void
.end method

.method static synthetic x(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/server/am/v;->Cy:Ljava/lang/String;

    return-object p0
.end method

.method private static you(Lcom/android/server/am/v$bio;Lcom/android/server/am/v$zta;)D
    .locals 12

    iget-wide v0, p0, Lcom/android/server/am/v$bio;->Qx:D

    iget-wide v2, p0, Lcom/android/server/am/v$bio;->Rx:D

    iget-wide v4, p0, Lcom/android/server/am/v$bio;->Sx:D

    iget-wide v6, p1, Lcom/android/server/am/v$zta;->mX:D

    iget-wide v8, p1, Lcom/android/server/am/v$zta;->mY:D

    iget-wide v10, p1, Lcom/android/server/am/v$zta;->Cx:D

    invoke-static/range {v0 .. v11}, Lcom/android/server/am/v;->zta(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic you(Lcom/android/server/am/v;)Landroid/util/AtomicFile;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/v;->mFile:Landroid/util/AtomicFile;

    return-object p0
.end method

.method private you(Ljava/io/File;)V
    .locals 10

    const-string v0, "HasWarmUp : "

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    const-string p1, ""

    sget-boolean v1, Lcom/android/server/am/v;->DEBUG:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-string v3, "OpRestartProcessManager"

    if-eqz v1, :cond_0

    :try_start_2
    const-string v1, "Read old record"

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_6

    sget-boolean v4, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz v4, :cond_1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v5, Lcom/android/server/am/v;->Ay:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "WarmUpTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v5, Lcom/android/server/am/v;->By:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    const-string v4, "HasWarmUp :"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const-string v5, ":"

    const/4 v6, 0x1

    if-eqz v4, :cond_2

    :try_start_3
    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/v;->Ay:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/am/v;->Ay:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v3, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const-string v4, "WarmUpTime :"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v4, v6

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    sput-wide v4, Lcom/android/server/am/v;->By:J

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "StartWarmUpTime : "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v4, Lcom/android/server/am/v;->By:J

    invoke-virtual {v1, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_3
    const-string v4, "PackageName:"

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    const/4 v7, 0x0

    if-eqz v4, :cond_4

    invoke-virtual {v1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, v6

    invoke-virtual {v1, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    new-instance v1, Lcom/android/server/am/v$bio;

    invoke-direct {v1, p1, v7, v6}, Lcom/android/server/am/v$bio;-><init>(Ljava/lang/String;ZZ)V

    sget-object v4, Lcom/android/server/am/v;->Fy:Ljava/util/HashMap;

    invoke-virtual {v4, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    :cond_4
    const-string v4, "\\s+"

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    new-instance v4, Lcom/android/server/am/v$cno;

    invoke-direct {v4, p1}, Lcom/android/server/am/v$cno;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x3

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Lcom/android/server/am/v$cno;->zta(Lcom/android/server/am/v$cno;J)J

    const/4 v5, 0x2

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-static {v4, v8, v9}, Lcom/android/server/am/v$cno;->rtg(Lcom/android/server/am/v$cno;J)J

    aget-object v5, v1, v6

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/server/am/v$cno;->you(Lcom/android/server/am/v$cno;J)J

    aget-object v5, v1, v7

    invoke-static {v5}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/server/am/v$cno;->sis(Lcom/android/server/am/v$cno;J)J

    array-length v5, v1

    const/16 v6, 0x8

    if-ge v5, v6, :cond_5

    invoke-static {v4, v7}, Lcom/android/server/am/v$cno;->zta(Lcom/android/server/am/v$cno;Z)Z

    goto :goto_2

    :cond_5
    const/4 v5, 0x4

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/am/v$cno;->zta(Lcom/android/server/am/v$cno;Z)Z

    const/4 v5, 0x5

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/server/am/v$cno;->zta(Lcom/android/server/am/v$cno;D)D

    const/4 v5, 0x6

    aget-object v5, v1, v5

    invoke-static {v5}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/server/am/v$cno;->you(Lcom/android/server/am/v$cno;D)D

    const/4 v5, 0x7

    aget-object v1, v1, v5

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/server/am/v$cno;->sis(Lcom/android/server/am/v$cno;D)D

    :goto_2
    sget-object v1, Lcom/android/server/am/v;->Fy:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/v$bio;

    invoke-static {v1}, Lcom/android/server/am/v$bio;->cno(Lcom/android/server/am/v$bio;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/server/am/v;->Fy:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/v$bio;

    invoke-static {v4}, Lcom/android/server/am/v$cno;->sis(Lcom/android/server/am/v$cno;)J

    move-result-wide v5

    invoke-static {v1, v5, v6}, Lcom/android/server/am/v$bio;->zta(Lcom/android/server/am/v$bio;J)J

    invoke-static {v4}, Lcom/android/server/am/v$cno;->zta(Lcom/android/server/am/v$cno;)J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v1, v5, v7

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/am/v;->Fy:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/v$bio;

    invoke-static {v4}, Lcom/android/server/am/v$cno;->zta(Lcom/android/server/am/v$cno;)J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Lcom/android/server/am/v$bio;->you(Lcom/android/server/am/v$bio;J)J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    :cond_6
    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catchall_0
    move-exception p0

    goto :goto_5

    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v2, v1

    goto :goto_5

    :catch_1
    move-exception p1

    :goto_3
    :try_start_5
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lcom/android/server/am/v;->doCleanData(J)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_7

    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    goto :goto_4

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_4
    return-void

    :goto_5
    if-eqz v2, :cond_8

    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_6

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_8
    :goto_6
    throw p0
.end method

.method private static zta(DDDDDD)D
    .locals 0

    sub-double/2addr p0, p6

    const-wide/high16 p6, 0x4000000000000000L    # 2.0

    invoke-static {p0, p1, p6, p7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    sub-double/2addr p2, p8

    invoke-static {p2, p3, p6, p7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    add-double/2addr p0, p2

    sub-double/2addr p4, p10

    invoke-static {p4, p5, p6, p7}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p2

    add-double/2addr p0, p2

    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic zta(Lcom/android/server/am/v$bio;Lcom/android/server/am/v$zta;)D
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/am/v;->you(Lcom/android/server/am/v$bio;Lcom/android/server/am/v$zta;)D

    move-result-wide p0

    return-wide p0
.end method

.method private static zta(Lcom/android/server/am/v$zta;Lcom/android/server/am/v$zta;)D
    .locals 12

    iget-wide v0, p0, Lcom/android/server/am/v$zta;->mX:D

    iget-wide v2, p0, Lcom/android/server/am/v$zta;->mY:D

    iget-wide v4, p0, Lcom/android/server/am/v$zta;->Cx:D

    iget-wide v6, p1, Lcom/android/server/am/v$zta;->mX:D

    iget-wide v8, p1, Lcom/android/server/am/v$zta;->mY:D

    iget-wide v10, p1, Lcom/android/server/am/v$zta;->Cx:D

    invoke-static/range {v0 .. v11}, Lcom/android/server/am/v;->zta(DDDDDD)D

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic zta(Lcom/android/server/am/v;Landroid/util/AtomicFile;)Landroid/util/AtomicFile;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/v;->mFile:Landroid/util/AtomicFile;

    return-object p1
.end method

.method static synthetic zta(Lcom/android/server/am/v;)Ljava/io/File;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/v;->mBaseDir:Ljava/io/File;

    return-object p0
.end method


# virtual methods
.method public a(Z)V
    .locals 7

    sget-boolean v0, Lcom/android/server/am/v;->Ky:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "OpRestartProcessManager"

    if-nez p1, :cond_2

    sget-boolean p1, Lcom/android/server/am/v;->zy:Z

    if-nez p1, :cond_1

    sget-wide v3, Lcom/android/server/am/v;->Iy:J

    sub-long v3, v0, v3

    sget-wide v5, Lcom/android/server/am/v;->Ny:J

    cmp-long p1, v3, v5

    if-gez p1, :cond_2

    :cond_1
    const-string p0, "No need to write old record"

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sget-boolean p1, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string p1, "Start to write old record"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/4 p1, 0x1

    sput-boolean p1, Lcom/android/server/am/v;->zy:Z

    new-instance p1, Lcom/android/server/am/u;

    invoke-direct {p1, p0, v2, v0, v1}, Lcom/android/server/am/u;-><init>(Lcom/android/server/am/v;Ljava/lang/String;J)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public doAddNewPackages(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/android/server/am/v;->getInstance()Lcom/android/server/am/v;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/v;->y(Ljava/lang/String;)V

    return-void
.end method

.method public doCleanAllData(J)V
    .locals 0

    invoke-static {}, Lcom/android/server/am/v;->getInstance()Lcom/android/server/am/v;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/v;->gwm(J)V

    return-void
.end method

.method public doCleanData(J)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpRestartProcessManager"

    const-string v1, "Start to clean data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/am/v;->Fy:Ljava/util/HashMap;

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

    sget-object v2, Lcom/android/server/am/v;->Fy:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/v$bio;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/am/v$bio;->ywr(J)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/v;->Ay:Z

    sput-wide p1, Lcom/android/server/am/v;->By:J

    sput v0, Lcom/android/server/am/v;->Gy:I

    const-wide/16 p1, 0x0

    sput-wide p1, Lcom/android/server/am/v;->Hy:J

    sput-wide p1, Lcom/android/server/am/v;->Iy:J

    iget-object p1, p0, Lcom/android/server/am/v;->_x:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->clear()V

    iget-object p1, p0, Lcom/android/server/am/v;->ay:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/android/server/am/v;->mBaseDir:Ljava/io/File;

    const-string v0, "record.txt"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_2
    new-instance p1, Ljava/io/File;

    iget-object p2, p0, Lcom/android/server/am/v;->mBaseDir:Ljava/io/File;

    const-string v0, "record_backup.txt"

    invoke-direct {p1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->delete()Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception p1

    :try_start_2
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_3
    :goto_1
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-boolean p0, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz p0, :cond_4

    const-string p0, "OpRestartProcessManager"

    const-string p1, "Finish cleaning data"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return-void

    :catchall_0
    move-exception p1

    :try_start_3
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p1
.end method

.method public doDump(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/am/v;->getInstance()Lcom/android/server/am/v;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/am/v;->zta(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z)V

    return-void
.end method

.method public doGetGeneralUsedPackageList(Z)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/am/v;->getInstance()Lcom/android/server/am/v;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/v;->vdw(Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public doGetHighUsedPackageList(Z)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/am/v;->getInstance()Lcom/android/server/am/v;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/v;->qeg(Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public doGetLowUsedPackageList(Z)Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/am/v;->getInstance()Lcom/android/server/am/v;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/v;->ivd(Z)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public doHandleCommand([Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/android/server/am/v;->getInstance()Lcom/android/server/am/v;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/v;->zta([Ljava/lang/String;)V

    return-void
.end method

.method public doIsHighUsedPackages(Ljava/lang/String;)Z
    .locals 0

    invoke-static {}, Lcom/android/server/am/v;->getInstance()Lcom/android/server/am/v;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/v;->z(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public doRemovePackage(Ljava/lang/String;)V
    .locals 0

    invoke-static {}, Lcom/android/server/am/v;->getInstance()Lcom/android/server/am/v;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/v;->removePackage(Ljava/lang/String;)V

    return-void
.end method

.method public doUpdateDuration(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    invoke-static {}, Lcom/android/server/am/v;->getInstance()Lcom/android/server/am/v;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/v;->zta(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public doUpdateLaunchTime(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 0

    invoke-static {}, Lcom/android/server/am/v;->getInstance()Lcom/android/server/am/v;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/server/am/v;->you(Landroid/content/Context;Ljava/lang/String;J)V

    return-void
.end method

.method public doWriteRecord(Z)V
    .locals 0

    invoke-static {}, Lcom/android/server/am/v;->getInstance()Lcom/android/server/am/v;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/server/am/v;->a(Z)V

    return-void
.end method

.method public getInitPackagesFromSystemReady()Z
    .locals 0

    sget-boolean p0, Lcom/android/server/am/v;->wy:Z

    return p0
.end method

.method public gwm(J)V
    .locals 8

    sget-boolean v0, Lcom/android/server/am/v;->wy:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-boolean v2, Lcom/android/server/am/v;->DEBUG:Z

    const-string v3, "OpRestartProcessManager"

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Old time : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", new time : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sub-long v0, p1, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    sget-wide v6, Lcom/android/server/am/v;->Sy:J

    cmp-long v2, v4, v6

    if-gez v2, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Normal time diff : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    sget-boolean v0, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "Clean all data due to time is changed"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/android/server/am/v;->doCleanData(J)V

    return-void
.end method

.method public initEssentials()V
    .locals 4

    invoke-direct {p0}, Lcom/android/server/am/v;->Tn()V

    invoke-direct {p0}, Lcom/android/server/am/v;->Un()V

    invoke-direct {p0}, Lcom/android/server/am/v;->Vn()V

    sget-wide v0, Lcom/android/server/am/v;->By:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-nez p0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/am/v;->By:J

    :cond_0
    return-void
.end method

.method public ivd(Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/am/v;->Sn()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/v;->Jy:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/v;->Ky:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/v;->Ba(Z)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "Low Used Packages"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/server/am/v;->igw(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public qeg(Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/am/v;->Sn()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/v;->Jy:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/v;->Ky:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/v;->Ba(Z)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "High Used Packages"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/server/am/v;->igw(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public rankAllPkgs()V
    .locals 25

    move-object/from16 v1, p0

    sget-object v0, Lcom/android/server/am/v;->Fy:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/am/v;->Jy:Z

    if-eqz v0, :cond_13

    sget-boolean v0, Lcom/android/server/am/v;->Ky:Z

    if-nez v0, :cond_1

    goto/16 :goto_a

    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, v1, Lcom/android/server/am/v;->_x:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sget-boolean v6, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz v6, :cond_2

    const-string v6, "OpRestartProcessManager"

    const-string v7, "Start to rank all packages"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v6, Lcom/android/server/am/v;->Fy:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x0

    move v8, v7

    :cond_3
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    const/4 v10, 0x1

    if-eqz v9, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    sget-object v11, Lcom/android/server/am/v;->Fy:Ljava/util/HashMap;

    invoke-virtual {v11, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/server/am/v$bio;

    invoke-virtual {v9}, Lcom/android/server/am/v$bio;->pc()V

    invoke-virtual {v9, v4, v5}, Lcom/android/server/am/v$bio;->oif(J)Z

    move-result v9

    if-eqz v9, :cond_3

    move v8, v10

    goto :goto_0

    :cond_4
    if-eqz v8, :cond_5

    const-string v6, "OpRestartProcessManager"

    const-string v8, "CurrentMaxDayRecord has changed, update all packages again"

    invoke-static {v6, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v6, Lcom/android/server/am/v;->Fy:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v9, Lcom/android/server/am/v;->Fy:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/v$bio;

    invoke-virtual {v8, v4, v5}, Lcom/android/server/am/v$bio;->oif(J)Z

    goto :goto_1

    :cond_5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move v5, v7

    :goto_2
    sget v6, Lcom/android/server/am/v;->Gy:I

    if-ge v5, v6, :cond_c

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    sget-object v6, Lcom/android/server/am/v;->Fy:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    sget-object v9, Lcom/android/server/am/v;->Fy:Ljava/util/HashMap;

    invoke-virtual {v9, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/v$bio;

    invoke-static {v8}, Lcom/android/server/am/v$bio;->cno(Lcom/android/server/am/v$bio;)Ljava/util/ArrayList;

    move-result-object v9

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v5, v9, :cond_8

    invoke-static {v8}, Lcom/android/server/am/v$bio;->cno(Lcom/android/server/am/v$bio;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/v$cno;

    invoke-static {v8}, Lcom/android/server/am/v$cno;->zta(Lcom/android/server/am/v$cno;)J

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmp-long v9, v11, v13

    if-eqz v9, :cond_7

    invoke-static {v8}, Lcom/android/server/am/v$cno;->igw(Lcom/android/server/am/v$cno;)J

    move-result-wide v11

    invoke-static {v8}, Lcom/android/server/am/v$cno;->wtn(Lcom/android/server/am/v$cno;)J

    move-result-wide v13

    add-long/2addr v11, v13

    invoke-static {v8, v11, v12}, Lcom/android/server/am/v$cno;->tsu(Lcom/android/server/am/v$cno;J)J

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    :cond_7
    sget v9, Lcom/android/server/am/v;->Gy:I

    sub-int/2addr v9, v10

    if-eq v5, v9, :cond_6

    invoke-static {v8, v10}, Lcom/android/server/am/v$cno;->zta(Lcom/android/server/am/v$cno;Z)Z

    goto :goto_3

    :cond_8
    const-string v9, "OpRestartProcessManager"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Package "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/android/server/am/v$bio;->sis(Lcom/android/server/am/v$bio;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " size is abnrmal "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v8}, Lcom/android/server/am/v$bio;->cno(Lcom/android/server/am/v$bio;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", max size is "

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v8, Lcom/android/server/am/v;->Gy:I

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-eqz v6, :cond_b

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/v$cno;

    invoke-static {v6}, Lcom/android/server/am/v$cno;->tsu(Lcom/android/server/am/v$cno;)Z

    move-result v6

    if-eqz v6, :cond_a

    goto :goto_5

    :cond_a
    invoke-direct {v1, v4}, Lcom/android/server/am/v;->wtn(Ljava/util/ArrayList;)V

    sget v6, Lcom/android/server/am/v;->Gy:I

    sub-int/2addr v6, v10

    if-eq v5, v6, :cond_b

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_4
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/v$cno;

    invoke-static {v8, v10}, Lcom/android/server/am/v$cno;->zta(Lcom/android/server/am/v$cno;Z)Z

    goto :goto_4

    :cond_b
    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_2

    :cond_c
    sget-object v4, Lcom/android/server/am/v;->Fy:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_6
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    sget-object v6, Lcom/android/server/am/v;->Fy:Ljava/util/HashMap;

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/v$bio;

    move v6, v7

    :goto_7
    sget v8, Lcom/android/server/am/v;->Gy:I

    if-ge v6, v8, :cond_d

    invoke-static {v5}, Lcom/android/server/am/v$bio;->cno(Lcom/android/server/am/v$bio;)Ljava/util/ArrayList;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/am/v$cno;

    iget-wide v11, v5, Lcom/android/server/am/v$bio;->Qx:D

    invoke-static {v8}, Lcom/android/server/am/v$cno;->rtg(Lcom/android/server/am/v$cno;)D

    move-result-wide v13

    add-int/lit8 v6, v6, 0x1

    move-object v15, v8

    int-to-double v7, v6

    mul-double/2addr v13, v7

    add-double/2addr v11, v13

    iput-wide v11, v5, Lcom/android/server/am/v$bio;->Qx:D

    iget-wide v11, v5, Lcom/android/server/am/v$bio;->Rx:D

    invoke-static {v15}, Lcom/android/server/am/v$cno;->ssp(Lcom/android/server/am/v$cno;)D

    move-result-wide v13

    mul-double/2addr v13, v7

    add-double/2addr v11, v13

    iput-wide v11, v5, Lcom/android/server/am/v$bio;->Rx:D

    iget-wide v11, v5, Lcom/android/server/am/v$bio;->Sx:D

    invoke-static {v15}, Lcom/android/server/am/v$cno;->cno(Lcom/android/server/am/v$cno;)D

    move-result-wide v13

    mul-double/2addr v13, v7

    add-double/2addr v11, v13

    iput-wide v11, v5, Lcom/android/server/am/v$bio;->Sx:D

    const/4 v7, 0x0

    goto :goto_7

    :cond_d
    iget-wide v6, v5, Lcom/android/server/am/v$bio;->Qx:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v6, v5, Lcom/android/server/am/v$bio;->Rx:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-wide v6, v5, Lcom/android/server/am/v$bio;->Sx:D

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, v1, Lcom/android/server/am/v;->_x:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x0

    goto :goto_6

    :cond_e
    iget-object v4, v1, Lcom/android/server/am/v;->_x:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/server/am/v$igw;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/android/server/am/v$igw;-><init>(Lcom/android/server/am/u;)V

    invoke-static {v4, v5}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {v2}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Double;

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Double;

    invoke-virtual {v7}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v7

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Double;

    invoke-virtual {v9}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v11

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v9

    sub-int/2addr v9, v10

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v13

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v10

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    move-wide v15, v5

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v10

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sub-double v17, v13, v15

    sub-double v19, v4, v7

    sub-double v21, v2, v11

    sget-boolean v0, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz v0, :cond_f

    const-string v0, "OpRestartProcessManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "maxScoreX : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v9, ", maxScoreY : "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", maxScoreZ : "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OpRestartProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "minScoreX : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v3, v15

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ", minScoreY : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v5, ", minScoreZ : "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_f
    move-wide v3, v15

    :goto_8
    const/4 v0, 0x0

    :goto_9
    sget v2, Lcom/android/server/am/v;->Yy:I

    if-ge v0, v2, :cond_11

    iget-object v2, v1, Lcom/android/server/am/v;->cy:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/v$zta;

    int-to-double v5, v0

    mul-double v13, v5, v17

    sget v9, Lcom/android/server/am/v;->Yy:I

    sub-int/2addr v9, v10

    move-wide/from16 v23, v11

    int-to-double v10, v9

    div-double/2addr v13, v10

    add-double v9, v3, v13

    iput-wide v9, v2, Lcom/android/server/am/v$zta;->mX:D

    iget-object v2, v1, Lcom/android/server/am/v;->cy:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/v$zta;

    mul-double v9, v5, v19

    sget v11, Lcom/android/server/am/v;->Yy:I

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    int-to-double v11, v11

    div-double/2addr v9, v11

    add-double/2addr v9, v7

    iput-wide v9, v2, Lcom/android/server/am/v$zta;->mY:D

    iget-object v2, v1, Lcom/android/server/am/v;->cy:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/v$zta;

    mul-double v5, v5, v21

    sget v9, Lcom/android/server/am/v;->Yy:I

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    int-to-double v11, v9

    div-double/2addr v5, v11

    add-double v11, v23, v5

    iput-wide v11, v2, Lcom/android/server/am/v$zta;->Cx:D

    sget-boolean v2, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz v2, :cond_10

    iget-object v2, v1, Lcom/android/server/am/v;->cy:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/v$zta;

    invoke-virtual {v2}, Lcom/android/server/am/v$zta;->dump()V

    :cond_10
    add-int/lit8 v0, v0, 0x1

    move-wide/from16 v11, v23

    goto :goto_9

    :cond_11
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/v;->calculate()V

    sget-boolean v0, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz v0, :cond_12

    const-string v0, "OpRestartProcessManager"

    const-string v2, "Finish all packages"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_12
    monitor-exit p0

    goto :goto_a

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/v;->doCleanData(J)V

    :cond_13
    :goto_a
    return-void
.end method

.method public removePackage(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/am/v;->Dy:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpRestartProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Removing package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/am/v;->Fy:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "OpRestartProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setInitPackagesFromSystemReady(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/server/am/v;->wy:Z

    return-void
.end method

.method public setScreenState(Z)V
    .locals 0

    sget-boolean p0, Lcom/android/server/am/v;->Ky:Z

    if-nez p0, :cond_0

    return-void

    :cond_0
    sput-boolean p1, Lcom/android/server/am/v;->yy:Z

    sget-boolean p0, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Screen off is "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/android/server/am/v;->yy:Z

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpRestartProcessManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method public setUpdatingPackage(Ljava/lang/String;)V
    .locals 0

    sput-object p1, Lcom/android/server/am/v;->Dy:Ljava/lang/String;

    return-void
.end method

.method public systemReady(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "RestartProcess"

    const-string v1, "Initial from system ready"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-class v1, Landroid/content/pm/LauncherApps;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/LauncherApps;

    const/4 v1, 0x0

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v2

    invoke-virtual {p1, v1, v2}, Landroid/content/pm/LauncherApps;->getActivityList(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/LauncherActivityInfo;

    invoke-virtual {v1}, Landroid/content/pm/LauncherActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v0}, Lcom/android/server/am/v;->tsu(Ljava/util/ArrayList;)V

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/am/v;->setInitPackagesFromSystemReady(Z)V

    return-void
.end method

.method public tsu(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v2, Lcom/android/server/am/v;->Fy:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/server/am/v;->Fy:Ljava/util/HashMap;

    new-instance v3, Lcom/android/server/am/v$bio;

    invoke-direct {v3, v0, v1, v1}, Lcom/android/server/am/v$bio;-><init>(Ljava/lang/String;ZZ)V

    invoke-virtual {v2, v0, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-boolean v1, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OpRestartProcessManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "initialAllPackage : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sput-boolean v1, Lcom/android/server/am/v;->zy:Z

    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public vdw(Z)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/am/v;->Sn()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/v;->Jy:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/am/v;->Ky:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/am/v;->Ba(Z)Ljava/util/HashMap;

    move-result-object p1

    const-string v0, "General Used Packages"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    invoke-direct {p0, p1}, Lcom/android/server/am/v;->igw(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0

    :cond_1
    :goto_0
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    return-object p0
.end method

.method public y(Ljava/lang/String;)V
    .locals 3

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/am/v;->Fy:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/v;->Fy:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-boolean v0, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OpRestartProcessManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adding package : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v0, Lcom/android/server/am/v$bio;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/server/am/v$bio;-><init>(Ljava/lang/String;ZZ)V

    sget-object v1, Lcom/android/server/am/v;->Fy:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public you(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveStartActivity(Landroid/content/Context;Ljava/lang/String;)V

    sget-boolean p1, Lcom/android/server/am/v;->Ky:Z

    if-nez p1, :cond_0

    return-void

    :cond_0
    sget-boolean p1, Lcom/android/server/am/v;->yy:Z

    if-eqz p1, :cond_2

    sget-boolean p0, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz p0, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Screen is off, skip updateLaunchTime : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpRestartProcessManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    monitor-enter p0

    :try_start_0
    sget-boolean p1, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz p1, :cond_3

    const-string p1, "OpRestartProcessManager"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Update Total Launch Times :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-object p1, Lcom/android/server/am/v;->Fy:Ljava/util/HashMap;

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/v$bio;

    if-nez p1, :cond_5

    sput-object p2, Lcom/android/server/am/v;->Cy:Ljava/lang/String;

    sget-boolean p1, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz p1, :cond_4

    const-string p1, "OpRestartProcessManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "sLastRunningPackage (null) : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p3, Lcom/android/server/am/v;->Cy:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    monitor-exit p0

    return-void

    :cond_5
    invoke-virtual {p1, p3, p4}, Lcom/android/server/am/v$bio;->qbh(J)V

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/server/am/v$bio;->zta(Lcom/android/server/am/v$bio;Z)Z

    sget-object v0, Lcom/android/server/am/v;->Cy:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p1, p2}, Lcom/android/server/am/v$bio;->v(Ljava/lang/String;)V

    :cond_6
    sput-object p2, Lcom/android/server/am/v;->Cy:Ljava/lang/String;

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean p0, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz p0, :cond_7

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Last Running Package : "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/android/server/am/v;->Cy:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " , start time "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpRestartProcessManager"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return-void

    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public z(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/am/v;->Sn()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/am/v;->Jy:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/am/v;->Ky:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/v;->qeg(Z)Ljava/util/ArrayList;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public zta(Landroid/content/Context;Ljava/lang/String;J)V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/v;->Ky:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/am/v;->Fy:Ljava/util/HashMap;

    invoke-virtual {v0, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/v$bio;

    if-eqz v0, :cond_2

    sget-boolean v1, Lcom/android/server/am/v;->yy:Z

    if-eqz v1, :cond_2

    invoke-static {v0}, Lcom/android/server/am/v$bio;->tsu(Lcom/android/server/am/v$bio;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-boolean p1, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz p1, :cond_1

    const-string p1, "OpRestartProcessManager"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Screen is off, skip updateDuration : "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " "

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/am/v$bio;->tsu(Lcom/android/server/am/v$bio;)Z

    move-result p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit p0

    return-void

    :cond_2
    if-nez v0, :cond_3

    monitor-exit p0

    return-void

    :cond_3
    invoke-virtual {v0, p1, p3, p4}, Lcom/android/server/am/v$bio;->zta(Landroid/content/Context;J)V

    const/4 p1, 0x1

    invoke-static {v0, p1}, Lcom/android/server/am/v$bio;->zta(Lcom/android/server/am/v$bio;Z)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zta(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/am/v;->Jy:Z

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/android/server/am/v;->Ky:Z

    if-nez v0, :cond_0

    goto/16 :goto_8

    :cond_0
    monitor-enter p0

    const/4 v0, 0x1

    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/am/v;->Ba(Z)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {p0, v0}, Lcom/android/server/am/v;->a(Z)V

    const-string v2, "Current Restart Whitelist : "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p2, "Classification Whitelist : "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "High used : "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/am/v;->dy:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string p2, "General used : "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/am/v;->ey:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_2
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_3
    const-string p2, "Low used : "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/am/v;->fy:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    if-eqz p3, :cond_6

    const-string p2, "Current Restart Rank : "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "ScoreFG   ScoreLRU   ScoreTimes   Package Name                                           Total Launch Times   Foreground Time                    Last LaunchTime"

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/am/v;->_x:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_4
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/server/am/v$bio;

    invoke-virtual {p3}, Lcom/android/server/am/v$bio;->rc()V

    invoke-static {p3}, Lcom/android/server/am/v$bio;->cno(Lcom/android/server/am/v$bio;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_5
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/v$cno;

    invoke-static {v3}, Lcom/android/server/am/v$cno;->igw(Lcom/android/server/am/v$cno;)J

    move-result-wide v4

    invoke-static {v3}, Lcom/android/server/am/v$cno;->wtn(Lcom/android/server/am/v$cno;)J

    move-result-wide v6

    add-long/2addr v4, v6

    invoke-static {v3, v4, v5}, Lcom/android/server/am/v$cno;->tsu(Lcom/android/server/am/v$cno;J)J

    invoke-static {v3}, Lcom/android/server/am/v$cno;->bio(Lcom/android/server/am/v$cno;)J

    move-result-wide v4

    invoke-static {p3, v4, v5}, Lcom/android/server/am/v$bio;->sis(Lcom/android/server/am/v$bio;J)J

    invoke-static {v3}, Lcom/android/server/am/v$cno;->you(Lcom/android/server/am/v$cno;)J

    move-result-wide v3

    invoke-static {p3, v3, v4}, Lcom/android/server/am/v$bio;->tsu(Lcom/android/server/am/v$bio;J)J

    goto :goto_5

    :cond_5
    const-string v2, "%1$6.2f      %2$6.2f       %3$6.2f      %4$50s  %5$18d  %6$16d   %7$32d"

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v5, p3, Lcom/android/server/am/v$bio;->Rx:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    iget-wide v4, p3, Lcom/android/server/am/v$bio;->Sx:D

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x2

    iget-wide v5, p3, Lcom/android/server/am/v$bio;->Qx:D

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-static {p3}, Lcom/android/server/am/v$bio;->sis(Lcom/android/server/am/v$bio;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x4

    invoke-static {p3}, Lcom/android/server/am/v$bio;->ssp(Lcom/android/server/am/v$bio;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    invoke-static {p3}, Lcom/android/server/am/v$bio;->rtg(Lcom/android/server/am/v$bio;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x6

    invoke-static {p3}, Lcom/android/server/am/v$bio;->you(Lcom/android/server/am/v$bio;)J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p3

    aput-object p3, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_6
    const-string p2, ""

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p2, "Print All type packages : "

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_6
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    invoke-virtual {v1, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, " : "

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " (From big to small)"

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_7
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/v$bio;

    invoke-static {v0}, Lcom/android/server/am/v$bio;->sis(Lcom/android/server/am/v$bio;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_7
    const-string p3, ""

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_8
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_9
    :goto_8
    return-void
.end method

.method public zta([Ljava/lang/String;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/v;->Jy:Z

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/android/server/am/v;->Ky:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    sget-boolean v0, Lcom/android/server/am/v;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OpRestartProcessManager"

    const-string v1, "Handle command :"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    const-string v3, "OpRestartProcessManager"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    array-length v0, p1

    monitor-enter p0

    add-int/lit8 v1, v0, -0x1

    :try_start_0
    aget-object v1, p1, v1

    const-string v2, "cleanall"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/v;->Pn()V

    goto :goto_1

    :cond_2
    const/4 v1, 0x3

    if-le v0, v1, :cond_3

    add-int/lit8 v2, v0, -0x3

    aget-object v2, p1, v2

    const-string v3, "add"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/am/v;->tsu([Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    if-le v0, v1, :cond_4

    add-int/lit8 v1, v0, -0x3

    aget-object v1, p1, v1

    const-string v2, "remove"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0, p1}, Lcom/android/server/am/v;->rtg([Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-le v0, v1, :cond_5

    aget-object v1, p1, v2

    const-string v3, "specific"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-direct {p0, p1}, Lcom/android/server/am/v;->sis([Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const/4 v1, 0x5

    if-ne v0, v1, :cond_6

    aget-object v0, p1, v2

    const-string v1, "clusters"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/android/server/am/v;->ssp([Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    aget-object p1, p1, v2

    const-string v0, "clear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    sget-object p1, Lcom/android/server/am/v;->Fy:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V

    iget-object p1, p0, Lcom/android/server/am/v;->ay:Ljava/util/HashMap;

    invoke-virtual {p1}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_0
    move-exception p1

    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_7
    :goto_1
    monitor-exit p0

    return-void

    :goto_2
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1

    :cond_8
    :goto_3
    return-void
.end method
