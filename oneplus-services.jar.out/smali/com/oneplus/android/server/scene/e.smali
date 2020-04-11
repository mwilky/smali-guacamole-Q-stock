.class Lcom/oneplus/android/server/scene/e;
.super Landroid/content/BroadcastReceiver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;


# direct methods
.method constructor <init>(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/scene/e;->this$0:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    sget-boolean p1, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mDebug:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "recevie: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "XLVMotor"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.xvibrate.action.test"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "code"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/oneplus/android/server/scene/e;->this$0:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {p0, v0}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->access$102(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;Z)Z

    goto :goto_0

    :cond_1
    const-string p2, "off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iget-object p0, p0, Lcom/oneplus/android/server/scene/e;->this$0:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {p0, v1}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->access$102(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;Z)Z

    goto :goto_0

    :cond_2
    const-string p2, "debug_on"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    sput-boolean v0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mDebug:Z

    goto :goto_0

    :cond_3
    const-string p2, "debug_off"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    sput-boolean v1, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->mDebug:Z

    goto :goto_0

    :cond_4
    const-string p2, "dump"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p0, p0, Lcom/oneplus/android/server/scene/e;->this$0:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {p0}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->access$800(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;)V

    goto :goto_0

    :cond_5
    const-string p2, "@parameters"

    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/android/server/scene/e;->this$0:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {p0, p1}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->access$900(Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string p2, "disable"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p0, p0, Lcom/oneplus/android/server/scene/e;->this$0:Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->disableFeatureWhenException()V

    :cond_7
    :goto_0
    return-void
.end method
