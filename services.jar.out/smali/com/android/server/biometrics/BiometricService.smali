.class public Lcom/android/server/biometrics/BiometricService;
.super Lcom/android/server/SystemService;
.source "BiometricService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;,
        Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;,
        Lcom/android/server/biometrics/BiometricService$SettingObserver;,
        Lcom/android/server/biometrics/BiometricService$Authenticator;,
        Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;,
        Lcom/android/server/biometrics/BiometricService$AuthSession;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final FEATURE_ID:[I

.field private static final MSG_AUTHENTICATE:I = 0x9

.field private static final MSG_CANCEL_AUTHENTICATION:I = 0xa

.field private static final MSG_ON_ACQUIRED:I = 0x5

.field private static final MSG_ON_AUTHENTICATION_FAILED:I = 0x3

.field private static final MSG_ON_AUTHENTICATION_SUCCEEDED:I = 0x2

.field private static final MSG_ON_CONFIRM_DEVICE_CREDENTIAL_ERROR:I = 0xc

.field private static final MSG_ON_CONFIRM_DEVICE_CREDENTIAL_SUCCESS:I = 0xb

.field private static final MSG_ON_DISMISSED:I = 0x6

.field private static final MSG_ON_ERROR:I = 0x4

.field private static final MSG_ON_READY_FOR_AUTHENTICATION:I = 0x8

.field private static final MSG_ON_TASK_STACK_CHANGED:I = 0x1

.field private static final MSG_ON_TRY_AGAIN_PRESSED:I = 0x7

.field private static final MSG_REGISTER_CANCELLATION_CALLBACK:I = 0xd

.field private static final STATE_AUTH_CALLED:I = 0x1

.field private static final STATE_AUTH_IDLE:I = 0x0

.field private static final STATE_AUTH_PAUSED:I = 0x3

.field private static final STATE_AUTH_PENDING_CONFIRM:I = 0x5

.field private static final STATE_AUTH_STARTED:I = 0x2

.field private static final STATE_BIOMETRIC_AUTH_CANCELED_SHOWING_CDC:I = 0x6

.field private static final TAG:Ljava/lang/String; = "BiometricService"


# instance fields
.field private mActivityTaskManager:Landroid/app/IActivityTaskManager;

.field private final mAppOps:Landroid/app/AppOpsManager;

.field final mAuthenticators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/biometrics/BiometricService$Authenticator;",
            ">;"
        }
    .end annotation
.end field

.field private mConfirmDeviceCredentialReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

.field private mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

.field private mCurrentModality:I

.field private final mEnabledOnKeyguardCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/biometrics/BiometricService$EnabledOnKeyguardCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mFaceService:Landroid/hardware/face/IFaceService;

.field private mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

.field private final mHandler:Landroid/os/Handler;

.field private final mHasFeatureFace:Z

.field private final mHasFeatureFingerprint:Z

.field private final mHasFeatureIris:Z

.field private final mInternalReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

.field private mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

.field private final mRandom:Ljava/util/Random;

.field private final mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

