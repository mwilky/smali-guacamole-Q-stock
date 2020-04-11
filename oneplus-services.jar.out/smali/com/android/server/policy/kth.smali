.class public Lcom/android/server/policy/kth;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/policy/kth$you;,
        Lcom/android/server/policy/kth$zta;,
        Lcom/android/server/policy/kth$sis;
    }
.end annotation


# static fields
.field private static final BD:Ljava/lang/String; = "OpenShelf"

.field private static final CD:Ljava/lang/String; = "OpenApp"

.field private static final DD:Ljava/lang/String; = "OpenShortcut"

.field private static final DEBUG:Z

.field private static final ED:Ljava/lang/String; = "/proc/touchpanel/gesture_enable"

.field private static final FD:Ljava/lang/String; = "/proc/touchpanel/coordinate"

.field private static final GD:Ljava/lang/String; = "/proc/touchpanel/gesture_switch"

.field private static final HD:J = 0x4bL

.field private static final JD:J = 0x96L

.field private static final KD:Ljava/lang/String; = "0"

.field private static final LD:F = 0.1f

.field private static final MD:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "DeviceKeyHandler"

.field private static final VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

.field private static final lD:Ljava/lang/String; = "1"

.field private static final mD:Ljava/lang/String; = "7"

.field private static final nD:Ljava/lang/String; = "5"

.field private static final oD:Ljava/lang/String; = "4"

.field private static final pD:I = 0xbb8

.field private static final qD:Ljava/lang/String; = "15"

.field private static final rD:Ljava/lang/String; = "6"

.field private static final sD:Ljava/lang/String; = "2"

.field private static final tD:Ljava/lang/String; = "14"

.field private static final uD:Ljava/lang/String; = "12"

.field private static final vD:Ljava/lang/String; = "13"

.field private static final wD:Ljava/lang/String; = "OpenCamera"

.field private static final xD:Ljava/lang/String; = "OpenTorch"

.field private static final yD:Ljava/lang/String; = "FrontCamera"

.field private static final zD:Ljava/lang/String; = "TakeVideo"


# instance fields
.field final KC:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/policy/kth$zta;",
            ">;"
        }
    .end annotation
.end field

.field LC:Landroid/os/PowerManager$WakeLock;

.field MC:Landroid/os/PowerManager$WakeLock;

.field OC:Landroid/os/PowerManager$WakeLock;

.field private PC:I

.field private QC:Z

.field private RC:Z

.field private SC:Z

.field private TC:Z

.field private UC:Z

.field private VC:Z

.field private WC:Z

.field private XC:Z

.field private YC:Z

.field ZC:Landroid/content/pm/LauncherApps;

.field private _C:Z

.field private aD:Landroid/hardware/camera2/CameraManager;

.field private bD:Z

.field private cD:Z

.field private dD:Lcom/android/server/policy/kth$zta;

.field private eD:Z

.field private fD:Z

.field private gD:Z

.field private hD:Z

.field iD:Landroid/hardware/SensorEventListener;

.field jD:Landroid/hardware/SensorEventListener;

.field private final kD:Landroid/hardware/camera2/CameraManager$TorchCallback;

.field private mActivityManager:Landroid/app/ActivityManager;

.field private final mContext:Landroid/content/Context;

.field private mEventHandler:Lcom/android/server/policy/kth$you;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

.field private final mObject:Ljava/lang/Object;

.field private mObserver:Lcom/android/server/policy/kth$sis;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mProximitySensor:Landroid/hardware/Sensor;

.field private mProximitySensorEnabled:Z

.field private mSensorEnabled:Z

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSleeping:Z

