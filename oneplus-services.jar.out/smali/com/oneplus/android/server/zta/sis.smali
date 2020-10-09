.class public Lcom/oneplus/android/server/zta/sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/android/server/OnePlusUtil$zta$zta;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/zta/sis$zta;
    }
.end annotation


# static fields
.field private static final ACTION_TEST:Ljava/lang/String; = "com.optm.action.test"

.field public static final APPID:Ljava/lang/String; = "NYNCG4I0TI"

.field public static DEBUG:Z = false

.field public static ENABLE:Z = true

.field public static final PROP_DEBUG:Ljava/lang/String; = "persist.sys.optm.debug"

.field public static final PROP_ENABLE:Ljava/lang/String; = "persist.sys.optm.enable"

.field public static final PROP_MDM:Ljava/lang/String; = "persist.sys.optm.mdm"

.field public static final TAG:Ljava/lang/String; = "OPTM"

.field public static Tl:Z = false

.field public static final Xl:Ljava/lang/String; = "OPTM"

.field private static instance:Lcom/oneplus/android/server/zta/sis; = null

.field public static lba:Ljava/lang/String; = null

.field public static mba:Ljava/lang/String; = null

.field public static final nba:Ljava/lang/String; = "/sys/class/thermal/thermal_zone71/temp"

.field public static final oba:Ljava/lang/String; = "/sys/class/power_supply/battery/temp"


# instance fields
.field private extraData:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private iba:Z

.field private jba:Lcom/oneplus/android/server/zta/sis$zta;

.field private kba:Ljava/lang/Runnable;

.field private mContext:Landroid/content/Context;

.field private mTestReceiver:Landroid/content/BroadcastReceiver;

