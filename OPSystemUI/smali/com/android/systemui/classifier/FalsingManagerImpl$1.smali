.class Lcom/android/systemui/classifier/FalsingManagerImpl$1;
.super Ljava/lang/Object;
.source "FalsingManagerImpl.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/FalsingManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/classifier/FalsingManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/FalsingManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl$1;->this$0:Lcom/android/systemui/classifier/FalsingManagerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl$1;->this$0:Lcom/android/systemui/classifier/FalsingManagerImpl;

    invoke-static {p0}, Lcom/android/systemui/classifier/FalsingManagerImpl;->access$000(Lcom/android/systemui/classifier/FalsingManagerImpl;)Lcom/android/systemui/analytics/DataCollector;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/analytics/DataCollector;->onAccuracyChanged(Landroid/hardware/Sensor;I)V

    return-void
.end method

.method public declared-synchronized onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl$1;->this$0:Lcom/android/systemui/classifier/FalsingManagerImpl;

    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingManagerImpl;->access$000(Lcom/android/systemui/classifier/FalsingManagerImpl;)Lcom/android/systemui/analytics/DataCollector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/analytics/DataCollector;->onSensorChanged(Landroid/hardware/SensorEvent;)V

    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl$1;->this$0:Lcom/android/systemui/classifier/FalsingManagerImpl;

    invoke-static {v0}, Lcom/android/systemui/classifier/FalsingManagerImpl;->access$100(Lcom/android/systemui/classifier/FalsingManagerImpl;)Lcom/android/systemui/classifier/HumanInteractionClassifier;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/systemui/classifier/HumanInteractionClassifier;->onSensorChanged(Landroid/hardware/SensorEvent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
