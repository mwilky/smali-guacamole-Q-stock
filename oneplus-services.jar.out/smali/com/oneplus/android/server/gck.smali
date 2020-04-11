.class Lcom/oneplus/android/server/gck;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/hardware/SensorEventListener;


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

    iput-object p1, p0, Lcom/oneplus/android/server/gck;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 4

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v2, v0, v1

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const-string v3, "OpMotorManagerService"

    if-nez v2, :cond_0

    const/4 p0, 0x3

    new-array p0, p0, [Ljava/lang/Object;

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p0, v1

    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, p0, v1

    iget-object p1, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v0, 0x2

    aget p1, p1, v0

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    aput-object p1, p0, v0

    const-string p1, "event=%f %f %f "

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oneplus/android/server/vdb;->access$000()Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "phone is falling ..."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p1, p0, Lcom/oneplus/android/server/gck;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p1}, Lcom/oneplus/android/server/vdb;->zta(Lcom/oneplus/android/server/vdb;)Lcom/oneplus/android/server/vdb$you;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/gck;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p1}, Lcom/oneplus/android/server/vdb;->zta(Lcom/oneplus/android/server/vdb;)Lcom/oneplus/android/server/vdb$you;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    :cond_2
    iget-object p0, p0, Lcom/oneplus/android/server/gck;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {p0}, Lcom/oneplus/android/server/vdb;->zta(Lcom/oneplus/android/server/vdb;)Lcom/oneplus/android/server/vdb$you;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method