.field private running:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/zta/sis;->DEBUG:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/android/server/zta/sis;->Tl:Z

    const-string v0, "com.antutu.benchmark.ui.test.activity.RefineryActivity"

    sput-object v0, Lcom/oneplus/android/server/zta/sis;->lba:Ljava/lang/String;

    const-string v0, "com.antutu.benchmark.ui.test.activity.ActivityTestResultDetails"

    sput-object v0, Lcom/oneplus/android/server/zta/sis;->mba:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/zta/sis;->iba:Z

    new-instance v1, Lcom/oneplus/android/server/zta/sis$zta;

    invoke-direct {v1}, Lcom/oneplus/android/server/zta/sis$zta;-><init>()V

    iput-object v1, p0, Lcom/oneplus/android/server/zta/sis;->jba:Lcom/oneplus/android/server/zta/sis$zta;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oneplus/android/server/zta/sis;->extraData:Ljava/util/HashMap;

    new-instance v1, Lcom/oneplus/android/server/zta/zta;

    invoke-direct {v1, p0}, Lcom/oneplus/android/server/zta/zta;-><init>(Lcom/oneplus/android/server/zta/sis;)V

    iput-object v1, p0, Lcom/oneplus/android/server/zta/sis;->mTestReceiver:Landroid/content/BroadcastReceiver;

    iput-boolean v0, p0, Lcom/oneplus/android/server/zta/sis;->running:Z

    new-instance v0, Lcom/oneplus/android/server/zta/you;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/zta/you;-><init>(Lcom/oneplus/android/server/zta/sis;)V

    iput-object v0, p0, Lcom/oneplus/android/server/zta/sis;->kba:Ljava/lang/Runnable;

    sget-boolean v0, Lcom/oneplus/android/server/zta/sis;->ENABLE:Z

    const-string v1, "persist.sys.optm.enable"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/android/server/zta/sis;->ENABLE:Z

    sget-boolean v0, Lcom/oneplus/android/server/zta/sis;->DEBUG:Z

    const-string v1, "persist.sys.optm.debug"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/android/server/zta/sis;->DEBUG:Z

    sget-boolean v0, Lcom/oneplus/android/server/zta/sis;->Tl:Z

    const-string v1, "persist.sys.optm.mdm"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/android/server/zta/sis;->Tl:Z

    iget-object p0, p0, Lcom/oneplus/android/server/zta/sis;->extraData:Ljava/util/HashMap;

    const-string v0, "appid"

    const-string v1, "NYNCG4I0TI"

    invoke-virtual {p0, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private Cc(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    sget-object v1, Lcom/oneplus/android/server/zta/sis;->lba:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/android/server/zta/sis;->iba:Z

    if-nez v1, :cond_1

    iput-boolean v2, p0, Lcom/oneplus/android/server/zta/sis;->iba:Z

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/oneplus/android/server/zta/sis;->mba:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcom/oneplus/android/server/zta/sis;->iba:Z

    if-eqz v1, :cond_3

    iput-boolean v0, p0, Lcom/oneplus/android/server/zta/sis;->iba:Z

    :goto_0
    iget-boolean p1, p0, Lcom/oneplus/android/server/zta/sis;->iba:Z

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/zta/sis;->Qa(Z)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/oneplus/android/server/zta/sis;->iba:Z

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/zta/sis;->jba:Lcom/oneplus/android/server/zta/sis$zta;

    const-string v0, "OPTM"

    invoke-direct {p0, v0, p1}, Lcom/oneplus/android/server/zta/sis;->zta(Ljava/lang/String;Lcom/oneplus/android/server/zta/sis$zta;)V

    :cond_2
    return v2

    :cond_3
    const-string v1, "antutu"

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    return v0

    :cond_4
    iput-boolean v0, p0, Lcom/oneplus/android/server/zta/sis;->iba:Z

    return v0
.end method

.method private Pa(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/oneplus/android/server/zta/sis;->running:Z

    new-instance p1, Ljava/lang/Thread;

    iget-object p0, p0, Lcom/oneplus/android/server/zta/sis;->kba:Ljava/lang/Runnable;

    invoke-direct {p1, p0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/android/server/zta/sis;->running:Z

    :goto_0
    return-void
.end method

.method private Qa(Z)Z
    .locals 3

    const-string v0, "/sys/class/thermal/thermal_zone71/temp"

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/zta/sis;->readNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "/sys/class/power_supply/battery/temp"

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/zta/sis;->readNode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/zta/sis;->jba:Lcom/oneplus/android/server/zta/sis$zta;

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_0
    iput v0, p1, Lcom/oneplus/android/server/zta/sis$zta;->eba:I

    iget-object p0, p0, Lcom/oneplus/android/server/zta/sis;->jba:Lcom/oneplus/android/server/zta/sis$zta;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_1
    iput v2, p0, Lcom/oneplus/android/server/zta/sis$zta;->fba:I

    goto :goto_4

    :cond_2
    iget-object p1, p0, Lcom/oneplus/android/server/zta/sis;->jba:Lcom/oneplus/android/server/zta/sis$zta;

    if-nez v0, :cond_3

    move v0, v2

    goto :goto_2

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    :goto_2
    iput v0, p1, Lcom/oneplus/android/server/zta/sis$zta;->gba:I

    iget-object p0, p0, Lcom/oneplus/android/server/zta/sis;->jba:Lcom/oneplus/android/server/zta/sis$zta;

    if-nez v1, :cond_4

    goto :goto_3

    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    :goto_3
    iput v2, p0, Lcom/oneplus/android/server/zta/sis$zta;->hba:I

    :goto_4
    const/4 p0, 0x1

    return p0
.end method

.method private Zr()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/zta/sis;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const-string p0, "OPTM"

    const-string v0, "Fatal Exception # registerTestReceiver # mContext=null"

    invoke-static {p0, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    const-string v1, "com.optm.action.test"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/android/server/zta/sis;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/oneplus/android/server/zta/sis;->mTestReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private dump()V
    .locals 3

    const-string v0, "OPTM"

    const-string v1, "=========== dump ========="

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " antutuTesting="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/android/server/zta/sis;->iba:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/zta/sis;->jba:Lcom/oneplus/android/server/zta/sis$zta;

    invoke-virtual {p0}, Lcom/oneplus/android/server/zta/sis$zta;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static getInstance()Lcom/oneplus/android/server/zta/sis;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/zta/sis;->instance:Lcom/oneplus/android/server/zta/sis;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/zta/sis;

    invoke-direct {v0}, Lcom/oneplus/android/server/zta/sis;-><init>()V

    sput-object v0, Lcom/oneplus/android/server/zta/sis;->instance:Lcom/oneplus/android/server/zta/sis;

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/zta/sis;->instance:Lcom/oneplus/android/server/zta/sis;

    return-object v0
.end method

.method private readNode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 p0, 0x0

    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {p1, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception p1

    goto :goto_2

    :catch_2
    move-exception v0

    move-object p1, p0

    :goto_0
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz p1, :cond_0

    :try_start_4
    invoke-virtual {p1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    :cond_0
    :goto_1
    return-object p0

    :catchall_1
    move-exception p0

    move-object v2, p1

    move-object p1, p0

    move-object p0, v2

    :goto_2
    if-eqz p0, :cond_1

    :try_start_5
    invoke-virtual {p0}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_3

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_3
    throw p1
.end method

.method static synthetic sis(Lcom/oneplus/android/server/zta/sis;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/zta/sis;->running:Z

    return p0
.end method

.method static synthetic you(Lcom/oneplus/android/server/zta/sis;)Lcom/oneplus/android/server/zta/sis$zta;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/zta/sis;->jba:Lcom/oneplus/android/server/zta/sis$zta;

    return-object p0
.end method

.method static synthetic you(Lcom/oneplus/android/server/zta/sis;Z)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/zta/sis;->Qa(Z)Z

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/zta/sis;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/zta/sis;->dump()V

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/zta/sis;Ljava/lang/String;Lcom/oneplus/android/server/zta/sis$zta;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/android/server/zta/sis;->zta(Ljava/lang/String;Lcom/oneplus/android/server/zta/sis$zta;)V

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/zta/sis;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/zta/sis;->Pa(Z)V

    return-void
.end method

.method private zta(Ljava/lang/String;Lcom/oneplus/android/server/zta/sis$zta;)V
    .locals 5

    sget-boolean v0, Lcom/oneplus/android/server/zta/sis;->Tl:Z

    if-eqz v0, :cond_2

    if-nez p2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p2}, Lcom/oneplus/android/server/zta/sis$zta;->mb()Ljava/util/Map;

    move-result-object p2

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-boolean v0, Lcom/oneplus/android/server/zta/sis;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OPTM"

    const-string v1, "trackReportData APPID = NYNCG4I0TI"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "trackReportData ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {p2, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/android/server/zta/sis;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/oneplus/android/server/zta/sis;->extraData:Ljava/util/HashMap;

    invoke-virtual {v0, v1, p1, p2, p0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public initEnv(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/zta/sis;->ENABLE:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/oneplus/android/server/zta/sis;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oneplus/android/server/zta/sis;->Zr()V

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/android/server/OnePlusUtil$zta;->zta(Lcom/android/server/OnePlusUtil$zta$zta;)V

    return-void
.end method

.method public sis(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/zta/sis;->ENABLE:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/android/server/zta/sis;->Cc(Ljava/lang/String;)Z

    return-void
.end method