.field private mSystemReady:Z

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private mVibrator:Landroid/os/Vibrator;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/kth;->DEBUG:Z

    new-instance v0, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v0}, Landroid/media/AudioAttributes$Builder;-><init>()V

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setContentType(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/server/policy/kth;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/policy/kth;->KC:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/policy/kth;->PC:I

    iput-boolean v0, p0, Lcom/android/server/policy/kth;->QC:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/kth;->RC:Z

    iput-boolean v1, p0, Lcom/android/server/policy/kth;->SC:Z

    iput-boolean v1, p0, Lcom/android/server/policy/kth;->TC:Z

    iput-boolean v1, p0, Lcom/android/server/policy/kth;->UC:Z

    iput-boolean v1, p0, Lcom/android/server/policy/kth;->VC:Z

    iput-boolean v1, p0, Lcom/android/server/policy/kth;->WC:Z

    iput-boolean v1, p0, Lcom/android/server/policy/kth;->XC:Z

    iput-boolean v1, p0, Lcom/android/server/policy/kth;->YC:Z

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/policy/kth;->mObject:Ljava/lang/Object;

    iput-boolean v0, p0, Lcom/android/server/policy/kth;->mProximitySensorEnabled:Z

    iput-boolean v1, p0, Lcom/android/server/policy/kth;->bD:Z

    iput-boolean v0, p0, Lcom/android/server/policy/kth;->cD:Z

    iput-boolean v0, p0, Lcom/android/server/policy/kth;->mSensorEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/policy/kth;->eD:Z

    iput-boolean v1, p0, Lcom/android/server/policy/kth;->fD:Z

    iput-boolean v0, p0, Lcom/android/server/policy/kth;->mSleeping:Z

    iput-boolean v0, p0, Lcom/android/server/policy/kth;->hD:Z

    new-instance v2, Lcom/android/server/policy/rtg;

    invoke-direct {v2, p0}, Lcom/android/server/policy/rtg;-><init>(Lcom/android/server/policy/kth;)V

    iput-object v2, p0, Lcom/android/server/policy/kth;->iD:Landroid/hardware/SensorEventListener;

    new-instance v2, Lcom/android/server/policy/ssp;

    invoke-direct {v2, p0}, Lcom/android/server/policy/ssp;-><init>(Lcom/android/server/policy/kth;)V

    iput-object v2, p0, Lcom/android/server/policy/kth;->jD:Landroid/hardware/SensorEventListener;

    new-instance v2, Lcom/android/server/policy/cno;

    invoke-direct {v2, p0}, Lcom/android/server/policy/cno;-><init>(Lcom/android/server/policy/kth;)V

    iput-object v2, p0, Lcom/android/server/policy/kth;->kD:Landroid/hardware/camera2/CameraManager$TorchCallback;

    iput-object p1, p0, Lcom/android/server/policy/kth;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/server/policy/kth;->mPowerManager:Landroid/os/PowerManager;

    new-instance v2, Lcom/android/server/policy/kth$you;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/policy/kth$you;-><init>(Lcom/android/server/policy/kth;Lcom/android/server/policy/you;)V

    iput-object v2, p0, Lcom/android/server/policy/kth;->mEventHandler:Lcom/android/server/policy/kth$you;

    const-string v2, "sensor"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/SensorManager;

    iput-object v2, p0, Lcom/android/server/policy/kth;->mSensorManager:Landroid/hardware/SensorManager;

    new-array v2, v1, [I

    const/16 v3, 0x8c

    aput v3, v2, v0

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-nez v2, :cond_0

    new-array v2, v1, [I

    const/16 v3, 0xd9

    aput v3, v2, v0

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/android/server/policy/kth;->hD:Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/kth;->mSensorManager:Landroid/hardware/SensorManager;

    const v2, 0x1fa2651

    invoke-virtual {v0, v2}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/kth;->mProximitySensor:Landroid/hardware/Sensor;

    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/policy/kth;->mVibrator:Landroid/os/Vibrator;

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/server/policy/kth;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/kth;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/server/policy/kth;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "ProximityWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/kth;->LC:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/policy/kth;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "PartialGestureWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/kth;->MC:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/policy/kth;->mPowerManager:Landroid/os/PowerManager;

    const v1, 0x10000001

    const-string v2, "AcquireCauseWakeUpGestureWakeLock"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/policy/kth;->OC:Landroid/os/PowerManager$WakeLock;

    new-instance v0, Lcom/android/server/policy/kth$sis;

    iget-object v1, p0, Lcom/android/server/policy/kth;->mEventHandler:Lcom/android/server/policy/kth$you;

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/kth$sis;-><init>(Lcom/android/server/policy/kth;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/policy/kth;->mObserver:Lcom/android/server/policy/kth$sis;

    const-string v0, "camera"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraManager;

    iput-object p1, p0, Lcom/android/server/policy/kth;->aD:Landroid/hardware/camera2/CameraManager;

    new-instance p1, Landroid/os/HandlerThread;

    const/16 v0, 0xa

    const-string v1, "DeviceKeyHandler"

    invoke-direct {p1, v1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/server/policy/kth;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object p1, p0, Lcom/android/server/policy/kth;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/server/policy/kth;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/policy/kth;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0}, Lcom/android/server/policy/kth;->Jc()V

    new-instance p1, Ljava/io/File;

    const-string v0, "/proc/touchpanel/gesture_switch"

    invoke-direct {p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/server/policy/kth;->cD:Z

    iget-object p1, p0, Lcom/android/server/policy/kth;->mContext:Landroid/content/Context;

    const-string v0, "telecom"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telecom/TelecomManager;

    iput-object p1, p0, Lcom/android/server/policy/kth;->mTelecomManager:Landroid/telecom/TelecomManager;

    return-void
.end method

.method private Aa(Z)V
    .locals 2

    iget-object p0, p0, Lcom/android/server/policy/kth;->mVibrator:Landroid/os/Vibrator;

    if-eqz p0, :cond_1

    if-eqz p1, :cond_0

    const-wide/16 v0, 0x4b

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x96

    :goto_0
    sget-object p1, Lcom/android/server/policy/kth;->VIBRATION_ATTRIBUTES:Landroid/media/AudioAttributes;

    invoke-virtual {p0, v0, v1, p1}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    :cond_1
    return-void
.end method

.method private Ba(Z)Z
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    iget-object p1, p0, Lcom/android/server/policy/kth;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/android/server/policy/kth;->getDefaultHomePackageName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    const-string v1, "net.oneplus.h2launcher"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Landroid/content/Intent;

    const-string v2, "net.oneplus.h2launcher.action.OPEN_QUICK_PAGE"

    invoke-direct {p1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    new-instance p1, Landroid/content/Intent;

    const-string v1, "net.oneplus.launcher.action.OPEN_QUICK_PAGE"

    invoke-direct {p1, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "net.oneplus.launcher"

    :goto_0
    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/server/policy/kth;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return v0
.end method

.method private Jn()V
    .locals 4

    sget-boolean v0, Lcom/android/server/policy/kth;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceKeyHandler"

    const-string v1, "disableProximitySensor() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/kth;->mProximitySensorEnabled:Z

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/kth;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/policy/kth;->jD:Landroid/hardware/SensorEventListener;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/policy/kth;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private Kn()V
    .locals 6

    sget-boolean v0, Lcom/android/server/policy/kth;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceKeyHandler"

    const-string v1, "enableProximitySensor() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/policy/kth;->mProximitySensorEnabled:Z

    if-nez v0, :cond_1

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/policy/kth;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/policy/kth;->jD:Landroid/hardware/SensorEventListener;

    iget-object v4, p0, Lcom/android/server/policy/kth;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/policy/kth;->mProximitySensorEnabled:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0

    :cond_1
    :goto_0
    return-void
.end method

.method private Ln()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/kth;->za(Z)V

    return-void
.end method

.method private Mn()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/policy/kth;->Aa(Z)V

    return-void
.end method

.method private Nn()V
    .locals 12

    invoke-static {}, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->isZenModeOn()Z

    move-result v0

    const-string v1, "DeviceKeyHandler"

    if-eqz v0, :cond_1

    sget-boolean p0, Lcom/android/server/policy/kth;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "black screen guesture blocked by brick mode!"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const-string v0, "/proc/touchpanel/coordinate"

    invoke-static {v0}, Lcom/android/server/policy/bio;->O(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    const/16 v2, 0x2c

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->indexOf(II)I

    move-result v2

    invoke-virtual {v0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const-string v4, "15"

    if-eqz v2, :cond_3

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Receive gesture "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/policy/kth;->isInCall()Z

    move-result v2

    const/4 v5, -0x1

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-nez v2, :cond_10

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const/16 v10, 0x31

    if-eq v2, v10, :cond_8

    const/16 v10, 0x37

    if-eq v2, v10, :cond_7

    const/16 v10, 0x624

    if-eq v2, v10, :cond_6

    const/16 v4, 0x34

    if-eq v2, v4, :cond_5

    const/16 v4, 0x35

    if-eq v2, v4, :cond_4

    goto :goto_0

    :cond_4
    const-string v2, "5"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v9

    goto :goto_1

    :cond_5
    const-string v2, "4"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v8

    goto :goto_1

    :cond_6
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v6

    goto :goto_1

    :cond_7
    const-string v2, "7"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v3

    goto :goto_1

    :cond_8
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    move v2, v7

    goto :goto_1

    :cond_9
    :goto_0
    move v2, v5

    :goto_1
    if-eqz v2, :cond_f

    if-eq v2, v9, :cond_e

    if-eq v2, v8, :cond_d

    if-eq v2, v7, :cond_b

    if-eq v2, v6, :cond_a

    goto :goto_3

    :cond_a
    iget-boolean v2, p0, Lcom/android/server/policy/kth;->mSleeping:Z

    if-eqz v2, :cond_10

    invoke-direct {p0, v0}, Lcom/android/server/policy/kth;->Yb(Ljava/lang/String;)V

    const-class v2, Landroid/service/dreams/DreamManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/service/dreams/DreamManagerInternal;

    invoke-virtual {v2}, Landroid/service/dreams/DreamManagerInternal;->onSingleTap()V

    goto :goto_3

    :cond_b
    iget-boolean v2, p0, Lcom/android/server/policy/kth;->mSleeping:Z

    if-nez v2, :cond_c

    iget-boolean v2, p0, Lcom/android/server/policy/kth;->WC:Z

    if-eqz v2, :cond_10

    :cond_c
    invoke-direct {p0, v0}, Lcom/android/server/policy/kth;->Yb(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/policy/kth;->Ln()V

    iget-object v2, p0, Lcom/android/server/policy/kth;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    const-string v4, "android.policy:DOUBLE_TAP"

    invoke-virtual {v2, v10, v11, v4}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    goto :goto_3

    :cond_d
    invoke-direct {p0, v0}, Lcom/android/server/policy/kth;->Yb(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/policy/kth;->Ln()V

    const/16 v2, 0x57

    goto :goto_2

    :cond_e
    invoke-direct {p0, v0}, Lcom/android/server/policy/kth;->Yb(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/policy/kth;->Ln()V

    const/16 v2, 0x58

    goto :goto_2

    :cond_f
    invoke-direct {p0, v0}, Lcom/android/server/policy/kth;->Yb(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/policy/kth;->Ln()V

    const/16 v2, 0x55

    :goto_2
    invoke-direct {p0, v2}, Lcom/android/server/policy/kth;->rb(I)V

    :cond_10
    :goto_3
    iget-object v2, p0, Lcom/android/server/policy/kth;->KC:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/kth$zta;

    if-eqz v0, :cond_14

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Corresponding action is "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/android/server/policy/kth$zta;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lcom/android/server/policy/kth$zta;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_4

    :sswitch_0
    const-string v2, "OpenCamera"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v2, v9

    goto :goto_5

    :sswitch_1
    const-string v2, "OpenApp"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x5

    goto :goto_5

    :sswitch_2
    const-string v2, "FrontCamera"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v2, v8

    goto :goto_5

    :sswitch_3
    const-string v2, "OpenTorch"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v2, v3

    goto :goto_5

    :sswitch_4
    const-string v2, "OpenShelf"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v2, v6

    goto :goto_5

    :sswitch_5
    const-string v2, "TakeVideo"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    move v2, v7

    goto :goto_5

    :sswitch_6
    const-string v2, "OpenShortcut"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    const/4 v2, 0x6

    goto :goto_5

    :cond_11
    :goto_4
    move v2, v5

    :goto_5
    packed-switch v2, :pswitch_data_0

    goto :goto_7

    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/server/policy/kth;->Yb(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/policy/kth;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v1, :cond_14

    invoke-virtual {v1, v3}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->isSecure(I)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-boolean v1, p0, Lcom/android/server/policy/kth;->gD:Z

    if-nez v1, :cond_12

    invoke-virtual {p0, v0, v9}, Lcom/android/server/policy/kth;->zta(Lcom/android/server/policy/kth$zta;Z)Z

    move-result v1

    if-eqz v1, :cond_13

    iput-object v0, p0, Lcom/android/server/policy/kth;->dD:Lcom/android/server/policy/kth$zta;

    goto :goto_6

    :cond_12
    invoke-virtual {p0, v0, v3}, Lcom/android/server/policy/kth;->zta(Lcom/android/server/policy/kth$zta;Z)Z

    move-result v1

    :cond_13
    :goto_6
    if-eqz v1, :cond_14

    invoke-direct {p0}, Lcom/android/server/policy/kth;->Ln()V

    iget-object v0, p0, Lcom/android/server/policy/kth;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->wakeUp(J)V

    iget-object v0, p0, Lcom/android/server/policy/kth;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    if-eqz v0, :cond_14

    new-instance v1, Lcom/android/server/policy/DeviceKeyHandler$5;

    invoke-direct {v1, p0}, Lcom/android/server/policy/DeviceKeyHandler$5;-><init>(Lcom/android/server/policy/kth;)V

    const/4 p0, 0x0

    invoke-virtual {v0, v1, p0}, Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;->dismiss(Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto :goto_7

    :pswitch_1
    invoke-direct {p0, v1}, Lcom/android/server/policy/kth;->Yb(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/policy/kth;->Ln()V

    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-direct {p0, v1}, Lcom/android/server/policy/kth;->Zb(Ljava/lang/String;)I

    move-result p0

    invoke-interface {v0, p0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->onCameraLaunchGestureDetected(I)V

    goto :goto_7

    :pswitch_2
    invoke-direct {p0, v1}, Lcom/android/server/policy/kth;->Yb(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/policy/kth;->_C:Z

    xor-int/2addr v0, v9

    invoke-virtual {p0, v0}, Lcom/android/server/policy/kth;->e(Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/policy/kth;->za(Z)V

    :cond_14
    :goto_7
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x764e2f30 -> :sswitch_6
        -0x2fb833ec -> :sswitch_5
        -0x2d113a20 -> :sswitch_4
        -0x2cffc44e -> :sswitch_3
        -0x2423cd72 -> :sswitch_2
        0x17ed5757 -> :sswitch_1
        0x6f3d522f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private On()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/policy/kth;->LC:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v0, p0, Lcom/android/server/policy/kth;->mObject:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/policy/kth;->cD:Z

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/policy/kth;->mEventHandler:Lcom/android/server/policy/kth$you;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/kth;->mEventHandler:Lcom/android/server/policy/kth$you;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/policy/kth;->Kn()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/policy/kth;->mObject:Ljava/lang/Object;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v1, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catch_0
    :try_start_2
    iget-boolean v1, p0, Lcom/android/server/policy/kth;->bD:Z

    if-nez v1, :cond_2

    sget-boolean v1, Lcom/android/server/policy/kth;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "DeviceKeyHandler"

    const-string v3, "sensorProcessMessage(): sensor value change."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/policy/kth;->mEventHandler:Lcom/android/server/policy/kth$you;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/kth;->mEventHandler:Lcom/android/server/policy/kth$you;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_2
    invoke-direct {p0}, Lcom/android/server/policy/kth;->Jn()V

    :goto_0
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object p0, p0, Lcom/android/server/policy/kth;->LC:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {p0}, Landroid/os/PowerManager$WakeLock;->release()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw p0
.end method

.method private Pn()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/policy/kth;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    const-string v3, "oem_acc_blackscreen_gestrue_enable"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/policy/kth;->PC:I

    sget-boolean v3, Lcom/android/server/policy/kth;->DEBUG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateH2OemSettings(): mBlackKeySettingState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/policy/kth;->PC:I

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DeviceKeyHandler"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v3, p0, Lcom/android/server/policy/kth;->PC:I

    const/4 v4, 0x7

    invoke-static {v3, v4}, Lcom/android/server/policy/kth;->bvj(II)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_1

    move v3, v4

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    iput-boolean v3, p0, Lcom/android/server/policy/kth;->WC:Z

    iget v3, p0, Lcom/android/server/policy/kth;->PC:I

    const/4 v5, 0x5

    invoke-static {v3, v5}, Lcom/android/server/policy/kth;->bvj(II)I

    move-result v3

    if-ne v3, v4, :cond_2

    move v3, v4

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/policy/kth;->RC:Z

    iget v3, p0, Lcom/android/server/policy/kth;->PC:I

    const/4 v5, 0x4

    invoke-static {v3, v5}, Lcom/android/server/policy/kth;->bvj(II)I

    move-result v3

    if-ne v3, v4, :cond_3

    move v3, v4

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    iput-boolean v3, p0, Lcom/android/server/policy/kth;->SC:Z

    iget v3, p0, Lcom/android/server/policy/kth;->PC:I

    const/4 v5, 0x3

    invoke-static {v3, v5}, Lcom/android/server/policy/kth;->bvj(II)I

    move-result v3

    if-ne v3, v4, :cond_4

    move v3, v4

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    iput-boolean v3, p0, Lcom/android/server/policy/kth;->TC:Z

    iget v3, p0, Lcom/android/server/policy/kth;->PC:I

    const/4 v5, 0x2

    invoke-static {v3, v5}, Lcom/android/server/policy/kth;->bvj(II)I

    move-result v3

    if-ne v3, v4, :cond_5

    move v3, v4

    goto :goto_4

    :cond_5
    move v3, v2

    :goto_4
    iput-boolean v3, p0, Lcom/android/server/policy/kth;->UC:Z

    iget v3, p0, Lcom/android/server/policy/kth;->PC:I

    invoke-static {v3, v4}, Lcom/android/server/policy/kth;->bvj(II)I

    move-result v3

    if-ne v3, v4, :cond_6

    move v3, v4

    goto :goto_5

    :cond_6
    move v3, v2

    :goto_5
    iput-boolean v3, p0, Lcom/android/server/policy/kth;->VC:Z

    iget v3, p0, Lcom/android/server/policy/kth;->PC:I

    const/4 v6, 0x6

    invoke-static {v3, v6}, Lcom/android/server/policy/kth;->bvj(II)I

    move-result v3

    if-ne v3, v4, :cond_7

    move v3, v4

    goto :goto_6

    :cond_7
    move v3, v2

    :goto_6
    iput-boolean v3, p0, Lcom/android/server/policy/kth;->XC:Z

    iget v3, p0, Lcom/android/server/policy/kth;->PC:I

    invoke-static {v3, v2}, Lcom/android/server/policy/kth;->bvj(II)I

    move-result v3

    if-ne v3, v4, :cond_8

    move v3, v4

    goto :goto_7

    :cond_8
    move v3, v2

    :goto_7
    iput-boolean v3, p0, Lcom/android/server/policy/kth;->YC:Z

    iget-boolean v3, p0, Lcom/android/server/policy/kth;->VC:Z

    if-ne v3, v4, :cond_9

    iput-boolean v4, p0, Lcom/android/server/policy/kth;->UC:Z

    :cond_9
    invoke-virtual {p0, v0}, Lcom/android/server/policy/kth;->zta(Landroid/content/ContentResolver;)V

    new-array v3, v5, [B

    iget v5, p0, Lcom/android/server/policy/kth;->PC:I

    and-int/lit16 v6, v5, 0xff

    int-to-byte v6, v6

    aput-byte v6, v3, v2

    shr-int/lit8 v5, v5, 0x8

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v3, v4

    const-string v5, "/proc/touchpanel/gesture_enable"

    invoke-static {v5, v3}, Lcom/android/server/policy/bio;->zta(Ljava/lang/String;[B)Z

    const-string v3, "oem_acc_anti_misoperation_screen"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v4, :cond_a

    move v2, v4

    :cond_a
    iput-boolean v2, p0, Lcom/android/server/policy/kth;->fD:Z

    return-void
.end method

.method private Yb(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/android/server/policy/kth;->_b(Ljava/lang/String;)Z

    move-result p1

    const-wide/16 v0, 0xbb8

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/server/policy/kth;->OC:Landroid/os/PowerManager$WakeLock;

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/server/policy/kth;->MC:Landroid/os/PowerManager$WakeLock;

    if-eqz p0, :cond_1

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_1
    return-void
.end method

.method private Zb(Ljava/lang/String;)I
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const v0, -0x2fb833ec

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v0, :cond_2

    const v0, -0x2423cd72

    if-eq p0, v0, :cond_1

    const v0, 0x6f3d522f

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "OpenCamera"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    const-string p0, "FrontCamera"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v2

    goto :goto_1

    :cond_2
    const-string p0, "TakeVideo"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v1

    goto :goto_1

    :cond_3
    :goto_0
    const/4 p0, -0x1

    :goto_1
    const p1, 0x10000100

    if-eqz p0, :cond_6

    if-eq p0, v2, :cond_5

    if-eq p0, v1, :cond_4

    goto :goto_2

    :cond_4
    const p1, 0x10000400

    goto :goto_2

    :cond_5
    const p1, 0x10000200

    :cond_6
    :goto_2
    return p1
.end method

.method private _b(Ljava/lang/String;)Z
    .locals 2

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    sparse-switch p0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string p0, "OpenCamera"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v0

    goto :goto_1

    :sswitch_1
    const-string p0, "OpenApp"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x5

    goto :goto_1

    :sswitch_2
    const-string p0, "1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_1

    :sswitch_3
    const-string p0, "FrontCamera"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    goto :goto_1

    :sswitch_4
    const-string p0, "OpenShelf"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x4

    goto :goto_1

    :sswitch_5
    const-string p0, "TakeVideo"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :sswitch_6
    const-string p0, "OpenShortcut"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x6

    goto :goto_1

    :cond_0
    :goto_0
    const/4 p0, -0x1

    :goto_1
    packed-switch p0, :pswitch_data_0

    return v1

    :pswitch_0
    return v0

    :sswitch_data_0
    .sparse-switch
        -0x764e2f30 -> :sswitch_6
        -0x2fb833ec -> :sswitch_5
        -0x2d113a20 -> :sswitch_4
        -0x2423cd72 -> :sswitch_3
        0x31 -> :sswitch_2
        0x17ed5757 -> :sswitch_1
        0x6f3d522f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic access$700()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/kth;->DEBUG:Z

    return v0
.end method

.method static synthetic bio(Lcom/android/server/policy/kth;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/policy/kth;->bD:Z

    return p0
.end method

.method public static bvj(II)I
    .locals 1

    const/4 v0, 0x1

    shl-int/2addr v0, p1

    and-int/2addr p0, v0

    shr-int/2addr p0, p1

    return p0
.end method

.method static synthetic cno(Lcom/android/server/policy/kth;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/kth;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private getCameraId()Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/hardware/camera2/CameraAccessException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/policy/kth;->aD:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v0}, Landroid/hardware/camera2/CameraManager;->getCameraIdList()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v1, :cond_1

    aget-object v4, v0, v2

    :try_start_0
    iget-object v5, p0, Lcom/android/server/policy/kth;->aD:Landroid/hardware/camera2/CameraManager;

    invoke-virtual {v5, v4}, Landroid/hardware/camera2/CameraManager;->getCameraCharacteristics(Ljava/lang/String;)Landroid/hardware/camera2/CameraCharacteristics;

    move-result-object v5

    sget-object v6, Landroid/hardware/camera2/CameraCharacteristics;->FLASH_INFO_AVAILABLE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v6}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    sget-object v7, Landroid/hardware/camera2/CameraCharacteristics;->LENS_FACING:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v5, v7}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v3
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    return-object v4

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "DeviceKeyHandler"

    const-string v1, "Couldn\'t get torch mode characteristics."

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    return-object v3
.end method

.method private getDefaultHomePackageName(Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    new-instance p0, Landroid/content/Intent;

    const-string v0, "android.intent.action.MAIN"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "android.intent.category.HOME"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v0, ""

    const-string v1, "DeviceKeyHandler"

    if-nez p1, :cond_0

    const-string p0, "getDefaultHomePackageName: could not get package manager"

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_0
    const/16 v2, 0x80

    invoke-virtual {p1, p0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "getDefaultHomePackageName: could not get ResolveInfo"

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[isDefaultHome] default home: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p0, :cond_2

    iget-object v0, p0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    :cond_2
    return-object v0
.end method

.method static synthetic kth(Lcom/android/server/policy/kth;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/kth;->mObject:Ljava/lang/Object;

    return-object p0
.end method

.method private rb(I)V
    .locals 9

    iget-boolean v0, p0, Lcom/android/server/policy/kth;->mSystemReady:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/server/policy/kth;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance v8, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v0, v8

    move v6, p1

    invoke-direct/range {v0 .. v7}, Landroid/view/KeyEvent;-><init>(JJIII)V

    const/4 p1, 0x1

    invoke-virtual {p0, v8, p1}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    invoke-static {v8, p1}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    goto :goto_0

    :cond_0
    sget-boolean p0, Lcom/android/server/policy/kth;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "DeviceKeyHandler"

    const-string p1, "MediaSessionLegacyHelper instance is null."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method static synthetic rtg(Lcom/android/server/policy/kth;)Lcom/android/server/policy/kth$zta;
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/kth;->dD:Lcom/android/server/policy/kth$zta;

    return-object p0
.end method

.method static synthetic sis(Lcom/android/server/policy/kth;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/policy/kth;->_C:Z

    return p0
.end method

.method private sis(Ljava/lang/String;IZ)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/kth;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    return v1

    :cond_0
    const-string p3, "com.oneplus.soundrecorder"

    invoke-virtual {p3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "launch_from"

    const-string p3, "screen_off_gesture"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    iget-object p0, p0, Lcom/android/server/policy/kth;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/UserHandle;

    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return v1

    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "start app "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed because intent is null"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DeviceKeyHandler"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0
.end method

.method static synthetic ssp(Lcom/android/server/policy/kth;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/policy/kth;->mSleeping:Z

    return p0
.end method

.method static synthetic tsu(Lcom/android/server/policy/kth;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/kth;->Pn()V

    return-void
.end method

.method static synthetic you(Lcom/android/server/policy/kth;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/kth;->Nn()V

    return-void
.end method

.method static synthetic you(Lcom/android/server/policy/kth;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/kth;->bD:Z

    return p1
.end method

.method private za(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/policy/kth;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/policy/kth;->mVibrator:Landroid/os/Vibrator;

    const/16 v2, 0x1a

    invoke-static {v0, v1, v2}, Lcom/oneplus/util/VibratorSceneUtils;->doVibrateWithSceneIfNeeded(Landroid/content/Context;Landroid/os/Vibrator;I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/policy/kth;->Aa(Z)V

    :cond_0
    return-void
.end method

.method static synthetic zta(Lcom/android/server/policy/kth;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/kth;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/policy/kth;Lcom/android/server/policy/kth$zta;)Lcom/android/server/policy/kth$zta;
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/kth;->dD:Lcom/android/server/policy/kth$zta;

    return-object p1
.end method

.method static synthetic zta(Lcom/android/server/policy/kth;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/policy/kth;->_C:Z

    return p1
.end method

.method private zta(Ljava/lang/String;Ljava/lang/String;IZ)Z
    .locals 9

    iget-object v0, p0, Lcom/android/server/policy/kth;->mContext:Landroid/content/Context;

    const-string v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/server/policy/kth;->ZC:Landroid/content/pm/LauncherApps;

    iget-object v0, p0, Lcom/android/server/policy/kth;->ZC:Landroid/content/pm/LauncherApps;

    const/4 v1, 0x0

    const-string v2, "DeviceKeyHandler"

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    if-eqz p4, :cond_0

    new-instance p4, Landroid/content/pm/LauncherApps$ShortcutQuery;

    invoke-direct {p4}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    invoke-virtual {p4, p1}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    new-array v3, v0, [Ljava/lang/String;

    aput-object p2, v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p4, p2}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setShortcutIds(Ljava/util/List;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    iget-object p2, p0, Lcom/android/server/policy/kth;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, p1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/kth;->ZC:Landroid/content/pm/LauncherApps;

    new-instance p1, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p4, p1}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_1

    return v0

    :catch_0
    const-string p0, "get shortcuts failed"

    :goto_0
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    :try_start_1
    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v7, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v3, p0, Lcom/android/server/policy/kth;->ZC:Landroid/content/pm/LauncherApps;

    const/4 v6, 0x0

    new-instance v8, Landroid/os/UserHandle;

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p0

    invoke-direct {v8, p0}, Landroid/os/UserHandle;-><init>(I)V

    move-object v4, p1

    move-object v5, p2

    invoke-virtual/range {v3 .. v8}, Landroid/content/pm/LauncherApps;->startShortcut(Ljava/lang/String;Ljava/lang/String;Landroid/graphics/Rect;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    return v0

    :catch_1
    const-string p0, "start shortcut failed"

    goto :goto_0

    :cond_1
    const-string p0, "shortcut service is null"

    goto :goto_0
.end method


# virtual methods
.method Ic()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/kth;->mSleeping:Z

    iget-boolean v1, p0, Lcom/android/server/policy/kth;->mSensorEnabled:Z

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/server/policy/kth;->hD:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/android/server/policy/kth;->mSensorEnabled:Z

    iget-object v0, p0, Lcom/android/server/policy/kth;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/policy/kth;->iD:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v0, p0, Lcom/android/server/policy/kth;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/kth;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/you;

    invoke-direct {v1, p0}, Lcom/android/server/policy/you;-><init>(Lcom/android/server/policy/kth;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public Jc()V
    .locals 2

    sget-boolean v0, Lcom/android/server/policy/kth;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "DeviceKeyHandler"

    const-string v1, "registerCameraManagerCallbacks() called."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/kth;->aD:Landroid/hardware/camera2/CameraManager;

    iget-object v1, p0, Lcom/android/server/policy/kth;->kD:Landroid/hardware/camera2/CameraManager$TorchCallback;

    iget-object p0, p0, Lcom/android/server/policy/kth;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, p0}, Landroid/hardware/camera2/CameraManager;->registerTorchCallback(Landroid/hardware/camera2/CameraManager$TorchCallback;Landroid/os/Handler;)V

    return-void
.end method

.method public e(Z)Z
    .locals 3

    sget-boolean v0, Lcom/android/server/policy/kth;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setTorchMode() called: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceKeyHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/policy/kth;->_C:Z

    const/4 v1, 0x0

    if-eq v0, p1, :cond_2

    iput-boolean p1, p0, Lcom/android/server/policy/kth;->_C:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/policy/kth;->getCameraId()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/kth;->aD:Landroid/hardware/camera2/CameraManager;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, "0"

    :goto_0
    invoke-virtual {v2, v0, p1}, Landroid/hardware/camera2/CameraManager;->setTorchMode(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/hardware/camera2/CameraAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    :try_start_2
    monitor-exit p0

    return p1

    :catch_0
    move-exception p1

    const-string v0, "DeviceKeyHandler"

    const-string v2, "CameraAccessException: Couldn\'t set torch mode."

    invoke-static {v0, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iput-boolean v1, p0, Lcom/android/server/policy/kth;->_C:Z

    monitor-exit p0

    return v1

    :cond_2
    monitor-exit p0

    return v1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method isInCall()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/policy/kth;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result p0

    return p0
.end method

.method kth(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    if-nez p2, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/policy/kth$zta;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/policy/kth$zta;-><init>(Lcom/android/server/policy/kth;Lcom/android/server/policy/you;)V

    const-string v1, ":"

    invoke-virtual {p2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    invoke-virtual {v0, p2}, Lcom/android/server/policy/kth$zta;->M(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v4, 0x1

    add-int/2addr v1, v4

    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const/4 v1, 0x3

    const-string v5, ";"

    invoke-virtual {p2, v5, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    array-length v5, p2

    invoke-static {p2, v3, v2, v4, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    aget-object p2, v2, v3

    invoke-virtual {v0, p2}, Lcom/android/server/policy/kth$zta;->M(Ljava/lang/String;)V

    aget-object p2, v2, v4

    invoke-virtual {v0, p2}, Lcom/android/server/policy/kth$zta;->setPackage(Ljava/lang/String;)V

    aget-object p2, v2, v3

    const-string v4, "OpenApp"

    invoke-virtual {v4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v4, 0x2

    if-eqz p2, :cond_2

    aget-object p2, v2, v4

    :goto_0
    invoke-virtual {v0, p2}, Lcom/android/server/policy/kth$zta;->N(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    aget-object p2, v2, v3

    const-string v3, "OpenShortcut"

    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    aget-object p2, v2, v4

    invoke-virtual {v0, p2}, Lcom/android/server/policy/kth$zta;->setShortcutId(Ljava/lang/String;)V

    aget-object p2, v2, v1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object p0, p0, Lcom/android/server/policy/kth;->KC:Ljava/util/HashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onKeyguardDone()V
    .locals 2

    const-string v0, "DeviceKeyHandler"

    const-string v1, "receive keyguard done, process gesture action"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/policy/kth;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/policy/sis;

    invoke-direct {v1, p0}, Lcom/android/server/policy/sis;-><init>(Lcom/android/server/policy/kth;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onKeyguardOccludedChangedLw(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onKeyguardOccludedChangedLw "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceKeyHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/android/server/policy/kth;->gD:Z

    return-void
.end method

.method onScreenTurnedOff()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/policy/kth;->cD:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/policy/kth;->PC:I

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/kth;->mSensorEnabled:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/kth;->hD:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/kth;->fD:Z

    if-eqz v0, :cond_1

    :cond_0
    iput-boolean v1, p0, Lcom/android/server/policy/kth;->mSensorEnabled:Z

    iget-object v0, p0, Lcom/android/server/policy/kth;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/policy/kth;->iD:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/policy/kth;->mProximitySensor:Landroid/hardware/Sensor;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/policy/kth;->mSleeping:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/policy/kth;->dD:Lcom/android/server/policy/kth$zta;

    return-void
.end method

.method onStartedWakingUp()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/kth;->mSensorEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/kth;->hD:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/kth;->mSensorEnabled:Z

    iget-object v0, p0, Lcom/android/server/policy/kth;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object p0, p0, Lcom/android/server/policy/kth;->iD:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method public systemReady()V
    .locals 3

    const-string v0, "com.netease.cloudmusic"

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/kth;->mSystemReady:Z

    iget-object v1, p0, Lcom/android/server/policy/kth;->mObserver:Lcom/android/server/policy/kth$sis;

    invoke-virtual {v1}, Lcom/android/server/policy/kth$sis;->observe()V

    const/4 v1, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/policy/kth;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const/4 v2, 0x0

    invoke-virtual {p0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    move-object p0, v2

    :goto_0
    if-eqz p0, :cond_0

    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p0

    invoke-interface {p0, v0, v1, v1}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    :cond_0
    :goto_1
    return-void
.end method

.method zta(Landroid/content/ContentResolver;)V
    .locals 6

    const/4 v0, -0x2

    const-string v1, "oem_acc_blackscreen_gesture_o"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "oem_acc_blackscreen_gesture_v"

    invoke-static {p1, v2, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "oem_acc_blackscreen_gesture_s"

    invoke-static {p1, v3, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "oem_acc_blackscreen_gesture_w"

    invoke-static {p1, v4, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "oem_acc_blackscreen_gesture_m"

    invoke-static {p1, v5, v0}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    if-nez v2, :cond_0

    iget-boolean v0, p0, Lcom/android/server/policy/kth;->YC:Z

    if-eqz v0, :cond_0

    const-string v2, "OpenTorch"

    :cond_0
    if-nez v1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/policy/kth;->XC:Z

    if-eqz v0, :cond_1

    const-string v1, "OpenCamera"

    :cond_1
    const-string v0, "6"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/policy/kth;->kth(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "2"

    invoke-virtual {p0, v0, v2}, Lcom/android/server/policy/kth;->kth(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "14"

    invoke-virtual {p0, v0, v3}, Lcom/android/server/policy/kth;->kth(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "13"

    invoke-virtual {p0, v0, v4}, Lcom/android/server/policy/kth;->kth(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "12"

    invoke-virtual {p0, v0, p1}, Lcom/android/server/policy/kth;->kth(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method zta(Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/kth;->mKeyguardDelegate:Lcom/android/server/policy/keyguard/KeyguardServiceDelegate;

    return-void
.end method

.method public zta(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_0

    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    move v1, v2

    :cond_1
    if-eqz v1, :cond_3

    iget-object p1, p0, Lcom/android/server/policy/kth;->mEventHandler:Lcom/android/server/policy/kth$you;

    invoke-virtual {p1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/policy/kth;->mProximitySensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/policy/kth;->On()V

    goto :goto_1

    :cond_2
    iget-object p0, p0, Lcom/android/server/policy/kth;->mEventHandler:Lcom/android/server/policy/kth$you;

    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    :goto_1
    return v1
.end method

.method zta(Lcom/android/server/policy/kth$zta;Z)Z
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/policy/kth$zta;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez p2, :cond_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceInjector;->getInstance()Lcom/android/server/am/ActivityManagerServiceInjector;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/policy/kth;->mHandler:Landroid/os/Handler;

    iget-object v3, p1, Lcom/android/server/policy/kth$zta;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActivityManagerServiceInjector;->setAllowLaunchBackground(Landroid/os/Handler;Ljava/lang/String;)V

    :cond_0
    const-string v1, "OpenShelf"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, p2}, Lcom/android/server/policy/kth;->Ba(Z)Z

    move-result p0

    goto :goto_0

    :cond_1
    const-string v1, "OpenApp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Lcom/android/server/policy/kth$zta;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/policy/kth$zta;->getUid()I

    move-result p1

    invoke-direct {p0, v0, p1, p2}, Lcom/android/server/policy/kth;->sis(Ljava/lang/String;IZ)Z

    move-result p0

    goto :goto_0

    :cond_2
    const-string v1, "OpenShortcut"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/policy/kth$zta;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/policy/kth$zta;->getShortcutId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/policy/kth$zta;->getUid()I

    move-result p1

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/android/server/policy/kth;->zta(Ljava/lang/String;Ljava/lang/String;IZ)Z

    move-result p0

    goto :goto_0

    :cond_3
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
