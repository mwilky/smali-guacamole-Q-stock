.class Lcom/android/systemui/biometrics/BiometricDialogImpl$2;
.super Ljava/lang/Object;
.source "BiometricDialogImpl.java"

# interfaces
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/biometrics/BiometricDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl$2;->this$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStartedGoingToSleep()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl$2;->this$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;

    invoke-static {v0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->access$1100(Lcom/android/systemui/biometrics/BiometricDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "BiometricDialogImpl"

    const-string v1, "User canceled due to screen off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/android/systemui/biometrics/BiometricDialogImpl$2;->this$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;

    invoke-static {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->access$1000(Lcom/android/systemui/biometrics/BiometricDialogImpl;)Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$OpHandler;

    move-result-object p0

    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    :cond_0
    return-void
.end method
