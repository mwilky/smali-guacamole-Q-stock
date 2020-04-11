.class public final Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;
.super Ljava/lang/Object;
.source "DeviceIdleController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/DeviceIdleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "DeviceIdleControllerInner"
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDeviceIdleController:Lcom/android/server/DeviceIdleController;

.field private mHandler:Landroid/os/Handler;

.field final synthetic this$0:Lcom/android/server/DeviceIdleController;


# direct methods
.method constructor <init>(Lcom/android/server/DeviceIdleController;Landroid/content/Context;Lcom/android/server/DeviceIdleController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    iget-object v0, v0, Lcom/android/server/DeviceIdleController;->mHandler:Lcom/android/server/DeviceIdleController$MyHandler;

    iput-object v0, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method getConstants()Lcom/android/server/DeviceIdleController$Constants;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$200(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Constants;

    move-result-object v0

    return-object v0
.end method

.method getContentResolver()Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method getGpsLocationListener()Landroid/location/LocationListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$400(Lcom/android/server/DeviceIdleController;)Landroid/location/LocationListener;

    move-result-object v0

    return-object v0
.end method

.method getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getLocationManager()Landroid/location/LocationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0}, Lcom/android/server/DeviceIdleController;->access$300(Lcom/android/server/DeviceIdleController;)Lcom/android/server/DeviceIdleController$Injector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/DeviceIdleController$Injector;->getLocationManager()Landroid/location/LocationManager;

    move-result-object v0

    return-object v0
.end method

.method getService()Lcom/android/server/DeviceIdleController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->mDeviceIdleController:Lcom/android/server/DeviceIdleController;

    return-object v0
.end method

.method scheduleAlarm(JZ)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->this$0:Lcom/android/server/DeviceIdleController;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/server/DeviceIdleController;->scheduleAlarmLocked(JZ)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setHasGps(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0, p1}, Lcom/android/server/DeviceIdleController;->access$102(Lcom/android/server/DeviceIdleController;Z)Z

    return-void
.end method

.method setLocating(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/DeviceIdleController$DeviceIdleControllerInner;->this$0:Lcom/android/server/DeviceIdleController;

    invoke-static {v0, p1}, Lcom/android/server/DeviceIdleController;->access$002(Lcom/android/server/DeviceIdleController;Z)Z

    return-void
.end method