.field private final mTaskStackListener:Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/biometrics/BiometricService;->FEATURE_ID:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0x2
        0x4
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;-><init>(Lcom/android/server/biometrics/BiometricService;Lcom/android/server/biometrics/BiometricService$1;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mTaskStackListener:Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mRandom:Ljava/util/Random;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/server/biometrics/BiometricService$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/BiometricService$1;-><init>(Lcom/android/server/biometrics/BiometricService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/biometrics/BiometricService$2;

    invoke-direct {v0, p0}, Lcom/android/server/biometrics/BiometricService$2;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mInternalReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    const-class v0, Landroid/app/AppOpsManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mAppOps:Landroid/app/AppOpsManager;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mEnabledOnKeyguardCallbacks:Ljava/util/List;

    new-instance v0, Lcom/android/server/biometrics/BiometricService$SettingObserver;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/BiometricService$SettingObserver;-><init>(Lcom/android/server/biometrics/BiometricService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/biometrics/BiometricService;->mHasFeatureFingerprint:Z

    const-string v1, "android.hardware.biometrics.iris"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/biometrics/BiometricService;->mHasFeatureIris:Z

    const-string v1, "android.hardware.biometrics.face"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/biometrics/BiometricService;->mHasFeatureFace:Z

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v2, Lcom/android/server/biometrics/BiometricService$3;

    invoke-direct {v2, p0}, Lcom/android/server/biometrics/BiometricService$3;-><init>(Lcom/android/server/biometrics/BiometricService;)V

    const-class v3, Lcom/android/server/biometrics/BiometricService;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "BiometricService"

    const-string v3, "Failed to register user switch observer"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/biometrics/BiometricService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/biometrics/BiometricService;Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;IIILandroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V
    .locals 0

    invoke-direct/range {p0 .. p11}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;IIILandroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/biometrics/BiometricService;Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleCancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/biometrics/BiometricService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricService;->handleOnConfirmDeviceCredentialSuccess()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/biometrics/BiometricService;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleOnConfirmDeviceCredentialError(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/biometrics/BiometricService;Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService;->handleRegisterCancellationCallback(Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/biometrics/BiometricService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mEnabledOnKeyguardCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/biometrics/BiometricService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricService;->checkInternalPermission()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/biometrics/BiometricService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricService;->checkPermission()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/biometrics/BiometricService;I)Landroid/util/Pair;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService;->checkAndGetBiometricModality(I)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/biometrics/BiometricService;)Lcom/android/server/biometrics/BiometricService$SettingObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/biometrics/BiometricService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricService;->handleTaskStackChanged()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/biometrics/BiometricService;)Landroid/hardware/fingerprint/IFingerprintService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/biometrics/BiometricService;)Landroid/hardware/face/IFaceService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mFaceService:Landroid/hardware/face/IFaceService;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/android/server/biometrics/BiometricService;Landroid/hardware/biometrics/IBiometricServiceReceiver;)Landroid/hardware/biometrics/IBiometricServiceReceiver;
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricService;->mConfirmDeviceCredentialReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/server/biometrics/BiometricService;Z[B)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticationSucceeded(Z[B)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/biometrics/BiometricService;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService;->handleAuthenticationFailed(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/biometrics/BiometricService;IILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->handleOnError(IILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/biometrics/BiometricService;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/biometrics/BiometricService;->handleOnAcquired(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/biometrics/BiometricService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService;->handleOnDismissed(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/biometrics/BiometricService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricService;->handleOnTryAgainPressed()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/biometrics/BiometricService;IZI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricService;->handleOnReadyForAuthentication(IZI)V

    return-void
.end method

.method private authenticateInternal(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;IIIILandroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V
    .locals 30

    move-object/from16 v15, p0

    move/from16 v14, p11

    const-string v13, "BiometricService"

    :try_start_0
    const-string/jumbo v0, "require_confirmation"

    const/4 v12, 0x1

    move-object/from16 v11, p7

    invoke-virtual {v11, v0, v12}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4

    and-int/lit8 v1, v14, 0x4

    if-eqz v1, :cond_2

    if-nez v0, :cond_1

    :try_start_1
    iget-object v1, v15, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    move/from16 v10, p4

    :try_start_2
    invoke-virtual {v1, v10}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getFaceAlwaysRequireConfirmation(I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :catch_0
    move-exception v0

    move/from16 v10, p4

    goto/16 :goto_6

    :cond_1
    move/from16 v10, p4

    :goto_0
    move v1, v12

    :goto_1
    move v0, v1

    goto :goto_2

    :cond_2
    move/from16 v10, p4

    :goto_2
    iget-object v1, v15, Lcom/android/server/biometrics/BiometricService;->mRandom:Ljava/util/Random;

    const v2, 0x7ffffffe

    invoke-virtual {v1, v2}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    add-int/lit8 v9, v1, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating auth session. Modality: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", cookie: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    move-object v8, v1

    invoke-static/range {p11 .. p11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v8, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v7, Lcom/android/server/biometrics/BiometricService$AuthSession;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_4

    move-object v1, v7

    move-object/from16 v2, p0

    move-object v3, v8

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-object/from16 v26, v7

    move/from16 v7, p4

    move-object/from16 v27, v8

    move-object/from16 v8, p5

    move/from16 v28, v9

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    move/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v29, v13

    move/from16 v13, p10

    move/from16 v14, p11

    move v15, v0

    move-object/from16 v16, p12

    :try_start_3
    invoke-direct/range {v1 .. v16}, Lcom/android/server/biometrics/BiometricService$AuthSession;-><init>(Lcom/android/server/biometrics/BiometricService;Ljava/util/HashMap;Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;IIIIZLandroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_3

    move-object/from16 v1, p0

    move-object/from16 v2, v26

    :try_start_4
    iput-object v2, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v2, v1, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2502(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    and-int/lit8 v2, p11, 0x1

    if-eqz v2, :cond_3

    iget-object v14, v1, Lcom/android/server/biometrics/BiometricService;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    iget-object v2, v1, Lcom/android/server/biometrics/BiometricService;->mInternalReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-object/from16 v15, p1

    move-wide/from16 v16, p2

    move/from16 v18, p4

    move-object/from16 v19, v2

    move-object/from16 v20, p6

    move/from16 v21, v28

    move/from16 v22, p8

    move/from16 v23, p9

    move/from16 v24, p10

    invoke-interface/range {v14 .. v24}, Landroid/hardware/fingerprint/IFingerprintService;->prepareForAuthentication(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiverInternal;Ljava/lang/String;IIII)V

    :cond_3
    and-int/lit8 v2, p11, 0x2

    if-eqz v2, :cond_4

    const-string v2, "Iris unsupported"
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_2

    move-object/from16 v3, v29

    :try_start_5
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_4
    move-object/from16 v3, v29

    :goto_3
    and-int/lit8 v2, p11, 0x4

    if-eqz v2, :cond_5

    iget-object v14, v1, Lcom/android/server/biometrics/BiometricService;->mFaceService:Landroid/hardware/face/IFaceService;

    iget-object v2, v1, Lcom/android/server/biometrics/BiometricService;->mInternalReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move v15, v0

    move-object/from16 v16, p1

    move-wide/from16 v17, p2

    move/from16 v19, p4

    move-object/from16 v20, v2

    move-object/from16 v21, p6

    move/from16 v22, v28

    move/from16 v23, p8

    move/from16 v24, p9

    move/from16 v25, p10

    invoke-interface/range {v14 .. v25}, Landroid/hardware/face/IFaceService;->prepareForAuthentication(ZLandroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiverInternal;Ljava/lang/String;IIII)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_7

    :cond_5
    :goto_4
    goto :goto_8

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v1, p0

    :goto_5
    move-object/from16 v3, v29

    goto :goto_7

    :catch_4
    move-exception v0

    :goto_6
    move-object v3, v13

    move-object v1, v15

    :goto_7
    const-string v2, "Unable to start authentication"

    invoke-static {v3, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_8
    return-void
.end method

.method private checkAndGetBiometricModality(I)Landroid/util/Pair;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    if-eqz v1, :cond_0

    new-instance v1, Landroid/util/Pair;

    const/16 v3, 0xc

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    :cond_0
    const/4 v1, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    iget-object v7, p0, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_3

    iget-object v7, p0, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/biometrics/BiometricService$Authenticator;

    invoke-virtual {v7}, Lcom/android/server/biometrics/BiometricService$Authenticator;->getType()I

    move-result v0

    iget-object v7, p0, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/biometrics/BiometricService$Authenticator;

    invoke-virtual {v7}, Lcom/android/server/biometrics/BiometricService$Authenticator;->getAuthenticator()Landroid/hardware/biometrics/BiometricAuthenticator;

    move-result-object v7

    invoke-interface {v7}, Landroid/hardware/biometrics/BiometricAuthenticator;->isHardwareDetected()Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v1, 0x1

    if-nez v5, :cond_1

    move v5, v0

    :cond_1
    invoke-interface {v7, p1}, Landroid/hardware/biometrics/BiometricAuthenticator;->hasEnrolledTemplates(I)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v3, 0x1

    invoke-direct {p0, v0, p1}, Lcom/android/server/biometrics/BiometricService;->isEnabledForApp(II)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v4, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    const/4 v6, 0x1

    if-nez v1, :cond_4

    new-instance v7, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v7, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7

    :cond_4
    if-nez v3, :cond_5

    new-instance v2, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v7, 0xb

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    :cond_5
    if-nez v4, :cond_6

    new-instance v7, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v7, v2, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v7

    :cond_6
    new-instance v6, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v6, v7, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v6
.end method

.method private checkAppOp(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v1, 0x4e

    invoke-virtual {v0, v1, p2, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Rejecting "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; permission denied"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Permission denied"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkInternalPermission()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC_INTERNAL"

    const-string v2, "Must have USE_BIOMETRIC_INTERNAL permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private checkPermission()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_FINGERPRINT"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.USE_BIOMETRIC"

    const-string v2, "Must have USE_BIOMETRIC permission"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private getAuthenticator(I)Landroid/hardware/biometrics/BiometricAuthenticator;
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    return-object v1

    :cond_0
    nop

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "face"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/face/FaceManager;

    return-object v0

    :cond_1
    return-object v1

    :cond_2
    nop

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method private getErrorString(III)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    const/4 v1, 0x0

    const-string v2, "BiometricService"

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get error string for modality: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/hardware/face/FaceManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    const-string v0, "Modality not supported"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_2
    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p2, p3}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(Landroid/content/Context;II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handleAuthenticate(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;IIILandroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V
    .locals 16

    move-object/from16 v13, p0

    iget-object v14, v13, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    new-instance v15, Lcom/android/server/biometrics/-$$Lambda$BiometricService$u838xLmNIeU4FVoszS6ZOdfG9A8;

    move-object v0, v15

    move-object/from16 v1, p0

    move/from16 v2, p4

    move-object/from16 v3, p5

    move-object/from16 v4, p1

    move-wide/from16 v5, p2

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v11, p10

    move-object/from16 v12, p11

    invoke-direct/range {v0 .. v12}, Lcom/android/server/biometrics/-$$Lambda$BiometricService$u838xLmNIeU4FVoszS6ZOdfG9A8;-><init>(Lcom/android/server/biometrics/BiometricService;ILandroid/hardware/biometrics/IBiometricServiceReceiver;Landroid/os/IBinder;JLjava/lang/String;Landroid/os/Bundle;IIILandroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V

    invoke-virtual {v14, v15}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private handleAuthenticationFailed(Ljava/lang/String;)V
    .locals 3

    const-string v0, "BiometricService"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-nez v1, :cond_0

    const-string/jumbo v1, "onAuthenticationFailed(): Auth session is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v2, 0x0

    invoke-interface {v1, v2, p1}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricAuthenticated(ZLjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v1, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2502(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    :cond_1
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v1, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAuthenticationFailed()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Remote exception"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private handleAuthenticationSucceeded(Z[B)V
    .locals 5

    const-string v0, "BiometricService"

    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-nez v1, :cond_0

    const-string/jumbo v1, "onAuthenticationSucceeded(): Auth session is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mTaskStackListener:Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;

    invoke-interface {v2, v3}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/security/KeyStore;->addAuthToken([B)I

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v2, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAuthenticationSucceeded()V

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2502(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    iput-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2402(Lcom/android/server/biometrics/BiometricService$AuthSession;J)J

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iput-object p2, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mTokenEscrow:[B

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v3, 0x5

    invoke-static {v2, v3}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2502(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    :goto_0
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v3, 0x1

    invoke-interface {v2, v3, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricAuthenticated(ZLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "Remote exception"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private handleCancelAuthentication(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 6

    const-string v0, "BiometricService"

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v2, 0x5

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2500(Lcom/android/server/biometrics/BiometricService$AuthSession;)I

    move-result v1

    const/4 v3, 0x6

    if-ne v1, v3, :cond_1

    const-string v1, "Cancel received while ConfirmDeviceCredential showing"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {v1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2600(Lcom/android/server/biometrics/BiometricService$AuthSession;)Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

    move-result-object v1

    invoke-interface {v1}, Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;->cancel()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v3, "Unable to cancel ConfirmDeviceCredential"

    invoke-static {v0, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    nop

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10400fa

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v0}, Lcom/android/server/biometrics/BiometricService;->handleOnConfirmDeviceCredentialError(ILjava/lang/String;)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2500(Lcom/android/server/biometrics/BiometricService$AuthSession;)I

    move-result v1

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    :try_start_1
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v1, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x10400fd

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v2, v4}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {v1, v3}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2502(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->hideBiometricDialog()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v1

    const-string v2, "Remote exception"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-eqz v2, :cond_3

    iget-object v2, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mBundle:Landroid/os/Bundle;

    const-string v4, "from_confirm_device_credential"

    invoke-virtual {v2, v4, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    :cond_3
    if-eqz v1, :cond_4

    const-string v2, "Cancelling from CDC"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, p1, p2, v3}, Lcom/android/server/biometrics/BiometricService;->cancelInternal(Landroid/os/IBinder;Ljava/lang/String;Z)V

    goto :goto_2

    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/biometrics/BiometricService;->cancelInternal(Landroid/os/IBinder;Ljava/lang/String;Z)V

    :goto_2
    return-void

    :cond_5
    :goto_3
    const-string v1, "Unable to cancel, one or more null arguments"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private handleOnAcquired(ILjava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const-string v1, "BiometricService"

    if-nez v0, :cond_0

    const-string/jumbo v0, "onAcquired(): Auth session is null"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_2

    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ignoring null message: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p2}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricHelp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_0
    return-void
.end method

.method private handleOnConfirmDeviceCredentialError(ILjava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mConfirmDeviceCredentialReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    const-string v1, "BiometricService"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCDCAError null! Error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mTaskStackListener:Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;

    invoke-interface {v2, v3}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mConfirmDeviceCredentialReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v2, p1, p2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2502(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "RemoteException"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mConfirmDeviceCredentialReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    return-void
.end method

.method private handleOnConfirmDeviceCredentialSuccess()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mConfirmDeviceCredentialReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    const-string v1, "BiometricService"

    if-nez v0, :cond_0

    const-string/jumbo v0, "onCDCASuccess null!"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mTaskStackListener:Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;

    invoke-interface {v2, v3}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mConfirmDeviceCredentialReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAuthenticationSucceeded()V

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2502(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "RemoteException"

    invoke-static {v1, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mConfirmDeviceCredentialReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    return-void
.end method

.method private handleOnDismissed(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const-string v1, "BiometricService"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onDialogDismissed: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", auth session null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/biometrics/BiometricService;->logDialogDismissed(I)V

    const/4 v0, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq p1, v2, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v4, v4, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v4, p1}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onDialogDismissed(I)V

    invoke-virtual {p0, v3, v3, v0}, Lcom/android/server/biometrics/BiometricService;->cancelInternal(Landroid/os/IBinder;Ljava/lang/String;Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_2

    :cond_1
    :goto_0
    const/4 v4, 0x3

    if-ne p1, v4, :cond_2

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v2, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    const/16 v4, 0xa

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10400fd

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V

    goto :goto_1

    :cond_2
    if-ne p1, v2, :cond_3

    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v4, v4, Lcom/android/server/biometrics/BiometricService$AuthSession;->mTokenEscrow:[B

    invoke-virtual {v2, v4}, Landroid/security/KeyStore;->addAuthToken([B)I

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v2, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onAuthenticationSucceeded()V

    :cond_3
    :goto_1
    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v2}, Lcom/android/server/biometrics/BiometricService$AuthSession;->isFromConfirmDeviceCredential()Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mTaskStackListener:Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;

    invoke-interface {v2, v4}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {v2, v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2502(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    iput-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    goto :goto_3

    :goto_2
    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_3
    return-void
.end method

.method private handleOnError(IILjava/lang/String;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " cookie: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->containsCookie(I)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->isFromConfirmDeviceCredential()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "From CDC, transition to CANCELED_SHOWING_CDC state"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0, p2, p3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v2, 0x6

    invoke-static {v0, v2}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2502(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->hideBiometricDialog()V

    goto/16 :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2500(Lcom/android/server/biometrics/BiometricService$AuthSession;)I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_2

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p3}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricError(Ljava/lang/String;)V

    const/4 v0, 0x5

    if-ne p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mTaskStackListener:Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;

    invoke-interface {v0, v4}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0, p2, p3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {v0, v3}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2502(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    iput-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0}, Lcom/android/internal/statusbar/IStatusBarService;->hideBiometricDialog()V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/biometrics/-$$Lambda$BiometricService$QhCJhzC2Bjg3cY0zTVc1KBEEOuA;

    invoke-direct {v2, p0, p2, p3}, Lcom/android/server/biometrics/-$$Lambda$BiometricService$QhCJhzC2Bjg3cY0zTVc1KBEEOuA;-><init>(Lcom/android/server/biometrics/BiometricService;ILjava/lang/String;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2500(Lcom/android/server/biometrics/BiometricService$AuthSession;)I

    move-result v0

    const/4 v4, 0x3

    if-ne v0, v4, :cond_3

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0, p2, p3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v0, p3}, Lcom/android/internal/statusbar/IStatusBarService;->onBiometricError(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mTaskStackListener:Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;

    invoke-interface {v0, v4}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {v0, v3}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2502(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    iput-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Impossible session error state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {v2}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2500(Lcom/android/server/biometrics/BiometricService$AuthSession;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v0, p1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->containsCookie(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2500(Lcom/android/server/biometrics/BiometricService$AuthSession;)I

    move-result v0

    const/4 v4, 0x1

    if-ne v0, v4, :cond_5

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0, p2, p3}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {v0, v3}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2502(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    iput-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    goto :goto_0

    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Impossible pending session error state: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {v2}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2500(Lcom/android/server/biometrics/BiometricService$AuthSession;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private handleOnReadyForAuthentication(IZI)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesWaiting:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const-string v2, "BiometricService"

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-ne v3, p1, :cond_0

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v3, v3, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesMatched:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v3, v3, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesWaiting:Ljava/util/HashMap;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Matched cookie: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v4, v4, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesWaiting:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " remaining"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v1, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesWaiting:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    invoke-static {v1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2500(Lcom/android/server/biometrics/BiometricService$AuthSession;)I

    move-result v1

    const/4 v4, 0x3

    if-ne v1, v4, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iput-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mPendingAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v5, 0x2

    invoke-static {v4, v5}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2502(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v4, v4, Lcom/android/server/biometrics/BiometricService$AuthSession;->mBundle:Landroid/os/Bundle;

    iget-object v6, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v6, v6, Lcom/android/server/biometrics/BiometricService$AuthSession;->mOpPackageName:Ljava/lang/String;

    const-string/jumbo v7, "key_fingerprint_package_name"

    invoke-virtual {v4, v7, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    :try_start_0
    iget-object v6, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v6, v6, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModalitiesMatched:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v0, v6

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/Map$Entry;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v3, :cond_3

    iget-object v7, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v7, v7, Lcom/android/server/biometrics/BiometricService$AuthSession;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v8, "key_cookie"

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Integer;

    invoke-virtual {v9}, Ljava/lang/Integer;->intValue()I

    move-result v9

    invoke-virtual {v7, v8, v9}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v7, p0, Lcom/android/server/biometrics/BiometricService;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7, v8}, Landroid/hardware/fingerprint/IFingerprintService;->startPreparedClient(I)V

    goto :goto_4

    :cond_3
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    if-ne v7, v5, :cond_4

    const-string v7, "Iris unsupported"

    invoke-static {v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_4
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    iget-object v7, p0, Lcom/android/server/biometrics/BiometricService;->mFaceService:Landroid/hardware/face/IFaceService;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    invoke-interface {v7, v8}, Landroid/hardware/face/IFaceService;->startPreparedClient(I)V

    goto :goto_4

    :cond_5
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown modality: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    or-int/2addr v4, v7

    goto/16 :goto_3

    :cond_6
    if-nez v1, :cond_7

    iget-object v6, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v7, v3, Lcom/android/server/biometrics/BiometricService$AuthSession;->mBundle:Landroid/os/Bundle;

    iget-object v8, p0, Lcom/android/server/biometrics/BiometricService;->mInternalReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move v9, v4

    move v10, p2

    move v11, p3

    invoke-interface/range {v6 .. v11}, Lcom/android/internal/statusbar/IStatusBarService;->showBiometricDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;IZI)V

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v5, p0, Lcom/android/server/biometrics/BiometricService;->mTaskStackListener:Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;

    invoke-interface {v3, v5}, Landroid/app/IActivityTaskManager;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_7
    goto :goto_5

    :catch_0
    move-exception v3

    const-string v4, "Remote exception"

    invoke-static {v2, v4, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_5
    return-void
.end method

.method private handleOnTryAgainPressed()V
    .locals 14

    const-string v0, "BiometricService"

    const-string/jumbo v1, "onTryAgainPressed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v2, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mToken:Landroid/os/IBinder;

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-wide v3, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mSessionId:J

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v5, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v6, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v7, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mOpPackageName:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v8, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mBundle:Landroid/os/Bundle;

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v9, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingUid:I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v10, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingPid:I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v11, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mCallingUserId:I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v12, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2600(Lcom/android/server/biometrics/BiometricService$AuthSession;)Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

    move-result-object v13

    move-object v1, p0

    invoke-direct/range {v1 .. v13}, Lcom/android/server/biometrics/BiometricService;->authenticateInternal(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;IIIILandroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V

    return-void
.end method

.method private handleRegisterCancellationCallback(Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const-string v1, "BiometricService"

    if-nez v0, :cond_0

    const-string v0, "Current auth session null"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "Updating cancel callback"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {v0, p1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2602(Lcom/android/server/biometrics/BiometricService$AuthSession;Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;

    return-void
.end method

.method private handleTaskStackChanged()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->getTasks(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v3, v3, Lcom/android/server/biometrics/BiometricService$AuthSession;->mOpPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v3}, Lcom/android/internal/statusbar/IStatusBarService;->hideBiometricDialog()V

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v4, p0, Lcom/android/server/biometrics/BiometricService;->mTaskStackListener:Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;

    invoke-interface {v3, v4}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v3, v3, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    const/4 v4, 0x5

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x10400fa

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {v3, v1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2502(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BiometricService"

    const-string v2, "Unable to get running tasks"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private hasFeature(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/BiometricService;->mHasFeatureFace:Z

    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/biometrics/BiometricService;->mHasFeatureIris:Z

    return v0

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/biometrics/BiometricService;->mHasFeatureFingerprint:Z

    return v0
.end method

.method private isEnabledForApp(II)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v1, 0x2

    if-eq p1, v1, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported modality: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BiometricService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mSettingObserver:Lcom/android/server/biometrics/BiometricService$SettingObserver;

    invoke-virtual {v0, p2}, Lcom/android/server/biometrics/BiometricService$SettingObserver;->getFaceEnabledForApps(I)Z

    move-result v0

    return v0

    :cond_1
    return v0

    :cond_2
    return v0
.end method

.method private logDialogDismissed(I)V
    .locals 14

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-static {v2}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2400(Lcom/android/server/biometrics/BiometricService$AuthSession;)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const/16 v4, 0x58

    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricService;->statsModality()I

    move-result v5

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v6, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v2}, Lcom/android/server/biometrics/BiometricService$AuthSession;->isCrypto()Z

    move-result v7

    const/4 v8, 0x2

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-boolean v9, v2, Lcom/android/server/biometrics/BiometricService$AuthSession;->mRequireConfirmation:Z

    const/4 v10, 0x3

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v3, v3, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    invoke-static {v2, v3}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v13

    move-wide v11, v0

    invoke-static/range {v4 .. v13}, Landroid/util/StatsLog;->write(IIIZIZIJZ)I

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/16 v0, 0xd

    move v7, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    const/16 v0, 0xa

    move v7, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    move v7, v0

    :goto_0
    nop

    const/16 v1, 0x59

    invoke-direct {p0}, Lcom/android/server/biometrics/BiometricService;->statsModality()I

    move-result v2

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v3, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    invoke-virtual {v0}, Lcom/android/server/biometrics/BiometricService$AuthSession;->isCrypto()Z

    move-result v4

    const/4 v5, 0x2

    const/4 v6, 0x2

    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v9, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v9, v9, Lcom/android/server/biometrics/BiometricService$AuthSession;->mUserId:I

    invoke-static {v0, v9}, Lcom/android/server/biometrics/Utils;->isDebugEnabled(Landroid/content/Context;I)Z

    move-result v9

    invoke-static/range {v1 .. v9}, Landroid/util/StatsLog;->write(IIIZIIIIZ)I

    :goto_1
    return-void
.end method

.method private statsModality()I
    .locals 2

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget v1, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x1

    :cond_1
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v1, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x2

    :cond_2
    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget v1, v1, Lcom/android/server/biometrics/BiometricService$AuthSession;->mModality:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_3

    or-int/lit8 v0, v0, 0x4

    :cond_3
    return v0
.end method


# virtual methods
.method cancelInternal(Landroid/os/IBinder;Ljava/lang/String;Z)V
    .locals 14

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v10

    move-object v11, p0

    iget-object v12, v11, Lcom/android/server/biometrics/BiometricService;->mHandler:Landroid/os/Handler;

    new-instance v13, Lcom/android/server/biometrics/-$$Lambda$BiometricService$_uy2KOpZAFuLlEdqD9ofDZtdKeQ;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move v4, v8

    move v5, v9

    move v6, v10

    move/from16 v7, p3

    invoke-direct/range {v0 .. v7}, Lcom/android/server/biometrics/-$$Lambda$BiometricService$_uy2KOpZAFuLlEdqD9ofDZtdKeQ;-><init>(Lcom/android/server/biometrics/BiometricService;Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public synthetic lambda$cancelInternal$2$BiometricService(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    .locals 9

    const-string v0, "BiometricService"

    :try_start_0
    iget v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentModality:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-interface/range {v2 .. v8}, Landroid/hardware/fingerprint/IFingerprintService;->cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V

    :cond_0
    iget v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentModality:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    const-string v1, "Iris unsupported"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v1, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentModality:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mFaceService:Landroid/hardware/face/IFaceService;

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move v8, p6

    invoke-interface/range {v2 .. v8}, Landroid/hardware/face/IFaceService;->cancelAuthenticationFromService(Landroid/os/IBinder;Ljava/lang/String;IIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Unable to cancel authentication"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public synthetic lambda$handleAuthenticate$1$BiometricService(ILandroid/hardware/biometrics/IBiometricServiceReceiver;Landroid/os/IBinder;JLjava/lang/String;Landroid/os/Bundle;IIILandroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V
    .locals 19

    move-object/from16 v14, p0

    move-object/from16 v15, p2

    const-string v1, "BiometricService"

    invoke-direct/range {p0 .. p1}, Lcom/android/server/biometrics/BiometricService;->checkAndGetBiometricModality(I)Landroid/util/Pair;

    move-result-object v13

    iget-object v0, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v12

    iget-object v0, v13, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v11

    if-eqz v11, :cond_3

    nop

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/biometrics/BiometricService;->getContext()Landroid/content/Context;

    move-result-object v0

    const v2, 0x10400fc

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x1

    if-eq v11, v2, :cond_2

    const/16 v2, 0xb

    if-eq v11, v2, :cond_1

    const/16 v2, 0xc

    if-eq v11, v2, :cond_0

    const-string v2, "Unhandled error"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-interface {v15, v11, v0}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    invoke-direct {v14, v12, v11, v2}, Lcom/android/server/biometrics/BiometricService;->getErrorString(III)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v15, v11, v2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V

    goto :goto_0

    :cond_2
    invoke-interface {v15, v11, v0}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v2, "Unable to send error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void

    :cond_3
    iput v12, v14, Lcom/android/server/biometrics/BiometricService;->mCurrentModality:I

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-wide/from16 v3, p4

    move/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    move/from16 v16, v11

    move/from16 v11, p10

    move/from16 v17, v12

    move-object/from16 v18, v13

    move-object/from16 v13, p11

    invoke-direct/range {v1 .. v13}, Lcom/android/server/biometrics/BiometricService;->authenticateInternal(Landroid/os/IBinder;JILandroid/hardware/biometrics/IBiometricServiceReceiver;Ljava/lang/String;Landroid/os/Bundle;IIIILandroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback;)V

    return-void
.end method

.method public synthetic lambda$handleOnError$0$BiometricService(ILjava/lang/String;)V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    iget-object v1, p0, Lcom/android/server/biometrics/BiometricService;->mTaskStackListener:Lcom/android/server/biometrics/BiometricService$BiometricTaskStackListener;

    invoke-interface {v0, v1}, Landroid/app/IActivityTaskManager;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    iget-object v0, v0, Lcom/android/server/biometrics/BiometricService$AuthSession;->mClientReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiver;

    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/IBiometricServiceReceiver;->onError(ILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/biometrics/BiometricService$AuthSession;->access$2502(Lcom/android/server/biometrics/BiometricService$AuthSession;I)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mCurrentAuthSession:Lcom/android/server/biometrics/BiometricService$AuthSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "BiometricService"

    const-string v2, "Remote exception"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/biometrics/BiometricService;->mHasFeatureFingerprint:Z

    if-eqz v0, :cond_0

    nop

    const-string v0, "fingerprint"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/fingerprint/IFingerprintService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/fingerprint/IFingerprintService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mFingerprintService:Landroid/hardware/fingerprint/IFingerprintService;

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/biometrics/BiometricService;->mHasFeatureFace:Z

    if-eqz v0, :cond_1

    nop

    const-string v0, "face"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/hardware/face/IFaceService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/face/IFaceService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mFaceService:Landroid/hardware/face/IFaceService;

    :cond_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mActivityTaskManager:Landroid/app/IActivityTaskManager;

    nop

    const-string/jumbo v0, "statusbar"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/biometrics/BiometricService;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lcom/android/server/biometrics/BiometricService;->FEATURE_ID:[I

    array-length v2, v1

    if-ge v0, v2, :cond_3

    aget v1, v1, v0

    invoke-direct {p0, v1}, Lcom/android/server/biometrics/BiometricService;->hasFeature(I)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/android/server/biometrics/BiometricService$Authenticator;

    sget-object v2, Lcom/android/server/biometrics/BiometricService;->FEATURE_ID:[I

    aget v3, v2, v0

    aget v2, v2, v0

    invoke-direct {p0, v2}, Lcom/android/server/biometrics/BiometricService;->getAuthenticator(I)Landroid/hardware/biometrics/BiometricAuthenticator;

    move-result-object v2

    invoke-direct {v1, p0, v3, v2}, Lcom/android/server/biometrics/BiometricService$Authenticator;-><init>(Lcom/android/server/biometrics/BiometricService;ILandroid/hardware/biometrics/BiometricAuthenticator;)V

    iget-object v2, p0, Lcom/android/server/biometrics/BiometricService;->mAuthenticators:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/biometrics/BiometricService$BiometricServiceWrapper;-><init>(Lcom/android/server/biometrics/BiometricService;Lcom/android/server/biometrics/BiometricService$1;)V

    const-string v1, "biometric"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/biometrics/BiometricService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method
