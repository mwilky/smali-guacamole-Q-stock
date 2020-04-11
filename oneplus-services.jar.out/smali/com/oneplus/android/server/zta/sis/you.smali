.class public Lcom/oneplus/android/server/zta/sis/you;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/am/jankmanager/IJankManager;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/zta/sis/you$rtg;,
        Lcom/oneplus/android/server/zta/sis/you$you;,
        Lcom/oneplus/android/server/zta/sis/you$sis;,
        Lcom/oneplus/android/server/zta/sis/you$zta;,
        Lcom/oneplus/android/server/zta/sis/you$tsu;
    }
.end annotation


# static fields
.field private static AZ:I = 0x1e

.field private static BZ:I = 0x1e

.field private static final CONFIG_NAME:Ljava/lang/String; = "OnePlusJankManager"

.field private static final CZ:Ljava/lang/String; = "persist.sys.jankmanager.levellow"

.field private static final DZ:Ljava/lang/String; = "persist.sys.jankmanager.levelhigh"

.field private static final EZ:Ljava/lang/String; = "persist.sys.jankmanager.long"

.field private static final FZ:Ljava/lang/String; = "persist.sys.jankmanager.levelsystrace"

.field private static GZ:I = 0x5

.field private static HZ:I = 0x1e

.field private static final IZ:Ljava/lang/String; = "persist.sys.jankmanager.tracetime"

.field private static JANK_LEVEL_HIGH:I = 0xf

.field private static JANK_LEVEL_LOW:I = 0x6

.field private static final JZ:Ljava/lang/String; = "sys.boot_completed"

.field private static KZ:Ljava/util/HashMap; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static LZ:Lcom/oneplus/android/server/zta/sis/you$tsu; = null

.field private static final MSG_GET_ONLINECONFIG:I = 0x2

.field private static MZ:Lcom/oneplus/android/server/zta/sis/you$zta; = null

.field private static final NZ:I = 0x3

.field private static final OZ:I = 0x4

.field private static final PZ:I = 0x5

.field private static final QZ:I = 0x6

.field private static final TAG:Ljava/lang/String; = "OnePlusJankManager"

.field private static final gZ:Ljava/lang/String; = "PDJE7FI1KD"

.field private static final hZ:Ljava/lang/String; = "/data/system/jankevent.log"

.field private static final iZ:Ljava/lang/String; = "/data/system/jankmdm.log"

.field private static final jZ:Ljava/lang/String; = "oneplus.intent.action.SAVE_JANK_DATE"

.field private static final kZ:Ljava/lang/String; = "oneplus.intent.action.MDM_JANK_DATE"

.field private static final lZ:Ljava/lang/String; = "lastMDMTime"

.field private static mZ:Z = true

.field private static nZ:Z = true

.field private static oZ:Z = false

.field private static pZ:Z = true

.field private static qZ:Z = false

.field private static rZ:Z = false

.field private static sZ:Z = false

.field private static final sv:I = 0x1

.field private static final tZ:Ljava/lang/String; = "persist.sys.jankmanager.state"

.field private static final uZ:Ljava/lang/String; = "persist.sys.jankmanager.enable"

.field private static final vZ:Ljava/lang/String; = "persist.sys.jankmanager.debug"

.field private static final wZ:Ljava/lang/String; = "persist.sys.jankmanager.mdm"

.field private static final xZ:Ljava/lang/String; = "persist.sys.jankmanager.disk"

.field private static final yZ:Ljava/lang/String; = "persist.sys.jankmanager.systrace"

.field private static final zZ:Ljava/lang/String; = "persist.sys.jankmanager.test"


# instance fields
.field private _Y:Lcom/oneplus/android/server/zta/sis/you$you;

.field private aZ:Lcom/oneplus/os/IOnePlusExService;

.field private bZ:Z

.field private cZ:Z

.field private dZ:Z

.field private eZ:Z

.field private fZ:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mGeneralReceiver:Landroid/content/BroadcastReceiver;

