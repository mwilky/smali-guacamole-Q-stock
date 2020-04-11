.class Lcom/android/server/policy/tsu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/rtg;->onSensorChanged(Landroid/hardware/SensorEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic HD:Z

.field final synthetic this$1:Lcom/android/server/policy/rtg;


# direct methods
.method constructor <init>(Lcom/android/server/policy/rtg;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/tsu;->this$1:Lcom/android/server/policy/rtg;

    iput-boolean p2, p0, Lcom/android/server/policy/tsu;->HD:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSensorChang: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/policy/tsu;->this$1:Lcom/android/server/policy/rtg;

    iget-object v1, v1, Lcom/android/server/policy/rtg;->this$0:Lcom/android/server/policy/kth;

    invoke-static {v1}, Lcom/android/server/policy/kth;->ssp(Lcom/android/server/policy/kth;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceKeyHandler"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/policy/tsu;->HD:Z

    const-string v2, "/proc/touchpanel/gesture_switch"

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v3, 0x0

    const/16 v4, 0x7d

    aput v4, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/policy/tsu;->this$1:Lcom/android/server/policy/rtg;

    iget-object p0, p0, Lcom/android/server/policy/rtg;->this$0:Lcom/android/server/policy/kth;

    invoke-static {p0}, Lcom/android/server/policy/kth;->ssp(Lcom/android/server/policy/kth;)Z

    move-result p0

    if-nez p0, :cond_0

    return-void

    :cond_0
    const-string p0, "p-sensor near, disable gesture"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x32

    goto :goto_0

    :cond_1
    const-string p0, "p-sensor far, enable gesture"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x31

    :goto_0
    invoke-static {v2, p0}, Lcom/android/server/policy/bio;->ssp(Ljava/lang/String;I)Z

    return-void
.end method
