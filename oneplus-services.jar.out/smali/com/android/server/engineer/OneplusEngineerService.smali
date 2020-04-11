.class public Lcom/android/server/engineer/OneplusEngineerService;
.super Lcom/android/server/SystemService;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/engineer/OneplusEngineerService$sis;,
        Lcom/android/server/engineer/OneplusEngineerService$BinderService;,
        Lcom/android/server/engineer/OneplusEngineerService$you;,
        Lcom/android/server/engineer/OneplusEngineerService$zta;
    }
.end annotation


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field private static final TAG:Ljava/lang/String; = "OneplusEngineerService"

.field private static final fh:Ljava/lang/String; = "/mnt/vendor/persist/engineermode/engineermode_masterclear_flag"


# instance fields
.field private final bh:Lcom/android/server/ServiceThread;

.field private ch:Lcom/android/server/lights/Light;

.field private class1:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private dh:Lcom/android/server/engineer/you;

.field private eh:Lcom/android/server/engineer/you$zta;

.field private items:Ljava/lang/Object;

.field private mBatteryLevel:I

.field private mBinderService:Lcom/android/server/engineer/OneplusEngineerService$BinderService;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonLight:Lcom/android/server/lights/Light;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/engineer/OneplusEngineerService$you;

.field private mLightsManager:Lcom/android/server/lights/LightsManager;

.field private mSettingsObserver:Lcom/android/server/engineer/OneplusEngineerService$sis;

.field private pcb:Ljava/lang/String;

