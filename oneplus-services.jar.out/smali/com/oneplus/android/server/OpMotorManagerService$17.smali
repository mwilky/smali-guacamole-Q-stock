.class Lcom/oneplus/android/server/OpMotorManagerService$17;
.super Lcom/oneplus/android/os/IOpMotorManager$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/vdb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/vdb;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/vdb;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/OpMotorManagerService$17;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-direct {p0}, Lcom/oneplus/android/os/IOpMotorManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public downMotorByPrivacyApp(Ljava/lang/String;ILandroid/os/IBinder;)I
    .locals 6

    const/4 v0, 0x0

    if-nez p3, :cond_0

    const-string p0, "OpMotorManagerService"

    const-string p1, "down token must not be null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/OpMotorManagerService$17;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v1}, Lcom/oneplus/android/server/vdb;->les(Lcom/oneplus/android/server/vdb;)Landroid/os/IBinder;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string v3, "OpMotorManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callingPid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v2, 0x7d0

    const/16 v3, 0x190

    if-le p2, v2, :cond_1

    move p2, v2

    :cond_1
    if-ge p2, v3, :cond_2

    move p2, v3

    :cond_2
    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService$17;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0, p1, p2, p3}, Lcom/oneplus/android/server/vdb;->zta(Lcom/oneplus/android/server/vdb;Ljava/lang/String;ILandroid/os/IBinder;)I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public downMotorBySystemApp(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 6

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string p0, "OpMotorManagerService"

    const-string p1, "down token must not be null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/OpMotorManagerService$17;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v1}, Lcom/oneplus/android/server/vdb;->les(Lcom/oneplus/android/server/vdb;)Landroid/os/IBinder;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string v3, "OpMotorManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callingPid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v2, "systemui_faceunlock"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/android/server/OpMotorManagerService$17;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v2, v0}, Lcom/oneplus/android/server/vdb;->sis(Lcom/oneplus/android/server/vdb;Z)Z

    :cond_1
    const-string v2, ""

    invoke-static {}, Lcom/oneplus/android/server/vdb;->se()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object p2, p0, Lcom/oneplus/android/server/OpMotorManagerService$17;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p2}, Lcom/oneplus/android/server/vdb;->zta(Lcom/oneplus/android/server/vdb;)Lcom/oneplus/android/server/vdb$you;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object p2

    const/16 v2, 0xb

    iput v2, p2, Landroid/os/Message;->what:I

    iput-object p1, p2, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService$17;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0}, Lcom/oneplus/android/server/vdb;->zta(Lcom/oneplus/android/server/vdb;)Lcom/oneplus/android/server/vdb$you;

    move-result-object p0

    invoke-static {}, Lcom/oneplus/android/server/vdb;->oe()I

    move-result p1

    int-to-long v2, p1

    invoke-virtual {p0, p2, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService$17;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0, p1, p2}, Lcom/oneplus/android/server/vdb;->you(Lcom/oneplus/android/server/vdb;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v0

    :goto_0
    monitor-exit v1

    return v0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    iget-object p1, p0, Lcom/oneplus/android/server/OpMotorManagerService$17;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p1}, Lcom/oneplus/android/server/vdb;->tsu(Lcom/oneplus/android/server/vdb;)Landroid/content/Context;

    move-result-object p1

    const-string v0, "android.permission.DUMP"

    invoke-virtual {p1, v0}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Permission Denial: can\'t dump MotorManager from from pid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", uid="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/vdb;->qe()Z

    move-result p1

    const-string v0, "OpMotorManagerService"

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dump, args="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    array-length p1, p3

    const/4 v1, 0x1

    if-lt p1, v1, :cond_c

    const/4 p1, 0x0

    aget-object p1, p3, p1

    const-string v2, "hallCalib"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_3

    array-length v2, p3

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    :try_start_0
    aget-object v2, p3, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/oneplus/android/server/vdb;->A(I)I

    aget-object v2, p3, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/oneplus/android/server/rtg;->bX:I

    const/4 v2, 0x3

    aget-object v2, p3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/oneplus/android/server/rtg;->cX:I

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dump, mHallCalibExceptionCount: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/oneplus/android/server/vdb;->re()I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sHallMinDif: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/oneplus/android/server/rtg;->bX:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " sHallMaxDif: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/oneplus/android/server/rtg;->cX:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, "hall calibration parse error : "

    invoke-static {v0, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_2
    const-string v2, "Invalid argument! Get help as bellow: dumpsys motor hallCalib 4 8 40"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    :goto_0
    const-string v2, "debug"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v4, "Invalid argument! Get detail help as bellow:"

    if-eqz v2, :cond_5

    array-length p0, p3

    if-ne p0, v3, :cond_4

    aget-object p0, p3, v1

    const-string p1, "1"

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    invoke-static {p0}, Lcom/oneplus/android/server/vdb;->D(Z)Z

    goto/16 :goto_2

    :cond_4
    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_5
    const-string v2, "delaydown"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    array-length p0, p3

    if-ne p0, v3, :cond_4

    aget-object p0, p3, v1

    invoke-static {}, Lcom/oneplus/android/server/vdb;->qe()Z

    move-result p1

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "delayTimeStr: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :try_start_1
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-static {p0}, Lcom/oneplus/android/server/vdb;->ivd(I)I

    invoke-static {}, Lcom/oneplus/android/server/vdb;->access$1200()I

    move-result p0

    const/16 p1, 0x64

    if-ge p0, p1, :cond_b

    invoke-static {p1}, Lcom/oneplus/android/server/vdb;->ivd(I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->printStackTrace()V

    goto :goto_2

    :cond_7
    const-string p2, "motortest"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_9

    invoke-static {}, Lcom/oneplus/android/server/vdb;->qe()Z

    move-result p1

    if-eqz p1, :cond_8

    const-string p1, "enable motor by dumpsys test."

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService$17;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0}, Lcom/oneplus/android/server/vdb;->zta(Lcom/oneplus/android/server/vdb;)Lcom/oneplus/android/server/vdb$you;

    move-result-object p0

    invoke-virtual {p0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_9
    const-string p2, "isFloatWin"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService$17;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0}, Lcom/oneplus/android/server/vdb;->zta(Lcom/oneplus/android/server/vdb;)Lcom/oneplus/android/server/vdb$you;

    move-result-object p0

    const/16 p1, 0xc

    :goto_1
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_2

    :cond_a
    const-string p2, "isRecording"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService$17;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0}, Lcom/oneplus/android/server/vdb;->zta(Lcom/oneplus/android/server/vdb;)Lcom/oneplus/android/server/vdb$you;

    move-result-object p0

    const/16 p1, 0xd

    goto :goto_1

    :cond_b
    :goto_2
    return-void

    :cond_c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_2
    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService$17;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0, p2}, Lcom/oneplus/android/server/vdb;->zta(Lcom/oneplus/android/server/vdb;Ljava/io/PrintWriter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-void

    :catchall_0
    move-exception p0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p0
.end method

.method public getMotorStateBySystemApp()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService$17;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-virtual {p0}, Lcom/oneplus/android/server/vdb;->getMotorState()I

    move-result p0

    return p0
.end method

.method public registerMotorStateChangedCallback(Lcom/oneplus/android/os/IOpMotorStateChangedCallback;)V
    .locals 2

    invoke-static {}, Lcom/oneplus/android/server/vdb;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OpMotorManagerService"

    const-string v1, "SERVICE registerMotorStateChangedCallback"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService$17;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v0}, Lcom/oneplus/android/server/vdb;->a(Lcom/oneplus/android/server/vdb;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService$17;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0}, Lcom/oneplus/android/server/vdb;->a(Lcom/oneplus/android/server/vdb;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public unregisterMotorStateChangedCallback(Lcom/oneplus/android/os/IOpMotorStateChangedCallback;)V
    .locals 2

    invoke-static {}, Lcom/oneplus/android/server/vdb;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OpMotorManagerService"

    const-string v1, "SERVICE unregisterMotorStateChangedCallback"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService$17;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v0}, Lcom/oneplus/android/server/vdb;->a(Lcom/oneplus/android/server/vdb;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService$17;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0}, Lcom/oneplus/android/server/vdb;->a(Lcom/oneplus/android/server/vdb;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public upMotorBySystemApp(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 5

    if-nez p2, :cond_0

    const-string p0, "OpMotorManagerService"

    const-string p1, "up token must not be null"

    invoke-static {p0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/OpMotorManagerService$17;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v0}, Lcom/oneplus/android/server/vdb;->les(Lcom/oneplus/android/server/vdb;)Landroid/os/IBinder;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    const-string v2, "OpMotorManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "callingPid: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "systemui_faceunlock"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/android/server/OpMotorManagerService$17;->this$0:Lcom/oneplus/android/server/vdb;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/oneplus/android/server/vdb;->sis(Lcom/oneplus/android/server/vdb;Z)Z

    :cond_1
    iget-object p0, p0, Lcom/oneplus/android/server/OpMotorManagerService$17;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0, p1, p2}, Lcom/oneplus/android/server/vdb;->zta(Lcom/oneplus/android/server/vdb;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result p0

    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
