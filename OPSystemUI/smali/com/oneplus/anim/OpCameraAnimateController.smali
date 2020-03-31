.class public Lcom/oneplus/anim/OpCameraAnimateController;
.super Ljava/lang/Object;
.source "OpCameraAnimateController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/anim/OpCameraAnimateController$MotorStateChangedCallback;
    }
.end annotation


# instance fields
.field private mAvailabilityCallback:Lcom/oneplus/android/os/IOpMotorStateChangedCallback;

.field private mContext:Landroid/content/Context;

.field private mGraphLight:Lcom/oneplus/anim/OpGraphLight;

.field private mManager:Lcom/oneplus/android/os/IOpMotorManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/anim/OpCameraAnimateController;)Lcom/oneplus/anim/OpGraphLight;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mGraphLight:Lcom/oneplus/anim/OpGraphLight;

    return-object p0
.end method

.method private registerCameraCallback()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "registerCameraCallback mManager:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mManager:Lcom/oneplus/android/os/IOpMotorManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpCameraAnimateController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mManager:Lcom/oneplus/android/os/IOpMotorManager;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mAvailabilityCallback:Lcom/oneplus/android/os/IOpMotorStateChangedCallback;

    if-nez v0, :cond_1

    new-instance v0, Lcom/oneplus/anim/OpCameraAnimateController$MotorStateChangedCallback;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/oneplus/anim/OpCameraAnimateController$MotorStateChangedCallback;-><init>(Lcom/oneplus/anim/OpCameraAnimateController;Lcom/oneplus/anim/OpCameraAnimateController$1;)V

    iput-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mAvailabilityCallback:Lcom/oneplus/android/os/IOpMotorStateChangedCallback;

    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mManager:Lcom/oneplus/android/os/IOpMotorManager;

    iget-object p0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mAvailabilityCallback:Lcom/oneplus/android/os/IOpMotorStateChangedCallback;

    invoke-interface {v0, p0}, Lcom/oneplus/android/os/IOpMotorManager;->registerMotorStateChangedCallback(Lcom/oneplus/android/os/IOpMotorStateChangedCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerCameraCallback: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public init()V
    .locals 4

    const-string v0, "OpCameraAnimateController"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "motor"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/android/os/IOpMotorManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/android/os/IOpMotorManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mManager:Lcom/oneplus/android/os/IOpMotorManager;

    new-instance v0, Lcom/oneplus/anim/OpGraphLight;

    iget-object v1, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/view/WindowManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mContext:Landroid/content/Context;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, v1, v2, v3}, Lcom/oneplus/anim/OpGraphLight;-><init>(Landroid/view/WindowManager;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/anim/OpCameraAnimateController;->mGraphLight:Lcom/oneplus/anim/OpGraphLight;

    invoke-direct {p0}, Lcom/oneplus/anim/OpCameraAnimateController;->registerCameraCallback()V

    return-void
.end method
