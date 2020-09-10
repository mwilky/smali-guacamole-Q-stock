.class public Lcom/oneplus/android/server/vdb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/android/server/IOpMotorService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/vdb$tsu;,
        Lcom/oneplus/android/server/vdb$zta;,
        Lcom/oneplus/android/server/vdb$you;,
        Lcom/oneplus/android/server/vdb$sis;
    }
.end annotation


# static fields
.field private static final AZ:I = 0xb8

.field private static final BZ:I = 0xb9

.field private static final CZ:I = 0xba

.field private static final DATA_SIZE:I = 0x10

.field private static final DZ:I = 0xbb

.field private static final EZ:I = 0xbc

.field private static final FZ:I = 0xbd

.field private static final GZ:I = 0xbe

.field private static final HZ:I = 0x1388

.field private static final IZ:I = 0x800

.field private static final JZ:I = 0x0

.field private static final KZ:I = 0x1

.field private static final LZ:I = 0x1

.field private static final MZ:I = 0x2bc

.field private static final NZ:I = 0x2bf

.field private static final OZ:I = 0x1fa2658

.field private static final PZ:I = 0x32

.field private static QZ:I = 0x0

.field private static RZ:I = 0x0

.field private static SZ:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OpMotorManagerService"

.field private static final THREAD_NAME:Ljava/lang/String; = "OpMotorManager"

.field private static TZ:I = 0x0

.field private static UZ:I = 0x0

.field private static VZ:I = 0x0

.field private static WZ:I = 0x0

.field private static XZ:I = 0x0

.field private static YZ:I = 0x0

.field private static ZZ:I = 0x0

.field private static _Z:I = 0x0

.field private static aaa:J = 0x0L

.field private static baa:J = 0x0L

.field private static caa:J = 0x0L

.field private static daa:J = 0x0L

.field private static eaa:J = 0x0L

.field private static fU:Z = true

.field private static faa:J = 0x0L

.field private static gaa:Z = false

.field private static haa:Z = false

.field private static iaa:Z = false

.field private static jaa:Z = false

.field private static kZ:Z = false

.field private static kaa:Z = false

.field private static lZ:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static laa:Z = false

.field private static final mZ:Ljava/lang/String; = "com.oneplus.action.CAMERA"

.field private static maa:Z = false

.field private static final nZ:Ljava/lang/String; = "oneplus.intent.action.INCALLUI_ANSWER"

.field private static naa:Z = false

.field private static final oZ:Ljava/lang/String; = "isVideo"

.field private static oaa:Z = false

.field private static final pZ:Ljava/lang/String; = "oneplus.permission.ONEPLUS_COMPONENT_SAFE"

.field private static paa:Z = false

.field private static final qZ:Ljava/lang/String; = "android.policy:POWER"

.field private static qaa:Z = false

.field private static final rZ:Ljava/lang/String; = "android.policy:DOUBLE_TAP"

.field private static raa:Z = false

.field private static sInstance:Lcom/oneplus/android/server/vdb; = null

.field private static final sZ:Ljava/lang/String; = "systemui_faceunlock"

.field private static saa:Z = false

.field private static final tZ:Ljava/lang/String; = "screenoff"

.field private static final uZ:Ljava/lang/String; = "persist.sys.motor.calibtime"

.field private static final vZ:Ljava/lang/String; = "org.codeaurora.ims"

.field private static wZ:Ljava/lang/String; = null

.field private static xZ:Ljava/lang/String; = null

.field private static yZ:Ljava/lang/String; = null

.field private static final zZ:I = 0xb7


# instance fields
.field private CY:Landroid/hardware/SensorManager;

.field private DY:Landroid/hardware/Sensor;

.field private EY:Landroid/app/IActivityTaskManager;

.field private FY:Lcom/oneplus/android/server/scene/GameModeObserver;

.field private GY:Lcom/oneplus/android/server/vdb$zta;

.field private HY:Lsis/you/you/you/zta/zta;

.field private final IY:Lcom/oneplus/android/server/vdb$sis;

.field private JY:Landroid/app/AlertDialog;

.field private KY:Lcom/oneplus/android/server/vdb$tsu;

.field private final LY:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/oneplus/android/server/vdb$zta;",
            ">;"
        }
    .end annotation
.end field