.field private mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/oneplus/android/server/zta/sis/you;->KZ:Ljava/util/HashMap;

    new-instance v0, Lcom/oneplus/android/server/zta/sis/you$tsu;

    invoke-direct {v0}, Lcom/oneplus/android/server/zta/sis/you$tsu;-><init>()V

    sput-object v0, Lcom/oneplus/android/server/zta/sis/you;->LZ:Lcom/oneplus/android/server/zta/sis/you$tsu;

    new-instance v0, Lcom/oneplus/android/server/zta/sis/you$zta;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/android/server/zta/sis/you$zta;-><init>(Lcom/oneplus/android/server/zta/sis/zta;)V

    sput-object v0, Lcom/oneplus/android/server/zta/sis/you;->MZ:Lcom/oneplus/android/server/zta/sis/you$zta;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/server/zta/sis/you;->_Y:Lcom/oneplus/android/server/zta/sis/you$you;

    iput-object v0, p0, Lcom/oneplus/android/server/zta/sis/you;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/oneplus/android/server/zta/sis/you;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/zta/sis/you;->bZ:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/zta/sis/you;->cZ:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/zta/sis/you;->dZ:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/zta/sis/you;->eZ:Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/zta/sis/you;->fZ:Ljava/util/ArrayList;

    new-instance v0, Lcom/oneplus/android/server/zta/sis/zta;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/zta/sis/zta;-><init>(Lcom/oneplus/android/server/zta/sis/you;)V

    iput-object v0, p0, Lcom/oneplus/android/server/zta/sis/you;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    sget-boolean v0, Lcom/oneplus/android/server/zta/sis/you;->oZ:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusJankManager"

    const-string v1, "OnePlusJankManager create"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-object p1, p0, Lcom/oneplus/android/server/zta/sis/you;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/oneplus/android/server/zta/sis/you$you;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/oneplus/android/server/zta/sis/you$you;-><init>(Lcom/oneplus/android/server/zta/sis/you;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oneplus/android/server/zta/sis/you;->_Y:Lcom/oneplus/android/server/zta/sis/you$you;

    return-void
.end method

.method private Ar()V
    .locals 5

    sget-boolean p0, Lcom/oneplus/android/server/zta/sis/you;->oZ:Z

    if-eqz p0, :cond_0

    const-string p0, "OnePlusJankManager"

    const-string v0, "SaveJankHashMapToDisk"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean p0, Lcom/oneplus/android/server/zta/sis/you;->pZ:Z

    if-eqz p0, :cond_4

    new-instance p0, Ljava/util/HashMap;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string p0, "/data/system/jankmdm.log"

    invoke-static {p0}, Lcom/oneplus/android/server/zta/sis/you;->yc(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/oneplus/android/server/zta/sis/you;->KZ:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    add-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/oneplus/android/server/zta/sis/you;->KZ:Ljava/util/HashMap;

    :cond_3
    invoke-static {v0, p0}, Lcom/oneplus/android/server/zta/sis/you;->zta(Ljava/util/HashMap;Ljava/lang/String;)V

    sget-object p0, Lcom/oneplus/android/server/zta/sis/you;->KZ:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_4
    return-void
.end method

.method private Br()V
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/zta/sis/you;->oZ:Z

    const-string v1, "OnePlusJankManager"

    if-eqz v0, :cond_0

    const-string v0, "startBugReport"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/zta/sis/you;->xr()V

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/android/server/zta/sis/you;->aZ:Lcom/oneplus/os/IOnePlusExService;

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/server/OnePlusExService;->getDefault()Lcom/oneplus/os/IOnePlusExService;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/zta/sis/you;->aZ:Lcom/oneplus/os/IOnePlusExService;

    :cond_1
    iget-object p0, p0, Lcom/oneplus/android/server/zta/sis/you;->aZ:Lcom/oneplus/os/IOnePlusExService;

    const-string v0, "jankmanager_outlier"

    invoke-interface {p0, v0}, Lcom/oneplus/os/IOnePlusExService;->dumpJankBugreport(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dumpLightBugreport failed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private Cr()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/zta/sis/you;->oZ:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusJankManager"

    const-string v1, "startTracing start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/zta/sis/you;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.traceur.JANK_START_TRACING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.traceur"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/android/server/zta/sis/you;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/zta/sis/you;->eZ:Z

    return-void
.end method

.method private Dr()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/zta/sis/you;->oZ:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusJankManager"

    const-string v1, "stopTraceForJank"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/zta/sis/you;->Er()V

    invoke-direct {p0}, Lcom/oneplus/android/server/zta/sis/you;->Br()V

    return-void
.end method

.method private Er()V
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/zta/sis/you;->oZ:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusJankManager"

    const-string v1, "stopTracing start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/zta/sis/you;->mContext:Landroid/content/Context;

    if-nez v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.traceur.JANK_STOP_TRACING"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.traceur"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/oneplus/android/server/zta/sis/you;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    iget-object p0, p0, Lcom/oneplus/android/server/zta/sis/you;->_Y:Lcom/oneplus/android/server/zta/sis/you$you;

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    sget v1, Lcom/oneplus/android/server/zta/sis/you;->HZ:I

    mul-int/lit16 v1, v1, 0x3e8

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private static Ml()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "yyyy-MM-dd HH:mm:ss.SSS"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private Ol()Z
    .locals 0

    sget-boolean p0, Lcom/oneplus/android/server/zta/sis/you;->sZ:Z

    return p0
.end method

.method private Rl()V
    .locals 7

    sget-boolean v0, Lcom/oneplus/android/server/zta/sis/you;->oZ:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusJankManager"

    const-string v1, "uploadMDM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "/data/system/jankmdm.log"

    invoke-static {v0}, Lcom/oneplus/android/server/zta/sis/you;->yc(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/oneplus/android/server/zta/sis/you;->KZ:Ljava/util/HashMap;

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/util/HashMap;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    sget-object v2, Lcom/oneplus/android/server/zta/sis/you;->KZ:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_2
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_3
    :goto_1
    sget-object v1, Lcom/oneplus/android/server/zta/sis/you;->KZ:Ljava/util/HashMap;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    goto/16 :goto_3

    :cond_4
    sget-object v1, Lcom/oneplus/android/server/zta/sis/you;->KZ:Ljava/util/HashMap;

    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_b

    const-string v3, "["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_6
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    add-int/lit8 v3, v3, 0x1

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/oneplus/android/server/zta/sis/you;->ire(Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/android/server/zta/sis/you$zta;

    move-result-object v5

    if-eqz v5, :cond_7

    invoke-direct {p0, v5}, Lcom/oneplus/android/server/zta/sis/you;->zta(Lcom/oneplus/android/server/zta/sis/you$zta;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v1}, Ljava/util/HashMap;->size()I

    move-result v5

    if-ge v3, v5, :cond_6

    const-string v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_8
    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "data"

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string v3, "appid"

    const-string v4, "PDJE7FI1KD"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v3

    iget-object p0, p0, Lcom/oneplus/android/server/zta/sis/you;->mContext:Landroid/content/Context;

    const-string v4, "jank_data_new"

    invoke-virtual {v3, p0, v4, v1, v2}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_9
    sget-object p0, Lcom/oneplus/android/server/zta/sis/you;->KZ:Ljava/util/HashMap;

    if-eqz p0, :cond_a

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_a

    sget-object p0, Lcom/oneplus/android/server/zta/sis/you;->KZ:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->clear()V

    :cond_a
    invoke-static {v0}, Lcom/oneplus/android/server/zta/sis/you;->deleteFile(Ljava/lang/String;)V

    :cond_b
    :goto_3
    return-void
.end method

.method static synthetic access$200()Ljava/util/HashMap;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/zta/sis/you;->KZ:Ljava/util/HashMap;

    return-object v0
.end method

.method private static deleteFile(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->isFile()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method private static fto(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_4

    if-nez p1, :cond_0

    goto/16 :goto_5

    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    :cond_1
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/32 v4, 0x200000

    cmp-long v2, v2, v4

    const/4 v3, 0x1

    if-gez v2, :cond_2

    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    goto :goto_0

    :cond_2
    new-instance v2, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/android/server/zta/sis/you;->Ml()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    invoke-virtual {v1, v2}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    :cond_3
    new-instance p1, Ljava/io/FileOutputStream;

    invoke-direct {p1, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    :goto_0
    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\r\n"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_1
    return v3

    :catchall_0
    move-exception p0

    goto :goto_3

    :catch_1
    move-exception p0

    :try_start_3
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :goto_2
    return v0

    :goto_3
    :try_start_5
    invoke-virtual {p1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_4

    :catch_3
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    throw p0

    :catch_4
    move-exception p0

    invoke-virtual {p0}, Ljava/io/FileNotFoundException;->printStackTrace()V

    :cond_4
    :goto_5
    return v0
.end method

.method private getUidForPackage(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/android/server/zta/sis/you;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/high16 v2, 0x400000

    invoke-virtual {p0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :catch_0
    const/4 p0, -0x1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return p0
.end method

.method private static hmo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-times:"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private igw(Landroid/content/Context;)V
    .locals 12

    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "oneplus.intent.action.SAVE_JANK_DATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v8, 0x0

    invoke-static {p1, v8, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    invoke-direct {p0}, Lcom/oneplus/android/server/zta/sis/you;->Ol()Z

    move-result v1

    const-wide/32 v9, 0x36ee80

    if-eqz v1, :cond_0

    const-wide/32 v1, 0xdbba0

    move-wide v5, v1

    goto :goto_0

    :cond_0
    move-wide v5, v9

    :goto_0
    const/4 v2, 0x3

    const-wide/16 v3, 0x3e8

    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    const/4 v11, 0x1

    iput-boolean v11, p0, Lcom/oneplus/android/server/zta/sis/you;->bZ:Z

    new-instance v1, Landroid/content/Intent;

    const-string v2, "oneplus.intent.action.MDM_JANK_DATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v8, v1, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    const/4 v2, 0x2

    invoke-direct {p0}, Lcom/oneplus/android/server/zta/sis/you;->Ol()Z

    move-result p1

    if-eqz p1, :cond_1

    move-wide v5, v9

    goto :goto_1

    :cond_1
    const-wide/32 v5, 0x5265c00

    :goto_1
    move-object v1, v0

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    iput-boolean v11, p0, Lcom/oneplus/android/server/zta/sis/you;->cZ:Z

    return-void
.end method

.method private static ire(Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/android/server/zta/sis/you$zta;
    .locals 6

    sget-object v0, Lcom/oneplus/android/server/zta/sis/you;->MZ:Lcom/oneplus/android/server/zta/sis/you$zta;

    iget-object v1, v0, Lcom/oneplus/android/server/zta/sis/you$zta;->WY:Lcom/oneplus/android/server/zta/sis/you$tsu;

    if-nez v1, :cond_0

    sget-object v1, Lcom/oneplus/android/server/zta/sis/you;->LZ:Lcom/oneplus/android/server/zta/sis/you$tsu;

    iput-object v1, v0, Lcom/oneplus/android/server/zta/sis/you$zta;->WY:Lcom/oneplus/android/server/zta/sis/you$tsu;

    :cond_0
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    return-object v2

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    const-string v5, ":"

    if-ge v1, v3, :cond_4

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    if-eqz v3, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v2

    :cond_4
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/oneplus/android/server/zta/sis/you;->MZ:Lcom/oneplus/android/server/zta/sis/you$zta;

    iget-object v1, v1, Lcom/oneplus/android/server/zta/sis/you$zta;->WY:Lcom/oneplus/android/server/zta/sis/you$tsu;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/oneplus/android/server/zta/sis/you$tsu;->packageName:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/oneplus/android/server/zta/sis/you;->MZ:Lcom/oneplus/android/server/zta/sis/you$zta;

    iget-object v1, v1, Lcom/oneplus/android/server/zta/sis/you$zta;->WY:Lcom/oneplus/android/server/zta/sis/you$tsu;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/oneplus/android/server/zta/sis/you$tsu;->XY:Ljava/lang/String;

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/oneplus/android/server/zta/sis/you;->MZ:Lcom/oneplus/android/server/zta/sis/you$zta;

    iget-object v1, v1, Lcom/oneplus/android/server/zta/sis/you$zta;->WY:Lcom/oneplus/android/server/zta/sis/you$tsu;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/oneplus/android/server/zta/sis/you$tsu;->YY:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/oneplus/android/server/zta/sis/you;->MZ:Lcom/oneplus/android/server/zta/sis/you$zta;

    iget-object v0, v0, Lcom/oneplus/android/server/zta/sis/you$zta;->WY:Lcom/oneplus/android/server/zta/sis/you$tsu;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/oneplus/android/server/zta/sis/you$tsu;->ZY:Ljava/lang/String;

    sget-object p0, Lcom/oneplus/android/server/zta/sis/you;->MZ:Lcom/oneplus/android/server/zta/sis/you$zta;

    iput-object p1, p0, Lcom/oneplus/android/server/zta/sis/you$zta;->times:Ljava/lang/String;

    return-object p0
.end method

.method private isBootCompleted()Z
    .locals 1

    const-string p0, "sys.boot_completed"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 9

    sget-boolean v0, Lcom/oneplus/android/server/zta/sis/you;->oZ:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resolvePerfConfigFromJSON "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OnePlusJankManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_12

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "WhiteListPkgMap"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/oneplus/android/server/zta/sis/you;->fZ:Ljava/util/ArrayList;

    monitor-enter v3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v4, p0, Lcom/oneplus/android/server/zta/sis/you;->fZ:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    sget-boolean v4, Lcom/oneplus/android/server/zta/sis/you;->oZ:Z

    if-eqz v4, :cond_2

    const-string v4, "OnePlusJankManager"

    const-string v5, "[OnlineConfig] clear mWhiteList"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    move v3, v0

    :goto_1
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_11

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    const-string v5, "name"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/oneplus/android/server/zta/sis/you;->fZ:Ljava/util/ArrayList;

    monitor-enter v5
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    iget-object v6, p0, Lcom/oneplus/android/server/zta/sis/you;->fZ:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v6, Lcom/oneplus/android/server/zta/sis/you;->oZ:Z

    if-eqz v6, :cond_3

    const-string v6, "OnePlusJankManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "[OnlineConfig] add mWhiteList pkg: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    monitor-exit v5

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :catchall_1
    move-exception p0

    :try_start_5
    monitor-exit v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw p0

    :cond_5
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "state"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/oneplus/android/server/zta/sis/you;->mZ:Z

    const-string v2, "persist.sys.jankmanager.state"

    sget-boolean v3, Lcom/oneplus/android/server/zta/sis/you;->mZ:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-direct {p0, v2, v3}, Lcom/oneplus/android/server/zta/sis/you;->vdb(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_4

    :cond_6
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "enable"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/oneplus/android/server/zta/sis/you;->nZ:Z

    const-string v2, "persist.sys.jankmanager.enable"

    sget-boolean v3, Lcom/oneplus/android/server/zta/sis/you;->nZ:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_7
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "debug"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/oneplus/android/server/zta/sis/you;->oZ:Z

    const-string v2, "persist.sys.jankmanager.debug"

    sget-boolean v3, Lcom/oneplus/android/server/zta/sis/you;->oZ:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_8
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "mdm"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/oneplus/android/server/zta/sis/you;->pZ:Z

    const-string v2, "persist.sys.jankmanager.mdm"

    sget-boolean v3, Lcom/oneplus/android/server/zta/sis/you;->pZ:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    goto :goto_3

    :cond_9
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "disk"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/oneplus/android/server/zta/sis/you;->qZ:Z

    const-string v2, "persist.sys.jankmanager.disk"

    sget-boolean v3, Lcom/oneplus/android/server/zta/sis/you;->qZ:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_a
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "systrace"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/oneplus/android/server/zta/sis/you;->rZ:Z

    const-string v2, "persist.sys.jankmanager.systrace"

    sget-boolean v3, Lcom/oneplus/android/server/zta/sis/you;->rZ:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_b
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "test"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/oneplus/android/server/zta/sis/you;->sZ:Z

    const-string v2, "persist.sys.jankmanager.test"

    sget-boolean v3, Lcom/oneplus/android/server/zta/sis/you;->sZ:Z

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_c
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "low_level"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/oneplus/android/server/zta/sis/you;->JANK_LEVEL_LOW:I

    const-string v2, "persist.sys.jankmanager.levellow"

    sget v3, Lcom/oneplus/android/server/zta/sis/you;->JANK_LEVEL_LOW:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_d
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "high_level"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/oneplus/android/server/zta/sis/you;->JANK_LEVEL_HIGH:I

    const-string v2, "persist.sys.jankmanager.levelhigh"

    sget v3, Lcom/oneplus/android/server/zta/sis/you;->JANK_LEVEL_HIGH:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_e
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "long_jank"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_f

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/oneplus/android/server/zta/sis/you;->AZ:I

    const-string v2, "persist.sys.jankmanager.long"

    sget v3, Lcom/oneplus/android/server/zta/sis/you;->AZ:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_f
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "trace_value"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_10

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/oneplus/android/server/zta/sis/you;->BZ:I

    const-string v2, "persist.sys.jankmanager.levelsystrace"

    sget v3, Lcom/oneplus/android/server/zta/sis/you;->BZ:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_10
    const-string v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "trace_time"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/oneplus/android/server/zta/sis/you;->GZ:I

    const-string v2, "persist.sys.jankmanager.tracetime"

    sget v3, Lcom/oneplus/android/server/zta/sis/you;->GZ:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_3

    :cond_11
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_12
    sget-boolean p0, Lcom/oneplus/android/server/zta/sis/you;->oZ:Z

    if-eqz p0, :cond_13

    const-string p0, "OnePlusJankManager"

    const-string p1, "[OnlineConfig] jankmanager updated complete"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_6

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] jankmanager Exception:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] jankmanager JSONException:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_5
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OnePlusJankManager"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    :goto_6
    return-void
.end method

.method static synthetic rtg(Lcom/oneplus/android/server/zta/sis/you;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/zta/sis/you;->Ar()V

    return-void
.end method

.method private rtg(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    sget-boolean p0, Lcom/oneplus/android/server/zta/sis/you;->oZ:Z

    if-eqz p0, :cond_0

    const-string p0, "OnePlusJankManager"

    const-string v0, "saveJankInfoToMap"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p0, Lcom/oneplus/android/server/zta/sis/you;->KZ:Ljava/util/HashMap;

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/oneplus/android/server/zta/sis/you;->KZ:Ljava/util/HashMap;

    invoke-static {p1, p2, p3, p4}, Lcom/oneplus/android/server/zta/sis/you;->zta(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    sget-object v0, Lcom/oneplus/android/server/zta/sis/you;->KZ:Ljava/util/HashMap;

    invoke-static {p1, p2, p3, p4}, Lcom/oneplus/android/server/zta/sis/you;->zta(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/oneplus/android/server/zta/sis/you;->KZ:Ljava/util/HashMap;

    invoke-static {p1, p2, p3, p4}, Lcom/oneplus/android/server/zta/sis/you;->zta(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/oneplus/android/server/zta/sis/you;->KZ:Ljava/util/HashMap;

    invoke-static {p1, p2, p3, p4}, Lcom/oneplus/android/server/zta/sis/you;->zta(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/oneplus/android/server/zta/sis/you;->KZ:Ljava/util/HashMap;

    invoke-static {p1, p2, p3, p4}, Lcom/oneplus/android/server/zta/sis/you;->zta(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static synthetic sis(Lcom/oneplus/android/server/zta/sis/you;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/zta/sis/you;->Dr()V

    return-void
.end method

.method static synthetic sis(Lcom/oneplus/android/server/zta/sis/you;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/zta/sis/you;->cZ:Z

    return p1
.end method

.method private sis(Ljava/lang/String;Ljava/lang/String;II)Z
    .locals 1

    sget-boolean p0, Lcom/oneplus/android/server/zta/sis/you;->qZ:Z

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "pkg:"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-view:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-jkType:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-level:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "-time:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/android/server/zta/sis/you;->Ml()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "/data/system/jankevent.log"

    invoke-static {p0, p1}, Lcom/oneplus/android/server/zta/sis/you;->fto(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic ssp(Lcom/oneplus/android/server/zta/sis/you;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/zta/sis/you;->cZ:Z

    return p0
.end method

.method private tsu(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/android/server/zta/sis/you;->fZ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/server/zta/sis/you;->fZ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Splash"

    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "OnePlusJankManager"

    if-eqz v0, :cond_2

    sget-boolean p0, Lcom/oneplus/android/server/zta/sis/you;->oZ:Z

    if-eqz p0, :cond_1

    const-string p0, "is Splash activity, return"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OnePlusUtil$zta;->z()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean p0, Lcom/oneplus/android/server/zta/sis/you;->oZ:Z

    if-eqz p0, :cond_3

    const-string p0, "not forground app, return"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void

    :cond_4
    rem-int/lit8 v0, p3, 0xa

    const/4 v1, 0x2

    if-eq v0, v1, :cond_5

    rem-int/lit8 v2, p4, 0xa

    const/4 v3, 0x3

    if-eq v2, v3, :cond_6

    :cond_5
    if-ne v0, v1, :cond_7

    :cond_6
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/zta/sis/you;->dZ:Z

    :cond_7
    iget-boolean v0, p0, Lcom/oneplus/android/server/zta/sis/you;->eZ:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/oneplus/android/server/zta/sis/you;->dZ:Z

    if-eqz v0, :cond_8

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/android/server/zta/sis/you;->you(Ljava/lang/String;Ljava/lang/String;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/zta/sis/you;->dZ:Z

    :cond_8
    invoke-direct {p0}, Lcom/oneplus/android/server/zta/sis/you;->yr()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/android/server/zta/sis/you;->rtg(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_9
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/android/server/zta/sis/you;->sis(Ljava/lang/String;Ljava/lang/String;II)Z

    return-void
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/zta/sis/you;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/zta/sis/you;->bZ:Z

    return p0
.end method

.method private updateOnlineConfig()V
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/zta/sis/you;->oZ:Z

    const-string v1, "OnePlusJankManager"

    if-eqz v0, :cond_0

    const-string v0, "updateOnlineConfig"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v2, p0, Lcom/oneplus/android/server/zta/sis/you;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/zta/sis/you;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method private vdb(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    const-string p0, ""

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-boolean v0, Lcom/oneplus/android/server/zta/sis/you;->oZ:Z

    const-string v1, "OnePlusJankManager"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setprop:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |value:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " |curValue:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "failed to set system property"

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private static wc(Ljava/lang/String;)Lcom/oneplus/android/server/zta/sis/you$zta;
    .locals 6

    sget-object v0, Lcom/oneplus/android/server/zta/sis/you;->MZ:Lcom/oneplus/android/server/zta/sis/you$zta;

    iget-object v1, v0, Lcom/oneplus/android/server/zta/sis/you$zta;->WY:Lcom/oneplus/android/server/zta/sis/you$tsu;

    if-nez v1, :cond_0

    sget-object v1, Lcom/oneplus/android/server/zta/sis/you;->LZ:Lcom/oneplus/android/server/zta/sis/you$tsu;

    iput-object v1, v0, Lcom/oneplus/android/server/zta/sis/you$zta;->WY:Lcom/oneplus/android/server/zta/sis/you$tsu;

    :cond_0
    const-string v0, "-"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    return-object v2

    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x2

    const-string v5, ":"

    if-ge v1, v3, :cond_4

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    if-eqz v3, :cond_3

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v3

    if-eq v3, v4, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    return-object v2

    :cond_4
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/oneplus/android/server/zta/sis/you;->MZ:Lcom/oneplus/android/server/zta/sis/you$zta;

    iget-object v1, v1, Lcom/oneplus/android/server/zta/sis/you$zta;->WY:Lcom/oneplus/android/server/zta/sis/you$tsu;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/oneplus/android/server/zta/sis/you$tsu;->packageName:Ljava/lang/String;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/oneplus/android/server/zta/sis/you;->MZ:Lcom/oneplus/android/server/zta/sis/you$zta;

    iget-object v1, v1, Lcom/oneplus/android/server/zta/sis/you$zta;->WY:Lcom/oneplus/android/server/zta/sis/you$tsu;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/oneplus/android/server/zta/sis/you$tsu;->XY:Ljava/lang/String;

    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/oneplus/android/server/zta/sis/you;->MZ:Lcom/oneplus/android/server/zta/sis/you$zta;

    iget-object v1, v1, Lcom/oneplus/android/server/zta/sis/you$zta;->WY:Lcom/oneplus/android/server/zta/sis/you$tsu;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/oneplus/android/server/zta/sis/you$tsu;->YY:Ljava/lang/String;

    const/4 v0, 0x3

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sget-object v1, Lcom/oneplus/android/server/zta/sis/you;->MZ:Lcom/oneplus/android/server/zta/sis/you$zta;

    iget-object v1, v1, Lcom/oneplus/android/server/zta/sis/you$zta;->WY:Lcom/oneplus/android/server/zta/sis/you$tsu;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/oneplus/android/server/zta/sis/you$tsu;->ZY:Ljava/lang/String;

    const/4 v0, 0x4

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    sget-object v0, Lcom/oneplus/android/server/zta/sis/you;->MZ:Lcom/oneplus/android/server/zta/sis/you$zta;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    iput-object p0, v0, Lcom/oneplus/android/server/zta/sis/you$zta;->times:Ljava/lang/String;

    sget-object p0, Lcom/oneplus/android/server/zta/sis/you;->MZ:Lcom/oneplus/android/server/zta/sis/you$zta;

    return-object p0
.end method

.method private static xc(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
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

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    const-string v2, "OnePlusJankManager"

    if-nez p0, :cond_0

    const-string p0, "readJankFromFileToHashMap The File doesn\'t not exist."

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_1
    const-string p0, "The File doesn\'t not exist."

    goto :goto_0

    :goto_2
    return-object v0
.end method

.method private xr()V
    .locals 0

    return-void
.end method

.method private static yc(Ljava/lang/String;)Ljava/util/HashMap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result p0

    const-string v2, "OnePlusJankManager"

    if-nez p0, :cond_0

    const-string p0, "readJankFromFileToHashMap The File doesn\'t not exist."

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_0
    :try_start_0
    new-instance p0, Ljava/io/FileInputStream;

    invoke-direct {p0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    new-instance v3, Ljava/io/BufferedReader;

    invoke-direct {v3, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    :cond_1
    :goto_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/oneplus/android/server/zta/sis/you;->wc(Ljava/lang/String;)Lcom/oneplus/android/server/zta/sis/you$zta;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v4, v1, Lcom/oneplus/android/server/zta/sis/you$zta;->WY:Lcom/oneplus/android/server/zta/sis/you$tsu;

    iget-object v4, v4, Lcom/oneplus/android/server/zta/sis/you$tsu;->packageName:Ljava/lang/String;

    iget-object v5, v1, Lcom/oneplus/android/server/zta/sis/you$zta;->WY:Lcom/oneplus/android/server/zta/sis/you$tsu;

    iget-object v5, v5, Lcom/oneplus/android/server/zta/sis/you$tsu;->XY:Ljava/lang/String;

    iget-object v6, v1, Lcom/oneplus/android/server/zta/sis/you$zta;->WY:Lcom/oneplus/android/server/zta/sis/you$tsu;

    iget-object v6, v6, Lcom/oneplus/android/server/zta/sis/you$tsu;->YY:Ljava/lang/String;

    iget-object v7, v1, Lcom/oneplus/android/server/zta/sis/you$zta;->WY:Lcom/oneplus/android/server/zta/sis/you$tsu;

    iget-object v7, v7, Lcom/oneplus/android/server/zta/sis/you$tsu;->ZY:Ljava/lang/String;

    invoke-static {v4, v5, v6, v7}, Lcom/oneplus/android/server/zta/sis/you;->you(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iget-object v1, v1, Lcom/oneplus/android/server/zta/sis/you$zta;->times:Ljava/lang/String;

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :catch_1
    const-string p0, "The File doesn\'t not exist."

    goto :goto_0

    :goto_2
    return-object v0
.end method

.method private static you(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-view:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "-jkType:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "-level:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic you(Lcom/oneplus/android/server/zta/sis/you;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/zta/sis/you;->Rl()V

    return-void
.end method

.method static synthetic you(Lcom/oneplus/android/server/zta/sis/you;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/android/server/zta/sis/you;->you(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method private you(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 4

    invoke-direct {p0}, Lcom/oneplus/android/server/zta/sis/you;->zr()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/zta/sis/you;->KZ:Ljava/util/HashMap;

    invoke-static {p1, p2, p3, p4}, Lcom/oneplus/android/server/zta/sis/you;->zta(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "/data/system/jankmdm.log"

    invoke-static {v0}, Lcom/oneplus/android/server/zta/sis/you;->yc(Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v0

    invoke-static {p1, p2, p3, p4}, Lcom/oneplus/android/server/zta/sis/you;->zta(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/android/server/zta/sis/you;->Cr()V

    iget-object v0, p0, Lcom/oneplus/android/server/zta/sis/you;->_Y:Lcom/oneplus/android/server/zta/sis/you$you;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    sget v2, Lcom/oneplus/android/server/zta/sis/you;->GZ:I

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/oneplus/android/server/zta/sis/you;->zta(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/zta/sis/you;->zc(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic you(Lcom/oneplus/android/server/zta/sis/you;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/zta/sis/you;->bZ:Z

    return p1
.end method

.method private yr()Z
    .locals 0

    sget-boolean p0, Lcom/oneplus/android/server/zta/sis/you;->pZ:Z

    return p0
.end method

.method private zc(Ljava/lang/String;)V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/android/server/zta/sis/you;->mContext:Landroid/content/Context;

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string v0, "opdiagnose"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/OPDiagnoseManager;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    sget v0, Landroid/os/OPDiagnoseManager;->ISSUE_LAG:I

    invoke-virtual {p0, v0, p1}, Landroid/os/OPDiagnoseManager;->writeDiagData(ILjava/lang/String;)Z

    :cond_1
    return-void
.end method

.method private zr()Z
    .locals 0

    sget-boolean p0, Lcom/oneplus/android/server/zta/sis/you;->rZ:Z

    return p0
.end method

.method private zta(Lcom/oneplus/android/server/zta/sis/you$zta;)Ljava/lang/String;
    .locals 1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "{\"pkg\":\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/oneplus/android/server/zta/sis/you$zta;->WY:Lcom/oneplus/android/server/zta/sis/you$tsu;

    iget-object v0, v0, Lcom/oneplus/android/server/zta/sis/you$tsu;->packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"view\":\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/oneplus/android/server/zta/sis/you$zta;->WY:Lcom/oneplus/android/server/zta/sis/you$tsu;

    iget-object v0, v0, Lcom/oneplus/android/server/zta/sis/you$tsu;->XY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"jkType\":\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/oneplus/android/server/zta/sis/you$zta;->WY:Lcom/oneplus/android/server/zta/sis/you$tsu;

    iget-object v0, v0, Lcom/oneplus/android/server/zta/sis/you$tsu;->YY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"level\":\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p1, Lcom/oneplus/android/server/zta/sis/you$zta;->WY:Lcom/oneplus/android/server/zta/sis/you$tsu;

    iget-object v0, v0, Lcom/oneplus/android/server/zta/sis/you$tsu;->ZY:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\",\"times\":\""

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/oneplus/android/server/zta/sis/you$zta;->times:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\"}"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static zta(Ljava/lang/String;Ljava/lang/String;II)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "pkg:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "-view:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "-jkType:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "-level:"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/zta/sis/you;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/zta/sis/you;->updateOnlineConfig()V

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/zta/sis/you;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/android/server/zta/sis/you;->tsu(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/zta/sis/you;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/zta/sis/you;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method private static zta(Ljava/util/HashMap;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/oneplus/android/server/zta/sis/you;->hmo(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oneplus/android/server/zta/sis/you;->fto(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/zta/sis/you;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/zta/sis/you;->eZ:Z

    return p1
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "@The JnakManager status is : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/android/server/zta/sis/you;->mZ:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "Jank event list : "

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string p0, "/data/system/jankevent.log"

    invoke-static {p0}, Lcom/oneplus/android/server/zta/sis/you;->xc(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\t "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public getUidForTraceur()I
    .locals 1

    const-string v0, "com.android.traceur"

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/zta/sis/you;->getUidForPackage(Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method public initOnlineConfig()V
    .locals 5

    sget-boolean v0, Lcom/oneplus/android/server/zta/sis/you;->mZ:Z

    const-string v1, "persist.sys.jankmanager.state"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/android/server/zta/sis/you;->mZ:Z

    sget-boolean v0, Lcom/oneplus/android/server/zta/sis/you;->nZ:Z

    const-string v1, "persist.sys.jankmanager.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/android/server/zta/sis/you;->nZ:Z

    sget-boolean v0, Lcom/oneplus/android/server/zta/sis/you;->oZ:Z

    const-string v1, "persist.sys.jankmanager.debug"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/android/server/zta/sis/you;->oZ:Z

    sget-boolean v0, Lcom/oneplus/android/server/zta/sis/you;->pZ:Z

    const-string v1, "persist.sys.jankmanager.mdm"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/android/server/zta/sis/you;->pZ:Z

    sget-boolean v0, Lcom/oneplus/android/server/zta/sis/you;->qZ:Z

    const-string v1, "persist.sys.jankmanager.disk"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/android/server/zta/sis/you;->qZ:Z

    sget-boolean v0, Lcom/oneplus/android/server/zta/sis/you;->rZ:Z

    const-string v1, "persist.sys.jankmanager.systrace"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/android/server/zta/sis/you;->rZ:Z

    sget-boolean v0, Lcom/oneplus/android/server/zta/sis/you;->sZ:Z

    const-string v1, "persist.sys.jankmanager.test"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/android/server/zta/sis/you;->sZ:Z

    sget v0, Lcom/oneplus/android/server/zta/sis/you;->JANK_LEVEL_LOW:I

    const-string v1, "persist.sys.jankmanager.levellow"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/oneplus/android/server/zta/sis/you;->JANK_LEVEL_LOW:I

    sget v0, Lcom/oneplus/android/server/zta/sis/you;->JANK_LEVEL_HIGH:I

    const-string v1, "persist.sys.jankmanager.levelhigh"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/oneplus/android/server/zta/sis/you;->JANK_LEVEL_HIGH:I

    sget v0, Lcom/oneplus/android/server/zta/sis/you;->AZ:I

    const-string v1, "persist.sys.jankmanager.long"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/oneplus/android/server/zta/sis/you;->AZ:I

    sget v0, Lcom/oneplus/android/server/zta/sis/you;->BZ:I

    const-string v1, "persist.sys.jankmanager.levelsystrace"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/oneplus/android/server/zta/sis/you;->BZ:I

    sget v0, Lcom/oneplus/android/server/zta/sis/you;->GZ:I

    const-string v1, "persist.sys.jankmanager.tracetime"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/oneplus/android/server/zta/sis/you;->GZ:I

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/oneplus/android/server/zta/sis/you;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/android/server/zta/sis/you;->_Y:Lcom/oneplus/android/server/zta/sis/you$you;

    new-instance v3, Lcom/oneplus/android/server/zta/sis/you$rtg;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/zta/sis/you$rtg;-><init>(Lcom/oneplus/android/server/zta/sis/you;)V

    const-string v4, "OnePlusJankManager"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/android/server/zta/sis/you;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/oneplus/android/server/zta/sis/you;->mMyConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    iget-object v0, p0, Lcom/oneplus/android/server/zta/sis/you;->_Y:Lcom/oneplus/android/server/zta/sis/you$you;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "oneplus.intent.action.SAVE_JANK_DATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "oneplus.intent.action.MDM_JANK_DATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/android/server/zta/sis/you;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/android/server/zta/sis/you;->mGeneralReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/oneplus/android/server/zta/sis/you;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/zta/sis/you;->igw(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/oneplus/android/server/zta/sis/you;->fZ:Ljava/util/ArrayList;

    const-string v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/oneplus/android/server/zta/sis/you;->fZ:Ljava/util/ArrayList;

    const-string v1, "fm.xiami.main"

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object p0, p0, Lcom/oneplus/android/server/zta/sis/you;->fZ:Ljava/util/ArrayList;

    const-string v0, "com.tencent.qt.qtl"

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public reportJank(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/android/server/zta/sis/you;->isBootCompleted()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/android/server/zta/sis/you;->_Y:Lcom/oneplus/android/server/zta/sis/you$you;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "packageName"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "viewName"

    invoke-virtual {v1, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "jankType"

    invoke-virtual {v1, p1, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "jankLevel"

    invoke-virtual {v1, p1, p4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object p0, p0, Lcom/oneplus/android/server/zta/sis/you;->_Y:Lcom/oneplus/android/server/zta/sis/you$you;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    :goto_0
    return-void
.end method