.field qcHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/engineer/OneplusEngineerService;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/engineer/ssp;

    invoke-direct {v0, p0}, Lcom/android/server/engineer/ssp;-><init>(Lcom/android/server/engineer/OneplusEngineerService;)V

    iput-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->items:Ljava/lang/Object;

    iput-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->class1:Ljava/lang/Class;

    iput-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->pcb:Ljava/lang/String;

    new-instance v0, Lcom/android/server/engineer/cno;

    invoke-direct {v0, p0}, Lcom/android/server/engineer/cno;-><init>(Lcom/android/server/engineer/OneplusEngineerService;)V

    iput-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->qcHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/engineer/kth;

    invoke-direct {v0, p0}, Lcom/android/server/engineer/kth;-><init>(Lcom/android/server/engineer/OneplusEngineerService;)V

    iput-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->eh:Lcom/android/server/engineer/you$zta;

    iput-object p1, p0, Lcom/android/server/engineer/OneplusEngineerService;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/server/ServiceThread;

    const-string v0, "OneplusEngineerService"

    const/4 v1, -0x2

    const/4 v2, 0x1

    invoke-direct {p1, v0, v1, v2}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object p1, p0, Lcom/android/server/engineer/OneplusEngineerService;->bh:Lcom/android/server/ServiceThread;

    iget-object p1, p0, Lcom/android/server/engineer/OneplusEngineerService;->bh:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->start()V

    new-instance p1, Lcom/android/server/engineer/OneplusEngineerService$you;

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->bh:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/server/engineer/OneplusEngineerService$you;-><init>(Lcom/android/server/engineer/OneplusEngineerService;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/engineer/OneplusEngineerService;->mHandler:Lcom/android/server/engineer/OneplusEngineerService$you;

    new-instance p1, Lcom/android/server/engineer/OneplusEngineerService$sis;

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mHandler:Lcom/android/server/engineer/OneplusEngineerService$you;

    invoke-direct {p1, p0, v0}, Lcom/android/server/engineer/OneplusEngineerService$sis;-><init>(Lcom/android/server/engineer/OneplusEngineerService;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/server/engineer/OneplusEngineerService;->mSettingsObserver:Lcom/android/server/engineer/OneplusEngineerService$sis;

    new-instance p1, Lcom/android/server/engineer/you;

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/engineer/OneplusEngineerService;->eh:Lcom/android/server/engineer/you$zta;

    invoke-direct {p1, v0, v1}, Lcom/android/server/engineer/you;-><init>(Landroid/content/Context;Lcom/android/server/engineer/you$zta;)V

    iput-object p1, p0, Lcom/android/server/engineer/OneplusEngineerService;->dh:Lcom/android/server/engineer/you;

    invoke-direct {p0}, Lcom/android/server/engineer/OneplusEngineerService;->Il()V

    return-void
.end method

.method private Fl()V
    .locals 0

    const/16 p0, 0x65

    invoke-static {p0}, Lcom/android/server/engineer/qbh;->o(I)I

    const/16 p0, 0x465

    invoke-static {p0}, Lcom/android/server/engineer/qbh;->o(I)I

    invoke-static {}, Lcom/android/server/engineer/qbh;->Dc()I

    return-void
.end method

.method private Gl()Ljava/lang/String;
    .locals 0

    const p0, 0xf4279

    invoke-static {p0}, Lcom/android/server/engineer/rtg;->n(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/engineer/qbh;->ssp([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private Hl()Ljava/lang/String;
    .locals 0

    const-string p0, "/mnt/vendor/persist/engineermode/oem_serial_no"

    invoke-static {p0}, Lcom/android/server/engineer/qbh;->G(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0
.end method

.method private final Il()V
    .locals 3

    new-instance p0, Ljava/io/File;

    const-string v0, "/mnt/vendor/persist/engineermode/engineermode_masterclear_flag"

    invoke-direct {p0, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    const-string v2, "persist.sys.allcommode"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.allcommode"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "persist.sys.adb.engineermode"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "diag,adb"

    const-string v1, "persist.sys.usb.config"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "sys.usb.config"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/io/File;->delete()Z

    const-string p0, "OneplusEngineerService"

    const-string v0, "/mnt/vendor/persist/engineermode/engineermode_masterclear_flag exists"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private Jl()V
    .locals 4

    const-string p0, "OneplusEngineerService"

    const-string v0, "writeWpIssueToCriticalLog"

    invoke-static {p0, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "gsm.serial"

    const-string v0, "UNKNOWN"

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WP OFF ISSUE"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "sys.usb.config.meta"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "USB Charge Disable"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v2, "normal"

    const-string v3, "persist.vendor.atm.mdmode"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "MODEM META MODE"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/16 v0, 0x65

    const-string v1, "ANDROID"

    const-string v2, "WriteProtectIssue"

    const-string v3, "WriteProtectNeedReset"

    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/server/engineer/qbh;->zta(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic bio(Lcom/android/server/engineer/OneplusEngineerService;)Lcom/android/server/lights/Light;
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService;->ch:Lcom/android/server/lights/Light;

    return-object p0
.end method

.method private checkPermission()Z
    .locals 1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p0

    const/16 v0, 0x3e8

    if-eq p0, v0, :cond_0

    const/16 v0, 0x3e9

    if-eq p0, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Permission Denial : can\'t access from pid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", uid="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OneplusEngineerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method static synthetic cno(Lcom/android/server/engineer/OneplusEngineerService;)Z
    .locals 0

    invoke-direct {p0}, Lcom/android/server/engineer/OneplusEngineerService;->checkPermission()Z

    move-result p0

    return p0
.end method

.method private dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    if-eqz p3, :cond_1

    array-length p2, p3

    if-lez p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    array-length v0, p3

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p3, v1

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "    "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dumpInternal args is : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OneplusEngineerService"

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p2, p0, Lcom/android/server/engineer/OneplusEngineerService;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/server/engineer/qbh;->you(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_1

    :cond_2
    new-instance v0, Lcom/android/server/engineer/ywr;

    iget-object p2, p0, Lcom/android/server/engineer/OneplusEngineerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p2}, Lcom/android/server/engineer/ywr;-><init>(Lcom/android/server/engineer/OneplusEngineerService;Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/server/engineer/OneplusEngineerService;->mBinderService:Lcom/android/server/engineer/OneplusEngineerService$BinderService;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    new-instance v7, Landroid/os/ResultReceiver;

    const/4 p0, 0x0

    invoke-direct {v7, p0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    move-object v3, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    :goto_1
    return-void
.end method

.method static synthetic kth(Lcom/android/server/engineer/OneplusEngineerService;)Lcom/android/server/lights/Light;
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mButtonLight:Lcom/android/server/lights/Light;

    return-object p0
.end method

.method private kth(Landroid/content/Context;)Z
    .locals 1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 p1, 0x0

    const-string v0, "device_provisioned"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move p1, v0

    :cond_0
    return p1
.end method

.method static synthetic rtg(Lcom/android/server/engineer/OneplusEngineerService;)Lcom/android/server/engineer/you;
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService;->dh:Lcom/android/server/engineer/you;

    return-object p0
.end method

.method static synthetic sis(Lcom/android/server/engineer/OneplusEngineerService;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService;->pcb:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic ssp(Lcom/android/server/engineer/OneplusEngineerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/engineer/OneplusEngineerService;->Jl()V

    return-void
.end method

.method static synthetic tsu(Lcom/android/server/engineer/OneplusEngineerService;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService;->items:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic you(Lcom/android/server/engineer/OneplusEngineerService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/engineer/OneplusEngineerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/engineer/OneplusEngineerService;->mBatteryLevel:I

    return p1
.end method

.method static synthetic zta(Lcom/android/server/engineer/OneplusEngineerService;)Ljava/lang/Class;
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService;->class1:Ljava/lang/Class;

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/engineer/OneplusEngineerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/engineer/OneplusEngineerService;->pcb:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic zta(Lcom/android/server/engineer/OneplusEngineerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/engineer/OneplusEngineerService;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic zta(Lcom/android/server/engineer/OneplusEngineerService;Landroid/content/Context;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/engineer/OneplusEngineerService;->kth(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method cgv(Ljava/lang/String;)Z
    .locals 2

    const p0, 0x186a6

    if-nez p1, :cond_0

    const/16 p1, 0x8

    new-array p1, p1, [B

    array-length v0, p1

    invoke-static {p0, p1, v0}, Lcom/android/server/engineer/rtg;->zta(I[BI)Z

    move-result p0

    return p0

    :cond_0
    invoke-static {p1}, Lcom/android/server/engineer/qbh;->B(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    array-length v1, v0

    invoke-static {p0, v0, v1}, Lcom/android/server/engineer/rtg;->zta(I[BI)Z

    move-result p0

    if-eqz p0, :cond_1

    :try_start_0
    const-string v0, "ro.hw.phone.color"

    invoke-static {v0, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set back cover color id caught exception : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OneplusEngineerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return p0

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method getBatteryLevel()I
    .locals 0

    iget p0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mBatteryLevel:I

    return p0
.end method

.method ia()Ljava/lang/String;
    .locals 1

    const p0, 0x186a5

    invoke-static {p0}, Lcom/android/server/engineer/rtg;->n(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/engineer/qbh;->ssp([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/engineer/qbh;->B(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method ja()Ljava/lang/String;
    .locals 0

    const p0, 0x186a1

    invoke-static {p0}, Lcom/android/server/engineer/rtg;->n(I)[B

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/engineer/qbh;->ssp([B)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final ka()V
    .locals 6

    const-string v0, "com.qualcomm.qcnvitems.QcNvItems"

    :try_start_0
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->class1:Ljava/lang/Class;

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Class;

    const-class v2, Landroid/content/Context;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-array v2, v0, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/engineer/OneplusEngineerService;->mContext:Landroid/content/Context;

    aput-object v4, v2, v3
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_5

    :try_start_1
    iget-object v4, p0, Lcom/android/server/engineer/OneplusEngineerService;->class1:Ljava/lang/Class;

    invoke-virtual {v4, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    :try_start_2
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/engineer/OneplusEngineerService;->items:Ljava/lang/Object;

    const/4 v1, 0x3

    new-array v2, v1, [Ljava/lang/Class;

    const-class v4, Landroid/os/Handler;

    aput-object v4, v2, v3

    sget-object v4, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v0

    const-class v4, Ljava/lang/Object;

    const/4 v5, 0x2

    aput-object v4, v2, v5

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/engineer/OneplusEngineerService;->qcHandler:Landroid/os/Handler;

    aput-object v4, v1, v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v0

    const/4 v0, 0x0

    aput-object v0, v1, v5

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->class1:Ljava/lang/Class;

    const-string v3, "registerOnServiceConnected"

    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService;->items:Ljava/lang/Object;

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_5

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_3
    invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/InstantiationException;->printStackTrace()V
    :try_end_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_0

    :catch_4
    move-exception p0

    :try_start_4
    invoke-virtual {p0}, Ljava/lang/NoSuchMethodException;->printStackTrace()V
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_5

    goto :goto_0

    :catch_5
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method la()Z
    .locals 4

    invoke-static {}, Lcom/android/server/engineer/rtg;->wc()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/engineer/rtg;->c(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/server/engineer/rtg;->wc()Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_0
    const-string v0, "vendor.oem.quit.atm"

    const-string v2, "true"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set reset atm property caught exception : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OneplusEngineerService"

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-direct {p0}, Lcom/android/server/engineer/OneplusEngineerService;->Fl()V

    return v1

    :cond_1
    return v0
.end method

.method lqr(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService;->dh:Lcom/android/server/engineer/you;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/engineer/you;->J(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onBootPhase(I)V
    .locals 4

    const-string v0, "OneplusEngineerService"

    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_2

    const-string p1, "on PHASE_BOOT_COMPLETED"

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/server/engineer/OneplusEngineerService;->dh:Lcom/android/server/engineer/you;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/engineer/bvj;->Hc()V

    :cond_0
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v0, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/engineer/OneplusEngineerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/engineer/OneplusEngineerService;->mHandler:Lcom/android/server/engineer/OneplusEngineerService$you;

    const-string v3, "oem.permission.OEM_COMPONENT_SAFE"

    invoke-virtual {v0, v1, p1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/engineer/qbh;->Cc()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {}, Lcom/android/server/engineer/rtg;->wc()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/server/engineer/OneplusEngineerService;->mHandler:Lcom/android/server/engineer/OneplusEngineerService$you;

    new-instance v0, Lcom/android/server/engineer/bio;

    invoke-direct {v0, p0}, Lcom/android/server/engineer/bio;-><init>(Lcom/android/server/engineer/OneplusEngineerService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object p1, p0, Lcom/android/server/engineer/OneplusEngineerService;->mHandler:Lcom/android/server/engineer/OneplusEngineerService$you;

    new-instance v0, Lcom/android/server/engineer/igw;

    invoke-direct {v0, p0}, Lcom/android/server/engineer/igw;-><init>(Lcom/android/server/engineer/OneplusEngineerService;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    new-instance p1, Lcom/android/server/engineer/wtn;

    invoke-direct {p1, p0}, Lcom/android/server/engineer/wtn;-><init>(Lcom/android/server/engineer/OneplusEngineerService;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    new-instance p1, Lcom/android/server/engineer/gck;

    invoke-direct {p1, p0}, Lcom/android/server/engineer/gck;-><init>(Lcom/android/server/engineer/OneplusEngineerService;)V

    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    iget-object p1, p0, Lcom/android/server/engineer/OneplusEngineerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/server/engineer/OneplusEngineerService;->kth(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/android/server/engineer/OneplusEngineerService;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "device_provisioned"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mSettingsObserver:Lcom/android/server/engineer/OneplusEngineerService$sis;

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto/16 :goto_2

    :cond_2
    const/16 v1, 0x1e0

    if-ne v1, p1, :cond_6

    invoke-virtual {p0}, Lcom/android/server/engineer/OneplusEngineerService;->ia()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    :try_start_0
    const-string v1, "ro.hw.phone.color"

    invoke-static {v1, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set color id property caught exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    invoke-direct {p0}, Lcom/android/server/engineer/OneplusEngineerService;->Gl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    const-string v1, "\"login_mode\":\t\"production\""

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_4

    :try_start_1
    const-string p1, "sys.oem.production.login.mode"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set download mode property caught exception : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    invoke-direct {p0}, Lcom/android/server/engineer/OneplusEngineerService;->Hl()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_5

    :try_start_2
    const-string p1, "persist.sys.oneplus.serialno"

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "set Oneplus serial no caught exception : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_5
    sget-boolean p0, Lcom/android/server/engineer/OneplusEngineerService;->DEBUG_ONEPLUS:Z

    if-eqz p0, :cond_6

    const-string p0, "Skip to update empty value from getOneplusSerialNoInternal."

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :goto_2
    return-void
.end method

.method public onStart()V
    .locals 3

    const-string v0, "OneplusEngineerService"

    const-string v1, "publishBinderService ENGINEER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/engineer/OneplusEngineerService$BinderService;-><init>(Lcom/android/server/engineer/OneplusEngineerService;Lcom/android/server/engineer/ssp;)V

    iput-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mBinderService:Lcom/android/server/engineer/OneplusEngineerService$BinderService;

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mBinderService:Lcom/android/server/engineer/OneplusEngineerService$BinderService;

    const-string v2, "engineer"

    invoke-virtual {p0, v2, v0}, Lcom/android/server/SystemService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v0, Landroid/engineer/OneplusEngineerInternal;

    new-instance v2, Lcom/android/server/engineer/OneplusEngineerService$zta;

    invoke-direct {v2, p0, v1}, Lcom/android/server/engineer/OneplusEngineerService$zta;-><init>(Lcom/android/server/engineer/OneplusEngineerService;Lcom/android/server/engineer/ssp;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/SystemService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public publish(Landroid/content/Context;)V
    .locals 1

    new-instance p1, Lcom/android/server/engineer/OneplusEngineerService$BinderService;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/server/engineer/OneplusEngineerService$BinderService;-><init>(Lcom/android/server/engineer/OneplusEngineerService;Lcom/android/server/engineer/ssp;)V

    const-string p0, "engineer"

    invoke-static {p0, p1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public systemReady()V
    .locals 2

    const-string v0, "OneplusEngineerService"

    const-string v1, "systemReady"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-class v0, Lcom/android/server/lights/LightsManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsManager;

    iput-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mButtonLight:Lcom/android/server/lights/Light;

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->ch:Lcom/android/server/lights/Light;

    invoke-virtual {p0}, Lcom/android/server/engineer/OneplusEngineerService;->ka()V

    return-void
.end method

.method veq(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService;->dh:Lcom/android/server/engineer/you;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/engineer/you;->K(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method you(Landroid/content/ComponentName;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService;->dh:Lcom/android/server/engineer/you;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/engineer/you;->tsu(Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method zta(Landroid/content/ComponentName;)Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/engineer/OneplusEngineerService;->dh:Lcom/android/server/engineer/you;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/server/engineer/you;->sis(Landroid/content/ComponentName;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