.field private final MY:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/android/os/IOpMotorStateChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private NY:[J

.field private OY:Ljava/lang/String;

.field private PY:Ljava/lang/String;

.field private QY:Ljava/lang/String;

.field private RY:Ljava/lang/String;

.field private SY:Ljava/lang/String;

.field private TY:I

.field private UY:I

.field private VY:I

.field private WY:Z

.field private XY:Z

.field private YY:Z

.field private ZY:Z

.field private _Y:Z

.field private aZ:Z

.field private bZ:Z

.field private bv:Z

.field private cZ:Z

.field private dZ:Z

.field private eZ:Z

.field private ep:Landroid/app/IProcessObserver;

.field private fZ:Z

.field private gZ:Z

.field private final hZ:Landroid/hardware/SensorEventListener;

.field private iZ:Landroid/media/AudioManager$AudioRecordingCallback;

.field private final jZ:Landroid/content/BroadcastReceiver;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBinder:Landroid/os/IBinder;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Lcom/oneplus/android/server/vdb$you;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private mIActivityManager:Landroid/app/IActivityManager;

.field private final mLock:Ljava/lang/Object;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProximity:Landroid/hardware/Sensor;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/oneplus/android/server/vdb;->lZ:Ljava/util/List;

    const-string v0, ""

    sput-object v0, Lcom/oneplus/android/server/vdb;->wZ:Ljava/lang/String;

    sput-object v0, Lcom/oneplus/android/server/vdb;->xZ:Ljava/lang/String;

    sput-object v0, Lcom/oneplus/android/server/vdb;->yZ:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/oneplus/android/server/vdb;->QZ:I

    sput v0, Lcom/oneplus/android/server/vdb;->RZ:I

    const/4 v1, 0x1

    sput v1, Lcom/oneplus/android/server/vdb;->SZ:I

    sput v1, Lcom/oneplus/android/server/vdb;->TZ:I

    const/4 v2, 0x4

    sput v2, Lcom/oneplus/android/server/vdb;->UZ:I

    const/16 v2, 0x64

    sput v2, Lcom/oneplus/android/server/vdb;->VZ:I

    sput v2, Lcom/oneplus/android/server/vdb;->WZ:I

    const/16 v2, 0x1f4

    sput v2, Lcom/oneplus/android/server/vdb;->XZ:I

    const/16 v2, 0x7d0

    sput v2, Lcom/oneplus/android/server/vdb;->YZ:I

    const/16 v2, 0x3e8

    sput v2, Lcom/oneplus/android/server/vdb;->ZZ:I

    const/16 v2, 0x5dc

    sput v2, Lcom/oneplus/android/server/vdb;->_Z:I

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/oneplus/android/server/vdb;->aaa:J

    sput-wide v2, Lcom/oneplus/android/server/vdb;->baa:J

    sput-wide v2, Lcom/oneplus/android/server/vdb;->caa:J

    sput-wide v2, Lcom/oneplus/android/server/vdb;->daa:J

    sput-wide v2, Lcom/oneplus/android/server/vdb;->eaa:J

    sput-wide v2, Lcom/oneplus/android/server/vdb;->faa:J

    sput-boolean v1, Lcom/oneplus/android/server/vdb;->gaa:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->haa:Z

    sput-boolean v1, Lcom/oneplus/android/server/vdb;->iaa:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->jaa:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->kaa:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->laa:Z

    sput-boolean v1, Lcom/oneplus/android/server/vdb;->maa:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->naa:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->oaa:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->paa:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->qaa:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->raa:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->saa:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->GY:Lcom/oneplus/android/server/vdb$zta;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->LY:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->MY:Ljava/util/List;

    const/4 v0, 0x6

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->NY:[J

    const-string v0, "temp"

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->OY:Ljava/lang/String;

    const-string v0, "focus"

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->PY:Ljava/lang/String;

    const-string v0, "backgroud"

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->QY:Ljava/lang/String;

    const-string v0, "backActivity"

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->RY:Ljava/lang/String;

    const-string v0, "focusActivity"

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->SY:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/android/server/vdb;->TY:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/android/server/vdb;->UY:I

    iput v0, p0, Lcom/oneplus/android/server/vdb;->VY:I

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->WY:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->XY:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->YY:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->ZY:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->_Y:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/android/server/vdb;->bv:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->aZ:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->bZ:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->cZ:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->dZ:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->eZ:Z

    iput-boolean v1, p0, Lcom/oneplus/android/server/vdb;->fZ:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->gZ:Z

    new-instance v0, Lcom/oneplus/android/server/gck;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/gck;-><init>(Lcom/oneplus/android/server/vdb;)V

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->hZ:Landroid/hardware/SensorEventListener;

    new-instance v0, Lcom/oneplus/android/server/dma;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/dma;-><init>(Lcom/oneplus/android/server/vdb;)V

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->iZ:Landroid/media/AudioManager$AudioRecordingCallback;

    new-instance v0, Lcom/oneplus/android/server/ywr;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/ywr;-><init>(Lcom/oneplus/android/server/vdb;)V

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->jZ:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/oneplus/android/server/qbh;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/qbh;-><init>(Lcom/oneplus/android/server/vdb;)V

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v0, Lcom/oneplus/android/server/OpMotorManagerService$16;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/OpMotorManagerService$16;-><init>(Lcom/oneplus/android/server/vdb;)V

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->ep:Landroid/app/IProcessObserver;

    new-instance v0, Lcom/oneplus/android/server/OpMotorManagerService$17;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/OpMotorManagerService$17;-><init>(Lcom/oneplus/android/server/vdb;)V

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->mBinder:Landroid/os/IBinder;

    iput-object p1, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    new-instance p1, Lcom/android/server/ServiceThread;

    const-string v0, "OpMotorManager"

    const/16 v2, 0xa

    invoke-direct {p1, v0, v2, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandlerThread:Lcom/android/server/ServiceThread;

    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {p1}, Lcom/android/server/ServiceThread;->start()V

    new-instance p1, Lcom/oneplus/android/server/vdb$you;

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/oneplus/android/server/vdb$you;-><init>(Lcom/oneplus/android/server/vdb;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    new-instance p1, Lcom/oneplus/android/server/vdb$sis;

    const-string v0, "OpMotorManagerSocket"

    invoke-direct {p1, p0, p0, v0}, Lcom/oneplus/android/server/vdb$sis;-><init>(Lcom/oneplus/android/server/vdb;Lcom/oneplus/android/server/vdb;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/oneplus/android/server/vdb;->IY:Lcom/oneplus/android/server/vdb$sis;

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->IY:Lcom/oneplus/android/server/vdb$sis;

    invoke-virtual {p0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private Ac(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->fU:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "msg from socket = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {p0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p0

    const/4 v0, 0x0

    iput v0, p0, Landroid/os/Message;->what:I

    iput-object p1, p0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private Ar()V
    .locals 0

    return-void
.end method

.method private Bc(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has not removed, exception"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/oneplus/android/server/vdb;->lZ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/oneplus/android/server/vdb;->UY:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/oneplus/android/server/vdb;->UY:I

    iget v0, p0, Lcom/oneplus/android/server/vdb;->UY:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/android/server/vdb;->zta(Ljava/lang/String;Landroid/os/IBinder;)I

    :cond_0
    return-void
.end method

.method private Br()V
    .locals 2

    const-string v0, "OpMotorManagerService"

    const-string v1, "setMotorPush"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->paa:Z

    const/16 v0, -0xa

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->cc(I)V

    return-void
.end method

.method static synthetic C(I)I
    .locals 0

    sput p0, Lcom/oneplus/android/server/vdb;->VZ:I

    return p0
.end method

.method static synthetic C(Z)Z
    .locals 0

    sput-boolean p0, Lcom/oneplus/android/server/vdb;->gaa:Z

    return p0
.end method

.method private Cr()V
    .locals 8

    const-string v0, "OpMotorManagerService"

    const-string v1, "setMotorUpArrived"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Nr()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/oneplus/android/server/vdb;->baa:J

    sget-wide v1, Lcom/oneplus/android/server/vdb;->baa:J

    sget-wide v3, Lcom/oneplus/android/server/vdb;->aaa:J

    sub-long/2addr v1, v3

    sput-wide v1, Lcom/oneplus/android/server/vdb;->eaa:J

    const/4 v1, 0x1

    sput-boolean v1, Lcom/oneplus/android/server/vdb;->laa:Z

    const/4 v2, 0x0

    sput-boolean v2, Lcom/oneplus/android/server/vdb;->jaa:Z

    sget v3, Lcom/oneplus/android/server/vdb;->RZ:I

    add-int/2addr v3, v1

    sput v3, Lcom/oneplus/android/server/vdb;->RZ:I

    sget v3, Lcom/oneplus/android/server/vdb;->RZ:I

    const/16 v4, 0x3c

    if-le v3, v4, :cond_0

    sput v2, Lcom/oneplus/android/server/vdb;->RZ:I

    :cond_0
    sget-boolean v3, Lcom/oneplus/android/server/vdb;->haa:Z

    sput-boolean v2, Lcom/oneplus/android/server/vdb;->haa:Z

    sget-boolean v3, Lcom/oneplus/android/server/vdb;->saa:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/oneplus/android/server/vdb;->bZ:Z

    if-nez v3, :cond_1

    iget-boolean v3, p0, Lcom/oneplus/android/server/vdb;->_Y:Z

    if-nez v3, :cond_2

    iget v3, p0, Lcom/oneplus/android/server/vdb;->TY:I

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    if-eqz v3, :cond_1

    const/16 v4, 0xb

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->dr()I

    :cond_2
    iput-boolean v2, p0, Lcom/oneplus/android/server/vdb;->bZ:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Wq()V

    iget-boolean v3, p0, Lcom/oneplus/android/server/vdb;->cZ:Z

    if-eqz v3, :cond_5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    const-string v7, "persist.sys.motor.calibtime"

    invoke-static {v7, v5, v6}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    sub-long/2addr v3, v5

    sget-boolean v5, Lcom/oneplus/android/server/vdb;->fU:Z

    if-eqz v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sinceLastCalibTime: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-wide v5, 0x9a7ec800L

    cmp-long v0, v3, v5

    if-gez v0, :cond_4

    iput-boolean v2, p0, Lcom/oneplus/android/server/vdb;->cZ:Z

    return-void

    :cond_4
    invoke-static {}, Lcom/oneplus/android/server/rtg;->re()Z

    iput-boolean v1, p0, Lcom/oneplus/android/server/vdb;->dZ:Z

    :cond_5
    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->dZ:Z

    if-nez v0, :cond_6

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Or()V

    :cond_6
    return-void
.end method

.method static synthetic D(I)I
    .locals 0

    sput p0, Lcom/oneplus/android/server/vdb;->UZ:I

    return p0
.end method

.method static synthetic D(Z)Z
    .locals 0

    sput-boolean p0, Lcom/oneplus/android/server/vdb;->kZ:Z

    return p0
.end method

.method private Dr()V
    .locals 2

    const-string v0, "OpMotorManagerService"

    const-string v1, "setMotorUpLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->jaa:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->naa:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->haa:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Uq()V

    return-void
.end method

.method private Er()V
    .locals 3

    const-string v0, "OpMotorManagerService"

    const-string v1, "setMotorUping"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/oneplus/android/server/vdb;->aaa:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->jaa:Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/oneplus/android/server/vdb;->maa:Z

    sput-boolean v1, Lcom/oneplus/android/server/vdb;->oaa:Z

    sget-boolean v2, Lcom/oneplus/android/server/vdb;->naa:Z

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->cc(I)V

    :cond_0
    sput-boolean v1, Lcom/oneplus/android/server/vdb;->naa:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->lr()V

    return-void
.end method

.method private Fr()Z
    .locals 0

    invoke-static {}, Lcom/android/server/pm/OpPackageManagerHelperInjector;->isInSpecialTesting()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private Gr()Z
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->fU:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mKeyguardAppear="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/vdb;->ZY:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mIsFaceRecog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/vdb;->_Y:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", sCameraUserPid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oneplus/android/server/vdb;->QZ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mCameraUserPkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/android/server/vdb;->wZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mShowUpMotorView="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/vdb;->fZ:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->ZY:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->_Y:Z

    if-nez v0, :cond_1

    sget v0, Lcom/oneplus/android/server/vdb;->QZ:I

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/vdb;->wZ:Ljava/lang/String;

    const-string v1, "com.oneplus.camera"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/vdb;->wZ:Ljava/lang/String;

    const-string v1, "com.oneplus.faceunlock"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const/16 v0, 0x166

    sget-object v1, Lcom/oneplus/android/server/vdb;->wZ:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/pm/OpCompatibilityInjector;->isInConfigList(ILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/android/server/vdb;->fZ:Z

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private Hr()V
    .locals 6

    const-string v0, "OpMotorManagerService"

    const-string v1, "showBackgroundUseMotorDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Xq()V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    sget-object v4, Lcom/oneplus/android/server/vdb;->wZ:Ljava/lang/String;

    invoke-virtual {v3, v4, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v2, Lcom/oneplus/android/server/vdb;->wZ:Ljava/lang/String;

    :goto_0
    if-eqz v2, :cond_3

    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/oneplus/android/server/vdb;->VY:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/16 v4, 0x3e7

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v4, 0x50d0058

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v2, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    iget-object v3, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v5, 0x50d0006

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v0

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v3, 0x50d005c

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/kth;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/kth;-><init>(Lcom/oneplus/android/server/vdb;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v3, 0x50d0027

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/bio;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/bio;-><init>(Lcom/oneplus/android/server/vdb;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    :cond_3
    :goto_1
    return-void
.end method

.method private Ir()V
    .locals 4

    const-string v0, "OpMotorManagerService"

    const-string v1, "showMotorCannotUpDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Xq()V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v2, 0x50d0037

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v3, 0x50d00a8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/ugm;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/ugm;-><init>(Lcom/oneplus/android/server/vdb;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private Jr()V
    .locals 4

    const-string v0, "OpMotorManagerService"

    const-string v1, "showMotorDownLockedDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Xq()V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v2, 0x50d0007

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v3, 0x50d00a8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/ssp;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/ssp;-><init>(Lcom/oneplus/android/server/vdb;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private Kr()V
    .locals 4

    const-string v0, "OpMotorManagerService"

    const-string v1, "showMotorUpLockedDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Xq()V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v2, 0x50d0008

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v3, 0x50d0082

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/ibl;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/ibl;-><init>(Lcom/oneplus/android/server/vdb;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v3, 0x50d000d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/gwm;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/gwm;-><init>(Lcom/oneplus/android/server/vdb;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private Lr()V
    .locals 4

    const-string v0, "OpMotorManagerService"

    const-string v1, "showMotorDownLockedDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Xq()V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v2, 0x50d0005

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v3, 0x50d00a8

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/cno;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/cno;-><init>(Lcom/oneplus/android/server/vdb;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private Mr()V
    .locals 12

    const-string v0, "OpMotorManagerService"

    const-string v1, "showUpMotorWarning"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Xq()V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v2, 0x50d00a3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v2, 0x50d00a8

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/oneplus/android/server/oif;

    invoke-direct {v2, p0}, Lcom/oneplus/android/server/oif;-><init>(Lcom/oneplus/android/server/vdb;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Button;->getCurrentTextColor()I

    move-result v11

    const v0, -0x777778

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v0, 0x0

    invoke-virtual {v10, v0}, Landroid/widget/Button;->setClickable(Z)V

    new-instance v0, Lcom/oneplus/android/server/bvj;

    const-wide/16 v6, 0x1388

    const-wide/16 v8, 0x3e8

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v11}, Lcom/oneplus/android/server/bvj;-><init>(Lcom/oneplus/android/server/vdb;JJLandroid/widget/Button;I)V

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private Nr()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->dZ:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->cZ:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/android/server/rtg;->te()V

    invoke-static {}, Lcom/oneplus/android/server/rtg;->se()Z

    const-string v0, "OpMotorManagerService"

    const-string v1, "upArrivedCalib successed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->cZ:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->dZ:Z

    sput v0, Lcom/oneplus/android/server/rtg;->uY:I

    sput v0, Lcom/oneplus/android/server/rtg;->vY:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p0

    const-string v0, "persist.sys.motor.calibtime"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private Oa(Z)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->fU:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " showUpMotorView show:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x17

    iput v1, v0, Landroid/os/Message;->what:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private Or()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oneplus/android/server/rtg;->A(Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget v0, Lcom/oneplus/android/server/rtg;->vY:I

    add-int/2addr v0, v1

    sput v0, Lcom/oneplus/android/server/rtg;->vY:I

    :cond_0
    sget v0, Lcom/oneplus/android/server/rtg;->vY:I

    sget v2, Lcom/oneplus/android/server/vdb;->UZ:I

    if-le v0, v2, :cond_1

    const-string v0, "OpMotorManagerService"

    const-string v2, "upArrivedCalibDetect successed"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/oneplus/android/server/vdb;->cZ:Z

    :cond_1
    return-void
.end method

.method private Pr()V
    .locals 6

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->naa:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->gaa:Z

    if-eqz v0, :cond_5

    sget v0, Lcom/oneplus/android/server/vdb;->SZ:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/oneplus/android/server/vdb;->SZ:I

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->fU:Z

    const-string v1, "OpMotorManagerService"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loopDetect sUpLoopDetectCount: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/oneplus/android/server/vdb;->SZ:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v0, Lcom/oneplus/android/server/vdb;->SZ:I

    const/4 v2, 0x4

    const/4 v3, 0x3

    if-ge v0, v2, :cond_1

    :goto_0
    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    sget v1, Lcom/oneplus/android/server/vdb;->ZZ:I

    int-to-long v1, v1

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->rr()V

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    const/4 v5, 0x5

    if-ne v0, v2, :cond_3

    invoke-direct {p0, v5}, Lcom/oneplus/android/server/vdb;->cc(I)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    invoke-direct {p0, v1, v4}, Lcom/oneplus/android/server/vdb;->zta(Ljava/lang/String;Landroid/os/IBinder;)I

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/16 v0, 0xf

    goto :goto_1

    :cond_3
    if-le v0, v2, :cond_4

    const/4 v2, 0x7

    if-ge v0, v2, :cond_4

    goto :goto_0

    :cond_4
    invoke-direct {p0, v5}, Lcom/oneplus/android/server/vdb;->cc(I)V

    invoke-direct {p0, v1, v4}, Lcom/oneplus/android/server/vdb;->zta(Ljava/lang/String;Landroid/os/IBinder;)I

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/16 v0, 0x10

    :goto_1
    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_5
    :goto_2
    return-void
.end method

.method private Qr()I
    .locals 4

    const-string v0, "OpMotorManagerService"

    const-string v1, "upMotor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/android/server/vdb;->aZ:Z

    iget-boolean v2, p0, Lcom/oneplus/android/server/vdb;->_Y:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/oneplus/android/server/vdb;->naa:Z

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/oneplus/android/server/vdb;->oaa:Z

    if-nez v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-direct {p0, v2, v3}, Lcom/oneplus/android/server/vdb;->c(J)V

    :cond_0
    const/4 v2, 0x1

    invoke-direct {p0, v2, v2, v2}, Lcom/oneplus/android/server/vdb;->kth(III)I

    move-result p0

    if-nez p0, :cond_1

    return v1

    :cond_1
    sget-boolean v1, Lcom/oneplus/android/server/vdb;->fU:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upMotor res: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return p0
.end method

.method private Rr()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->maa:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->XY:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/oneplus/android/server/vdb;->QZ:I

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/vdb;->wZ:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->PY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "OpMotorManagerService"

    const-string v1, "upMotorByCallEnd"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->or()Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lcom/oneplus/android/server/vdb;->fU:Z

    if-eqz v1, :cond_0

    const-string v1, "upMotorByCallEnd isDownOrNot false"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Qr()I

    :cond_1
    return-void
.end method

.method private Sq()V
    .locals 2

    const-string v0, "OpMotorManagerService"

    const-string v1, "backgroundSpecialControl:"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/oneplus/android/server/vdb;->iaa:Z

    if-eqz v1, :cond_0

    const-string v1, "backgroundSpecialControl true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->or()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->wr()V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/android/server/vdb;->aZ:Z

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/android/server/vdb;->zta(Ljava/lang/String;Landroid/os/IBinder;)I

    :cond_0
    return-void
.end method

.method private Sr()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->ZY:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/oneplus/android/server/vdb;->QZ:I

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v1, "OpMotorManagerService"

    invoke-direct {p0, v1, v0}, Lcom/oneplus/android/server/vdb;->sis(Ljava/lang/String;Landroid/os/IBinder;)I

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->Oa(Z)V

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->fZ:Z

    :cond_0
    return-void
.end method

.method private Tq()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    sget v2, Lcom/oneplus/android/server/vdb;->WZ:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Wq()V

    return-void
.end method

.method private Uq()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    sget v2, Lcom/oneplus/android/server/vdb;->WZ:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Vq()V

    return-void
.end method

.method private Vq()V
    .locals 2

    const/4 v0, 0x1

    sput v0, Lcom/oneplus/android/server/vdb;->TZ:I

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private Wq()V
    .locals 2

    const/4 v0, 0x1

    sput v0, Lcom/oneplus/android/server/vdb;->SZ:I

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private Xq()V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->ZY:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Fr()Z

    move-result v0

    if-nez v0, :cond_2

    iput-object v1, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    return-void

    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v2, 0x50e0001

    invoke-direct {v0, v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const-string v1, "Motor Error"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x7d3

    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog;->setCancelable(Z)V

    return-void
.end method

.method private Yq()V
    .locals 6

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->fU:Z

    if-eqz v0, :cond_0

    const-string v0, "OpMotorManagerService"

    const-string v1, "delayDownMotorByCamera"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v0, Lcom/oneplus/android/server/vdb;->VZ:I

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->SY:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v2, 0x50

    invoke-static {v2, v1}, Lcom/android/server/pm/OpCompatibilityInjector;->isInConfigList(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v0, Lcom/oneplus/android/server/vdb;->XZ:I

    :cond_1
    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    int-to-long v4, v0

    invoke-virtual {p0, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private Zq()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->CY:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->hZ:Landroid/hardware/SensorEventListener;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p0}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method private _q()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->dZ:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/oneplus/android/server/vdb;->cZ:Z

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/oneplus/android/server/rtg;->ne()V

    const-string p0, "OpMotorManagerService"

    const-string v0, "downArrivedCalib successed"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/oneplus/android/server/vdb;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->MY:Ljava/util/List;

    return-object p0
.end method

.method private ac(I)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpWmInjector;->getVisibleWindowUids()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->fU:Z

    return v0
.end method

.method static synthetic access$1200()I
    .locals 1

    sget v0, Lcom/oneplus/android/server/vdb;->VZ:I

    return v0
.end method

.method static synthetic access$2200()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/vdb;->wZ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/oneplus/android/server/vdb;->wZ:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2300()I
    .locals 1

    sget v0, Lcom/oneplus/android/server/vdb;->QZ:I

    return v0
.end method

.method static synthetic access$2302(I)I
    .locals 0

    sput p0, Lcom/oneplus/android/server/vdb;->QZ:I

    return p0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    sput-boolean p0, Lcom/oneplus/android/server/vdb;->iaa:Z

    return p0
.end method

.method static synthetic access$3500()I
    .locals 1

    sget v0, Lcom/oneplus/android/server/vdb;->XZ:I

    return v0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->maa:Z

    return v0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->kaa:Z

    return v0
.end method

.method static synthetic access$6100()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/vdb;->lZ:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->laa:Z

    return v0
.end method

.method private ar()V
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/oneplus/android/server/rtg;->A(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/oneplus/android/server/rtg;->uY:I

    add-int/2addr v1, v0

    sput v1, Lcom/oneplus/android/server/rtg;->uY:I

    :cond_0
    sget v1, Lcom/oneplus/android/server/rtg;->uY:I

    sget v2, Lcom/oneplus/android/server/vdb;->UZ:I

    if-le v1, v2, :cond_1

    const-string v1, "OpMotorManagerService"

    const-string v2, "downArrivedCalibDetect successed"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->cZ:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->cZ:Z

    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Sr()V

    return-void
.end method

.method private bc(I)Z
    .locals 5

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mAudioManager:Landroid/media/AudioManager;

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    const-string v1, "get_pid"

    invoke-virtual {p0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string v1, ":"

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "broadcastPidArray.length: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpMotorManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    :goto_0
    array-length v3, p0

    if-ge v1, v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isRecording: camaraUserPid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " i: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " broadcastPid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aget-object v4, p0, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isRecording: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x2

    sget-object p1, Lcom/oneplus/android/server/vdb;->wZ:Ljava/lang/String;

    invoke-static {p0, p1}, Lcom/android/server/pm/OpCompatibilityInjector;->isInConfigList(ILjava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method static synthetic bio(Lcom/oneplus/android/server/vdb;)Landroid/app/ActivityManager$StackInfo;
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->jr()Landroid/app/ActivityManager$StackInfo;

    move-result-object p0

    return-object p0
.end method

.method private br()V
    .locals 4

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->oaa:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->gaa:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/oneplus/android/server/vdb;->TZ:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/oneplus/android/server/vdb;->TZ:I

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->fU:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loopDetect sDownLoopDetectCount: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oneplus/android/server/vdb;->TZ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v0, Lcom/oneplus/android/server/vdb;->TZ:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    sget v2, Lcom/oneplus/android/server/vdb;->ZZ:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->rr()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    const/4 v0, -0x5

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->cc(I)V

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    return-void
.end method

.method static synthetic bud(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->ur()V

    return-void
.end method

.method static synthetic bvj(Lcom/oneplus/android/server/vdb;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->QY:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic c(Lcom/oneplus/android/server/vdb;)Lcom/oneplus/android/server/scene/GameModeObserver;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->FY:Lcom/oneplus/android/server/scene/GameModeObserver;

    return-object p0
.end method

.method private c(J)V
    .locals 6

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->fU:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update motor up time: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->NY:[J

    add-int/lit8 v3, v1, 0x1

    aget-wide v4, v2, v3

    aput-wide v4, v2, v1

    move v1, v3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->NY:[J

    aput-wide p1, v1, v2

    aget-wide p1, v1, v0

    const-wide/16 v3, 0x0

    cmp-long p1, p1, v3

    if-lez p1, :cond_2

    aget-wide p1, v1, v2

    aget-wide v1, v1, v0

    sub-long/2addr p1, v1

    const-wide/16 v1, 0x4650

    cmp-long p1, p1, v1

    if-gez p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/16 p2, 0xe

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    const/4 p1, 0x6

    if-ge v0, p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->NY:[J

    aput-wide v3, p1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private cc(I)V
    .locals 5

    const-string v0, "OpMotorManagerService"

    const-string v1, "notifyMotorStateChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->MY:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->MY:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/android/os/IOpMotorStateChangedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2, p1}, Lcom/oneplus/android/os/IOpMotorStateChangedCallback;->onMotorStateChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "OpMotorManagerService"

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/oneplus/android/server/vdb;->MY:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method static synthetic cgv(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Lr()V

    return-void
.end method

.method static synthetic cjf(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->tr()V

    return-void
.end method

.method static synthetic cno(Lcom/oneplus/android/server/vdb;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/vdb;->VY:I

    return p0
.end method

.method private dc(I)I
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/oneplus/android/server/vdb;->you(II)I

    move-result p0

    return p0
.end method

.method static synthetic dma(Lcom/oneplus/android/server/vdb;)Lcom/oneplus/android/server/vdb$tsu;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->KY:Lcom/oneplus/android/server/vdb$tsu;

    return-object p0
.end method

.method private dr()I
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->fU:Z

    const-string v1, "OpMotorManagerService"

    if-eqz v0, :cond_0

    const-string v0, "downMotor"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v2, v0, v2}, Lcom/oneplus/android/server/vdb;->kth(III)I

    move-result p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downMotor res: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "Motor Manager State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mFocusPkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->PY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sCameraUserPkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/android/server/vdb;->wZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLastCameraUserPkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/oneplus/android/server/vdb;->xZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLatestMotorCommand = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/android/server/vdb;->TY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAppMotorCommand = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/android/server/vdb;->UY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/oneplus/android/server/vdb;->QZ:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isRecording = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/oneplus/android/server/vdb;->QZ:I

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/vdb;->bc(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sRequestMotorTagSize = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v0, Lcom/oneplus/android/server/vdb;->lZ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sIntervalTime = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v0, Lcom/oneplus/android/server/vdb;->VZ:I

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sMotorUping = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->jaa:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sMotorDowning = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->kaa:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sMotorUped = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->laa:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sMotorDowned = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->maa:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sMotorUpLocked = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->naa:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sMotorDownLocked = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->oaa:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " sAudioCameraUserExit = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->iaa:Z

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic ear(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->er()V

    return-void
.end method

.method private er()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->laa:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/oneplus/android/server/vdb;->QZ:I

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->fU:Z

    const-string v1, "OpMotorManagerService"

    if-eqz v0, :cond_0

    const-string v0, "downMotorByAudio"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->or()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "downMotorByAudio isDownOrNot true"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->wr()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->aZ:Z

    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/oneplus/android/server/vdb;->zta(Ljava/lang/String;Landroid/os/IBinder;)I

    :cond_1
    return-void
.end method

.method private fr()V
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->fU:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "poweroff down motor at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->raa:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->dr()I

    return-void
.end method

.method static synthetic fto(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Kr()V

    return-void
.end method

.method static synthetic gck(Lcom/oneplus/android/server/vdb;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/vdb;->gZ:Z

    return p0
.end method

.method public static getInstance()Lcom/oneplus/android/server/vdb;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/vdb;->sInstance:Lcom/oneplus/android/server/vdb;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/vdb;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/vdb;->sInstance:Lcom/oneplus/android/server/vdb;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/vdb;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/vdb;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/android/server/vdb;->sInstance:Lcom/oneplus/android/server/vdb;

    :cond_0
    sget-object p0, Lcom/oneplus/android/server/vdb;->sInstance:Lcom/oneplus/android/server/vdb;

    return-object p0
.end method

.method private getSplitScreenPrimaryStack()Landroid/app/ActivityManager$StackInfo;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->EY:Landroid/app/IActivityTaskManager;

    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/app/IActivityTaskManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private gr()V
    .locals 2

    const/16 v0, -0xa

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->cc(I)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->qaa:Z

    sget-boolean v1, Lcom/oneplus/android/server/vdb;->jaa:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->bZ:Z

    :cond_0
    return-void
.end method

.method static synthetic gwm(Lcom/oneplus/android/server/vdb;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->SY:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic hmo(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Mr()V

    return-void
.end method

.method private hr()V
    .locals 5

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->getSplitScreenPrimaryStack()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->jr()Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v2, p0, Lcom/oneplus/android/server/vdb;->eZ:Z

    goto :goto_1

    :cond_1
    :goto_0
    iput-boolean v3, p0, Lcom/oneplus/android/server/vdb;->eZ:Z

    :goto_1
    iget-boolean v4, p0, Lcom/oneplus/android/server/vdb;->eZ:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/oneplus/android/server/vdb;->wZ:Ljava/lang/String;

    iget-object v0, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->EY:Landroid/app/IActivityTaskManager;

    invoke-interface {p0, v3}, Landroid/app/IActivityTaskManager;->dismissSplitScreenMode(Z)V

    goto :goto_2

    :cond_2
    sget-object v0, Lcom/oneplus/android/server/vdb;->wZ:Ljava/lang/String;

    iget-object v1, v1, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->EY:Landroid/app/IActivityTaskManager;

    invoke-interface {p0, v2}, Landroid/app/IActivityTaskManager;->dismissSplitScreenMode(Z)V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->mr()Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "OpMotorManagerService"

    const-string v2, "startHomeIntent"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    sget-object v1, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method static synthetic ibl(Lcom/oneplus/android/server/vdb;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->RY:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic igw(Lcom/oneplus/android/server/vdb;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/vdb;->eZ:Z

    return p0
.end method

.method private ir()Lsis/you/you/you/zta/zta;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->HY:Lsis/you/you/you/zta/zta;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lsis/you/you/you/zta/zta;->getService()Lsis/you/you/you/zta/zta;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->HY:Lsis/you/you/you/zta/zta;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception getting MotorControl hw service: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->HY:Lsis/you/you/you/zta/zta;

    return-object p0
.end method

.method static synthetic ire(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Rr()V

    return-void
.end method

.method static synthetic irq(Lcom/oneplus/android/server/vdb;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/vdb;->aZ:Z

    return p0
.end method

.method static synthetic ivd(Lcom/oneplus/android/server/vdb;)I
    .locals 2

    iget v0, p0, Lcom/oneplus/android/server/vdb;->UY:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/oneplus/android/server/vdb;->UY:I

    return v0
.end method

.method private jr()Landroid/app/ActivityManager$StackInfo;
    .locals 2

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->EY:Landroid/app/IActivityTaskManager;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-interface {p0, v0, v1}, Landroid/app/IActivityTaskManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private kr()V
    .locals 2

    const-string v0, "OpMotorManagerService"

    :try_start_0
    sget-boolean v1, Lcom/oneplus/android/server/vdb;->fU:Z

    if-eqz v1, :cond_0

    const-string v1, "start motor service"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "motor"

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mBinder:Landroid/os/IBinder;

    invoke-static {v1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    sget-boolean v1, Lcom/oneplus/android/server/vdb;->fU:Z

    if-eqz v1, :cond_1

    const-string v1, "Start motor service failed"

    invoke-static {v0, v1, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private kth(III)I
    .locals 3

    const-string v0, "OpMotorManagerService"

    const-string v1, "writeMotorControlData"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->ir()Lsis/you/you/you/zta/zta;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->HY:Lsis/you/you/you/zta/zta;

    invoke-interface {p0, p1, p2, p3}, Lsis/you/you/you/zta/zta;->sis(III)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "writeMotorControlData throws exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1
.end method

.method static synthetic kth(Lcom/oneplus/android/server/vdb;)Landroid/app/ActivityManager$StackInfo;
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->getSplitScreenPrimaryStack()Landroid/app/ActivityManager$StackInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic les(Lcom/oneplus/android/server/vdb;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mBinder:Landroid/os/IBinder;

    return-object p0
.end method

.method static synthetic lqr(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Ir()V

    return-void
.end method

.method private lr()V
    .locals 3

    const-string v0, "OpMotorManagerService"

    const-string v1, "initSensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->CY:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->CY:Landroid/hardware/SensorManager;

    const v1, 0x1fa2658

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/Sensor;

    if-eqz v1, :cond_0

    iput-object v1, p0, Lcom/oneplus/android/server/vdb;->DY:Landroid/hardware/Sensor;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->hZ:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->DY:Landroid/hardware/Sensor;

    if-eqz v1, :cond_2

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->CY:Landroid/hardware/SensorManager;

    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_2
    return-void
.end method

.method static synthetic ma(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/oneplus/android/server/vdb;->yZ:Ljava/lang/String;

    return-object p0
.end method

.method private mr()Z
    .locals 1

    sget v0, Lcom/oneplus/android/server/vdb;->QZ:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/vdb;->wZ:Ljava/lang/String;

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->PY:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic obl(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Sq()V

    return-void
.end method

.method static synthetic oif(Lcom/oneplus/android/server/vdb;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/vdb;->_Y:Z

    return p0
.end method

.method private or()Z
    .locals 2

    sget-object v0, Lcom/oneplus/android/server/vdb;->wZ:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->zc(Ljava/lang/String;)Z

    move-result v0

    sget v1, Lcom/oneplus/android/server/vdb;->QZ:I

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/vdb;->bc(I)Z

    move-result p0

    if-nez v0, :cond_0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static synthetic oxb(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->gr()V

    return-void
.end method

.method private pr()V
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->fU:Z

    const-string v1, "OpMotorManagerService"

    if-eqz v0, :cond_0

    const-string v0, "isUpMotorOrNot"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v0, Lcom/oneplus/android/server/vdb;->QZ:I

    if-eqz v0, :cond_4

    sget-object v0, Lcom/oneplus/android/server/vdb;->wZ:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->PY:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/vdb;->wZ:Ljava/lang/String;

    const-string v2, "org.codeaurora.ims"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/oneplus/android/server/vdb;->QZ:I

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->bc(I)Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_1
    sget-boolean v0, Lcom/oneplus/android/server/vdb;->fU:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isUpMotorOrNot upMotor, mUpMotorViewShowing="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/android/server/vdb;->gZ:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Gr()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->gZ:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->Oa(Z)V

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    invoke-direct {p0, v1, v0}, Lcom/oneplus/android/server/vdb;->sis(Ljava/lang/String;Landroid/os/IBinder;)I

    :cond_4
    :goto_0
    return-void
.end method

.method static synthetic qbh(Lcom/oneplus/android/server/vdb;)Z
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Gr()Z

    move-result p0

    return p0
.end method

.method static synthetic qeg(Lcom/oneplus/android/server/vdb;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/vdb;->UY:I

    return p0
.end method

.method private qr()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v1, 0x20

    invoke-virtual {v0, p0, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method private rr()V
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->maa:Z

    const-string v1, "OpMotorManagerService"

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oneplus/android/server/vdb;->TY:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oneplus/android/server/vdb;->UY:I

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->fU:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loopDetectMotor sMotorDownLocked: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/oneplus/android/server/vdb;->oaa:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->dr()I

    :cond_1
    sget-boolean v0, Lcom/oneplus/android/server/vdb;->paa:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->qaa:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->laa:Z

    if-nez v0, :cond_5

    sget v0, Lcom/oneplus/android/server/vdb;->QZ:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/oneplus/android/server/vdb;->TY:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    :cond_2
    iget v0, p0, Lcom/oneplus/android/server/vdb;->UY:I

    if-eqz v0, :cond_5

    :cond_3
    sget-boolean v0, Lcom/oneplus/android/server/vdb;->fU:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "loopDetectMotor sMotorUpLocked: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/oneplus/android/server/vdb;->naa:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mAppMotorCommand: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/android/server/vdb;->UY:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Qr()I

    :cond_5
    sget-boolean v0, Lcom/oneplus/android/server/vdb;->paa:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->qaa:Z

    if-eqz v0, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->dr()I

    :cond_7
    return-void
.end method

.method static synthetic rtg(Lcom/oneplus/android/server/vdb;)I
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Qr()I

    move-result p0

    return p0
.end method

.method static synthetic rtg(Lcom/oneplus/android/server/vdb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/vdb;->RY:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic rtg(Lcom/oneplus/android/server/vdb;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/vdb;->WY:Z

    return p1
.end method

.method static synthetic sis(Lcom/oneplus/android/server/vdb;)I
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->dr()I

    move-result p0

    return p0
.end method

.method private sis(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upMotorByAllScene :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mAppMotorCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/android/server/vdb;->UY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLatestMotorCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/android/server/vdb;->TY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "OpMotorManagerService"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string v1, "systemui_faceunlock"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/oneplus/android/server/vdb;->lZ:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/oneplus/android/server/vdb;->lZ:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/oneplus/android/server/vdb;->UY:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/oneplus/android/server/vdb;->UY:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    :try_start_1
    new-instance v1, Lcom/oneplus/android/server/vdb$zta;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/oneplus/android/server/vdb$zta;-><init>(Lcom/oneplus/android/server/vdb;Ljava/lang/String;Landroid/os/IBinder;Lcom/oneplus/android/server/gck;)V

    iput-object v1, p0, Lcom/oneplus/android/server/vdb;->GY:Lcom/oneplus/android/server/vdb$zta;

    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->GY:Lcom/oneplus/android/server/vdb$zta;

    const/4 v1, 0x0

    invoke-interface {p2, p1, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :cond_0
    :try_start_2
    const-string p2, "OpMotorManagerService"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iput v2, p0, Lcom/oneplus/android/server/vdb;->TY:I

    :catch_0
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/4 p2, 0x6

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_3
    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/16 p2, 0xa

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_4
    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_5

    const-string p1, "OpMotorManagerService"

    const-string v1, "removeMessages MSG_MOTOR_DELAY_DOWN_SYSTEMAPP"

    invoke-static {p1, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_5
    iget-boolean p1, p0, Lcom/oneplus/android/server/vdb;->_Y:Z

    if-nez p1, :cond_6

    iget-boolean p1, p0, Lcom/oneplus/android/server/vdb;->bv:Z

    if-eqz p1, :cond_7

    :cond_6
    sget-boolean p1, Lcom/oneplus/android/server/vdb;->maa:Z

    if-nez p1, :cond_8

    sget-boolean p1, Lcom/oneplus/android/server/vdb;->naa:Z

    if-nez p1, :cond_8

    sget-boolean p1, Lcom/oneplus/android/server/vdb;->oaa:Z

    if-eqz p1, :cond_7

    goto :goto_1

    :cond_7
    iget p0, p0, Lcom/oneplus/android/server/vdb;->TY:I

    monitor-exit v0

    return p0

    :cond_8
    :goto_1
    sget-boolean p1, Lcom/oneplus/android/server/vdb;->fU:Z

    if-eqz p1, :cond_9

    const-string p1, "OpMotorManagerService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "upMotorByAllScene upMotor sMotorDowned: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oneplus/android/server/vdb;->maa:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Qr()I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method static synthetic sis(Lcom/oneplus/android/server/vdb;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/vdb;->bc(I)Z

    move-result p0

    return p0
.end method

.method static synthetic sis(Lcom/oneplus/android/server/vdb;Ljava/lang/String;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/vdb;->zc(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic sis(Lcom/oneplus/android/server/vdb;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/vdb;->_Y:Z

    return p1
.end method

.method private sr()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->PY:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->QY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->mr()Z

    move-result v0

    const/4 v1, 0x6

    const-string v2, "OpMotorManagerService"

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "camera app focus from back in 600ms, remove downMessage"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->XY:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->YY:Z

    if-eqz v0, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->OY:Ljava/lang/String;

    iget-object v3, p0, Lcom/oneplus/android/server/vdb;->PY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->fU:Z

    if-eqz v0, :cond_3

    const-string v0, "camera app focus from backgroud and should upmotor"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Gr()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->gZ:Z

    if-nez v0, :cond_5

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->Oa(Z)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    invoke-direct {p0, v2, v0}, Lcom/oneplus/android/server/vdb;->sis(Ljava/lang/String;Landroid/os/IBinder;)I

    :cond_5
    :goto_0
    const-string v0, "temp"

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->OY:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->XY:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->YY:Z

    :cond_6
    sget v0, Lcom/oneplus/android/server/vdb;->QZ:I

    if-eqz v0, :cond_a

    sget-object v0, Lcom/oneplus/android/server/vdb;->wZ:Ljava/lang/String;

    iget-object v3, p0, Lcom/oneplus/android/server/vdb;->QY:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->eZ:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->PY:Ljava/lang/String;

    const-string v3, "net.oneplus.launcher"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget v0, p0, Lcom/oneplus/android/server/vdb;->VY:I

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->ac(I)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    return-void

    :cond_9
    const-string v0, "non-standard camera app, maybe not release when backgroud"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    sget v2, Lcom/oneplus/android/server/vdb;->VZ:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    sget v0, Lcom/oneplus/android/server/vdb;->QZ:I

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->bc(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/16 v0, 0x14

    sget v1, Lcom/oneplus/android/server/vdb;->YZ:I

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_a
    return-void
.end method

.method static synthetic ssp(Lcom/oneplus/android/server/vdb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/vdb;->SY:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic ssp(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->hr()V

    return-void
.end method

.method private tr()V
    .locals 4

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->fU:Z

    const-string v1, "OpMotorManagerService"

    if-eqz v0, :cond_0

    const-string v0, "openCamera"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v2, 0x1000000a

    const-string v3, "pullMotorWake"

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "InterruptedException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.action.CAMERA"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x800

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x34000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_1
    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/vdb;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/vdb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/vdb;->QY:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/vdb;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/vdb;->aZ:Z

    return p1
.end method

.method static synthetic ue()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->haa:Z

    return v0
.end method

.method static synthetic ugm(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->sr()V

    return-void
.end method

.method private ur()V
    .locals 4

    const-string v0, "OpMotorManagerService"

    const-string v1, "show phoneFallDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Xq()V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v2, 0x50d00a4

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v3, 0x50d0083

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/igw;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/igw;-><init>(Lcom/oneplus/android/server/vdb;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const v3, 0x50d000d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/oneplus/android/server/wtn;

    invoke-direct {v3, p0}, Lcom/oneplus/android/server/wtn;-><init>(Lcom/oneplus/android/server/vdb;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->JY:Landroid/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic vdb(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Pr()V

    return-void
.end method

.method static synthetic vdw(Lcom/oneplus/android/server/vdb;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->LY:Ljava/util/LinkedList;

    return-object p0
.end method

.method static synthetic ve()I
    .locals 1

    sget v0, Lcom/oneplus/android/server/vdb;->_Z:I

    return v0
.end method

.method private veq(II)I
    .locals 3

    const-string v0, "OpMotorManagerService"

    const-string v1, "writeFlashControlData"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->ir()Lsis/you/you/you/zta/zta;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->HY:Lsis/you/you/you/zta/zta;

    invoke-interface {p0, p1, p2}, Lsis/you/you/you/zta/zta;->ssp(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "writeFlashControlData throws exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1
.end method

.method static synthetic veq(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Jr()V

    return-void
.end method

.method static synthetic vju(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Hr()V

    return-void
.end method

.method private vr()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->YY:Z

    sget-object v0, Lcom/oneplus/android/server/vdb;->wZ:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->OY:Ljava/lang/String;

    return-void
.end method

.method static synthetic we()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->paa:Z

    return v0
.end method

.method private wr()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->XY:Z

    sget-object v0, Lcom/oneplus/android/server/vdb;->wZ:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->OY:Ljava/lang/String;

    return-void
.end method

.method static synthetic wtn(Lcom/oneplus/android/server/vdb;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->PY:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic xe()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->kZ:Z

    return v0
.end method

.method private xr()V
    .locals 5

    const-string v0, "OpMotorManagerService"

    const-string v1, "setMotorDownArrived"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->_q()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    sput-wide v1, Lcom/oneplus/android/server/vdb;->daa:J

    sget-wide v1, Lcom/oneplus/android/server/vdb;->daa:J

    sget-wide v3, Lcom/oneplus/android/server/vdb;->caa:J

    sub-long/2addr v1, v3

    sput-wide v1, Lcom/oneplus/android/server/vdb;->faa:J

    const/4 v1, 0x1

    sput-boolean v1, Lcom/oneplus/android/server/vdb;->maa:Z

    const/4 v2, 0x0

    sput-boolean v2, Lcom/oneplus/android/server/vdb;->kaa:Z

    iget-boolean v3, p0, Lcom/oneplus/android/server/vdb;->_Y:Z

    if-nez v3, :cond_0

    iget v3, p0, Lcom/oneplus/android/server/vdb;->TY:I

    if-eq v3, v1, :cond_0

    iget v3, p0, Lcom/oneplus/android/server/vdb;->UY:I

    if-eqz v3, :cond_2

    :cond_0
    sget-boolean v3, Lcom/oneplus/android/server/vdb;->qaa:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/oneplus/android/server/vdb;->paa:Z

    if-nez v3, :cond_2

    sget-boolean v3, Lcom/oneplus/android/server/vdb;->raa:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/oneplus/android/server/vdb;->WY:Z

    if-nez v3, :cond_2

    iget-boolean v3, p0, Lcom/oneplus/android/server/vdb;->bv:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/oneplus/android/server/vdb;->fU:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setMotorDownArrived sMotorDownPress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/oneplus/android/server/vdb;->paa:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mAppMotorCommand = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/android/server/vdb;->UY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mLatestMotorCommand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/android/server/vdb;->TY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Qr()I

    :cond_2
    sget-boolean v0, Lcom/oneplus/android/server/vdb;->paa:Z

    if-nez v0, :cond_3

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->qaa:Z

    if-eqz v0, :cond_7

    :cond_3
    sget-boolean v0, Lcom/oneplus/android/server/vdb;->paa:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/16 v1, 0x12

    :goto_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_1

    :cond_4
    sget-boolean v0, Lcom/oneplus/android/server/vdb;->qaa:Z

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/oneplus/android/server/vdb;->TY:I

    if-eq v0, v1, :cond_5

    iget v0, p0, Lcom/oneplus/android/server/vdb;->UY:I

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/16 v1, 0x16

    goto :goto_0

    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->vr()V

    :cond_7
    sput-boolean v2, Lcom/oneplus/android/server/vdb;->saa:Z

    iput-boolean v2, p0, Lcom/oneplus/android/server/vdb;->WY:Z

    sput-boolean v2, Lcom/oneplus/android/server/vdb;->paa:Z

    sput-boolean v2, Lcom/oneplus/android/server/vdb;->qaa:Z

    iput-boolean v2, p0, Lcom/oneplus/android/server/vdb;->bZ:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Zq()V

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->haa:Z

    sput-boolean v2, Lcom/oneplus/android/server/vdb;->haa:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Vq()V

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->dZ:Z

    if-nez v0, :cond_8

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->ar()V

    :cond_8
    return-void
.end method

.method static synthetic ye()I
    .locals 1

    sget v0, Lcom/oneplus/android/server/vdb;->UZ:I

    return v0
.end method

.method private you(II)I
    .locals 3

    const-string v0, "OpMotorManagerService"

    const-string v1, "readMotorControlData "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->ir()Lsis/you/you/you/zta/zta;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->HY:Lsis/you/you/you/zta/zta;

    invoke-interface {p0, p1, p2}, Lsis/you/you/you/zta/zta;->you(II)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "readMotorData throws exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v1
.end method

.method static synthetic you(Lcom/oneplus/android/server/vdb;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/android/server/vdb;->zta(Ljava/lang/String;Landroid/os/IBinder;)I

    move-result p0

    return p0
.end method

.method private you(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 3

    sget-object v0, Lcom/oneplus/android/server/vdb;->lZ:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/oneplus/android/server/vdb;->lZ:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "OpMotorManagerService"

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/oneplus/android/server/vdb;->you(Landroid/os/IBinder;)Lcom/oneplus/android/server/vdb$zta;

    iget-object p2, p0, Lcom/oneplus/android/server/vdb;->LY:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->GY:Lcom/oneplus/android/server/vdb$zta;

    invoke-virtual {p2, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    const-string p2, "after unlinkToDeath"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object p2, Lcom/oneplus/android/server/vdb;->lZ:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget p2, p0, Lcom/oneplus/android/server/vdb;->UY:I

    const/4 v1, 0x1

    if-lez p2, :cond_1

    sub-int/2addr p2, v1

    iput p2, p0, Lcom/oneplus/android/server/vdb;->UY:I

    :cond_1
    sget-boolean p2, Lcom/oneplus/android/server/vdb;->fU:Z

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "going to delaydown Motor by "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean p1, p0, Lcom/oneplus/android/server/vdb;->_Y:Z

    if-nez p1, :cond_3

    iget p1, p0, Lcom/oneplus/android/server/vdb;->TY:I

    if-eq p1, v1, :cond_4

    :cond_3
    iget p1, p0, Lcom/oneplus/android/server/vdb;->UY:I

    if-eqz p1, :cond_6

    :cond_4
    sget-boolean p1, Lcom/oneplus/android/server/vdb;->fU:Z

    if-eqz p1, :cond_5

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "other2 is using motor, mIsFaceRecog: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/oneplus/android/server/vdb;->_Y:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 p0, 0x0

    return p0

    :cond_6
    iget p0, p0, Lcom/oneplus/android/server/vdb;->TY:I

    return p0
.end method

.method private you(Landroid/os/IBinder;)Lcom/oneplus/android/server/vdb$zta;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->LY:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/android/server/vdb$zta;

    invoke-static {v1}, Lcom/oneplus/android/server/vdb$zta;->zta(Lcom/oneplus/android/server/vdb$zta;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/vdb;->you(Lcom/oneplus/android/server/vdb$zta;)V

    return-object v1

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic you(Lcom/oneplus/android/server/vdb;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/vdb;->PY:Ljava/lang/String;

    return-object p1
.end method

.method private you(Lcom/oneplus/android/server/vdb$zta;)V
    .locals 1

    :try_start_0
    invoke-static {p1}, Lcom/oneplus/android/server/vdb$zta;->zta(Lcom/oneplus/android/server/vdb$zta;)Landroid/os/IBinder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic you(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->wr()V

    return-void
.end method

.method static synthetic you(Lcom/oneplus/android/server/vdb;I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/vdb;->ac(I)Z

    move-result p0

    return p0
.end method

.method static synthetic you(Lcom/oneplus/android/server/vdb;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/vdb;->gZ:Z

    return p1
.end method

.method private yr()V
    .locals 2

    const-string v0, "OpMotorManagerService"

    const-string v1, "setMotorDownLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->kaa:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->oaa:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->haa:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Tq()V

    return-void
.end method

.method static synthetic ywr(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Yq()V

    return-void
.end method

.method private zc(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    invoke-static {}, Lcom/android/server/wm/OpWmInjector;->getSysAlertWindowUids()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, p0, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method static synthetic ze()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/vdb;->xZ:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic zgw(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->br()V

    return-void
.end method

.method private zr()V
    .locals 3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/oneplus/android/server/vdb;->caa:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->kaa:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->laa:Z

    sput-boolean v0, Lcom/oneplus/android/server/vdb;->naa:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setMotorDowning mFocusPkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->PY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " sCameraUserPkg: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oneplus/android/server/vdb;->wZ:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpMotorManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/oneplus/android/server/vdb;->oaa:Z

    if-nez v1, :cond_0

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/vdb;->cc(I)V

    :cond_0
    sput-boolean v0, Lcom/oneplus/android/server/vdb;->oaa:Z

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->paa:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->hr()V

    :cond_1
    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/vdb;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/android/server/vdb;->VY:I

    return p1
.end method

.method static synthetic zta(Lcom/oneplus/android/server/vdb;Ljava/lang/String;ILandroid/os/IBinder;)I
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/android/server/vdb;->zta(Ljava/lang/String;ILandroid/os/IBinder;)I

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/vdb;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/android/server/vdb;->sis(Ljava/lang/String;Landroid/os/IBinder;)I

    move-result p0

    return p0
.end method

.method private zta(Ljava/lang/String;ILandroid/os/IBinder;)I
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->fU:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delayDownMotorBySystemApp "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/oneplus/android/server/vdb;->you(Ljava/lang/String;Landroid/os/IBinder;)I

    iget-object p3, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {p3}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p3

    const/16 v1, 0xb

    iput v1, p3, Landroid/os/Message;->what:I

    iput-object p1, p3, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    int-to-long p1, p2

    invoke-virtual {p0, p3, p1, p2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private zta(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 4

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "downMotorByAllScene :"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " mAppMotorCommand: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oneplus/android/server/vdb;->UY:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " mLatestMotorCommand: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/oneplus/android/server/vdb;->TY:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OpMotorManagerService"

    invoke-static {v0, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/oneplus/android/server/vdb;->mLock:Ljava/lang/Object;

    monitor-enter p2

    :try_start_0
    const-string v0, "OpMotorManagerService"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iput v2, p0, Lcom/oneplus/android/server/vdb;->TY:I

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    const-string v3, "screenoff"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    sput-boolean v1, Lcom/oneplus/android/server/vdb;->saa:Z

    :cond_1
    iget-boolean v3, p0, Lcom/oneplus/android/server/vdb;->_Y:Z

    if-nez v3, :cond_9

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/oneplus/android/server/vdb;->UY:I

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-string v0, "systemui_faceunlock"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget p1, Lcom/oneplus/android/server/vdb;->QZ:I

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/oneplus/android/server/vdb;->TY:I

    if-eq p1, v1, :cond_3

    iget p1, p0, Lcom/oneplus/android/server/vdb;->UY:I

    if-eqz p1, :cond_5

    :cond_3
    sget-boolean p1, Lcom/oneplus/android/server/vdb;->fU:Z

    if-eqz p1, :cond_4

    const-string p1, "OpMotorManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "other2 is using motor, mAppMotorCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/android/server/vdb;->UY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mLatestMotorCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/android/server/vdb;->TY:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    monitor-exit p2

    return v2

    :cond_5
    sget-boolean p1, Lcom/oneplus/android/server/vdb;->laa:Z

    if-nez p1, :cond_7

    sget-boolean p1, Lcom/oneplus/android/server/vdb;->naa:Z

    if-nez p1, :cond_7

    sget-boolean p1, Lcom/oneplus/android/server/vdb;->oaa:Z

    if-eqz p1, :cond_6

    goto :goto_1

    :cond_6
    iget p0, p0, Lcom/oneplus/android/server/vdb;->TY:I

    monitor-exit p2

    return p0

    :cond_7
    :goto_1
    sget-boolean p1, Lcom/oneplus/android/server/vdb;->fU:Z

    if-eqz p1, :cond_8

    const-string p1, "OpMotorManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "downMotorByAllScene sMotorUped: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/oneplus/android/server/vdb;->laa:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->dr()I

    move-result p0

    monitor-exit p2

    return p0

    :cond_9
    :goto_2
    sget-boolean p1, Lcom/oneplus/android/server/vdb;->fU:Z

    if-eqz p1, :cond_a

    const-string p1, "OpMotorManagerService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "other1 is using motor, mAppMotorCommand: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/android/server/vdb;->UY:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    monitor-exit p2

    return v2

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/vdb;Lcom/oneplus/android/server/vdb$tsu;)Lcom/oneplus/android/server/vdb$tsu;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/vdb;->KY:Lcom/oneplus/android/server/vdb$tsu;

    return-object p1
.end method

.method static synthetic zta(Lcom/oneplus/android/server/vdb;)Lcom/oneplus/android/server/vdb$you;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    return-object p0
.end method

.method static synthetic zta(Lcom/oneplus/android/server/vdb;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/vdb;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/vdb;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/vdb;->Ac(Ljava/lang/String;)V

    return-void
.end method

.method private zta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    if-nez p1, :cond_0

    const-string p1, "no"

    :cond_0
    if-eqz p2, :cond_1

    const-string v0, ""

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    iget-object p2, p0, Lcom/oneplus/android/server/vdb;->PY:Ljava/lang/String;

    iget-object p3, p0, Lcom/oneplus/android/server/vdb;->SY:Ljava/lang/String;

    :cond_2
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    const/4 p1, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/vdb;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/android/server/vdb;->eZ:Z

    return p1
.end method


# virtual methods
.method public Ae()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->ZY:Z

    sget-boolean p0, Lcom/oneplus/android/server/vdb;->fU:Z

    if-eqz p0, :cond_0

    const-string p0, "OpMotorManagerService"

    const-string v0, "notifyKeyguardAppear"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public Be()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->fU:Z

    if-eqz v0, :cond_0

    const-string v0, "OpMotorManagerService"

    const-string v1, "notifyKeyguardDisappear"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->ZY:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->fZ:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->pr()V

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->Oa(Z)V

    return-void
.end method

.method public Ce()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->fU:Z

    if-eqz v0, :cond_0

    const-string v0, "OpMotorManagerService"

    const-string v1, "notifyScreenOff"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->bv:Z

    iget-boolean v0, p0, Lcom/oneplus/android/server/vdb;->ZY:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/vdb;->wZ:Ljava/lang/String;

    sput-object v0, Lcom/oneplus/android/server/vdb;->xZ:Ljava/lang/String;

    :cond_1
    sget-boolean v0, Lcom/oneplus/android/server/vdb;->maa:Z

    if-nez v0, :cond_2

    const/4 v0, 0x0

    const-string v1, "screenoff"

    invoke-direct {p0, v1, v0}, Lcom/oneplus/android/server/vdb;->zta(Ljava/lang/String;Landroid/os/IBinder;)I

    :cond_2
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->fZ:Z

    return-void
.end method

.method public De()V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/vdb;->fU:Z

    if-eqz v0, :cond_0

    const-string v0, "OpMotorManagerService"

    const-string v1, "notifyScreenOn ScreenOn"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/vdb;->bv:Z

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->pr()V

    return-void
.end method

.method public getMotorState()I
    .locals 0

    sget-boolean p0, Lcom/oneplus/android/server/vdb;->jaa:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    sget-boolean p0, Lcom/oneplus/android/server/vdb;->kaa:Z

    if-eqz p0, :cond_1

    const/4 p0, -0x1

    return p0

    :cond_1
    sget-boolean p0, Lcom/oneplus/android/server/vdb;->naa:Z

    if-eqz p0, :cond_2

    const/4 p0, 0x5

    return p0

    :cond_2
    sget-boolean p0, Lcom/oneplus/android/server/vdb;->oaa:Z

    if-eqz p0, :cond_3

    const/4 p0, -0x5

    return p0

    :cond_3
    sget-boolean p0, Lcom/oneplus/android/server/vdb;->laa:Z

    if-eqz p0, :cond_4

    const/16 p0, 0xa

    return p0

    :cond_4
    sget-boolean p0, Lcom/oneplus/android/server/vdb;->maa:Z

    if-eqz p0, :cond_5

    const/4 p0, 0x0

    return p0

    :cond_5
    const/16 p0, -0xa

    return p0
.end method

.method public kth(ILjava/lang/String;)I
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "writeMotorCalibData: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->ir()Lsis/you/you/you/zta/zta;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb;->HY:Lsis/you/you/you/zta/zta;

    invoke-interface {p0, p1, p2}, Lsis/you/you/you/zta/zta;->zta(ILjava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, p0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "writeMotorCalibData throws exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return v0
.end method

.method public notifyActivityChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    if-eqz v0, :cond_0

    const/4 v1, 0x3

    :try_start_0
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisibleLw(I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while checking window status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v6, v0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p2

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/android/server/vdb;->zta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public notifyKeyguardState(Z)V
    .locals 0

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/android/server/vdb;->Be()V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/android/server/vdb;->Ae()V

    :goto_0
    return-void
.end method

.method public notifyMotorState(Landroid/view/KeyEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getDevice()Landroid/view/InputDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/InputDevice;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    :goto_0
    const-string v3, "motor"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getScanCode()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->yr()V

    :cond_2
    :pswitch_1
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->xr()V

    goto :goto_3

    :pswitch_2
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->zr()V

    goto :goto_3

    :pswitch_3
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Cr()V

    goto :goto_3

    :pswitch_4
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Dr()V

    goto :goto_3

    :pswitch_5
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Er()V

    goto :goto_3

    :pswitch_6
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Br()V

    goto :goto_3

    :pswitch_7
    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->Ar()V

    goto :goto_3

    :cond_3
    :goto_2
    move v2, v1

    :cond_4
    :goto_3
    return v2

    nop

    :pswitch_data_0
    .packed-switch 0xb7
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public notifyPowerOff()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->fr()V

    return-void
.end method

.method public notifyScreenState(I)V
    .locals 1

    if-nez p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/android/server/vdb;->Ce()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/android/server/vdb;->De()V

    :cond_1
    :goto_0
    return-void
.end method

.method public systemReady()V
    .locals 5

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->mIActivityManager:Landroid/app/IActivityManager;

    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->EY:Landroid/app/IActivityTaskManager;

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->ir()Lsis/you/you/you/zta/zta;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->HY:Lsis/you/you/you/zta/zta;

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->mAudioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Lcom/oneplus/android/server/scene/GameModeObserver;->getInstance()Lcom/oneplus/android/server/scene/GameModeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/android/server/vdb;->FY:Lcom/oneplus/android/server/scene/GameModeObserver;

    invoke-static {}, Lcom/oneplus/android/server/rtg;->qe()Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/vdb;->dc(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->dr()I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mIActivityManager:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->ep:Landroid/app/IProcessObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OpMotorManagerService"

    const-string v2, "cannot register activity monitoring"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/oneplus/android/server/vdb;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->iZ:Landroid/media/AudioManager$AudioRecordingCallback;

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->mHandler:Lcom/oneplus/android/server/vdb$you;

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->registerAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "oneplus.intent.action.INCALLUI_ANSWER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/android/server/vdb;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/android/server/vdb;->jZ:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    const-string v4, "oneplus.permission.ONEPLUS_COMPONENT_SAFE"

    invoke-virtual {v1, v2, v0, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->kr()V

    invoke-direct {p0}, Lcom/oneplus/android/server/vdb;->qr()V

    return-void
.end method
