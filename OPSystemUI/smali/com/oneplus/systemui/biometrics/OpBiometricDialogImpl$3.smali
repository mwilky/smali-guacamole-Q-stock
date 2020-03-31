.class Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;
.super Ljava/lang/Object;
.source "OpBiometricDialogImpl.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->start()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object v0, p1, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    const-string v1, "OpBiometricDialogImpl"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const-string p0, "mTransparentIconView onTouch mFodDialogView doesn\'t init yet"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    iget-object p1, p1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    invoke-virtual {p1}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->isFingerprintLockout()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$1500(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Z

    move-result p1

    if-nez p1, :cond_1

    const-string p0, "Device is lock out. Don\'t handle transparent view touch event."

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    sget-boolean v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->DEBUG:Z

    const/4 v3, 0x1

    if-eqz v0, :cond_5

    if-eq p1, v3, :cond_2

    if-nez p1, :cond_5

    :cond_2
    if-ne p1, v3, :cond_3

    const-string v0, "finger up"

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    const-string v0, "finger down"

    goto :goto_0

    :cond_4
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouchTransparent: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", mDialogShowing = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$1600(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mTransparentIconShowing = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$1700(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isPendingHideDialog = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object v0, v0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isPendingHideDialog()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isDreaming = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", authenticated = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$1800(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Z

    move-result v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$1800(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-nez p1, :cond_6

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object v0, v0, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isDreaming()Z

    move-result v0

    if-nez v0, :cond_6

    return v2

    :cond_6
    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p1, v3}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$1502(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Z)Z

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$1800(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$800(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Z

    move-result p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$1900(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)V

    :cond_7
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$1600(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$2000(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$1800(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Z

    move-result p1

    if-nez p1, :cond_b

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p1, v3}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$2102(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Z)Z

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object p1, p1, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->postTimeOutRunnable()V

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object p1, p1, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->showFingerprintPressed()V

    goto :goto_1

    :cond_8
    if-ne p1, v3, :cond_b

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p1, v2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$2102(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Z)Z

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p1, v2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$1502(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Z)Z

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p1, v2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$2202(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Z)Z

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {p1, v2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->updateTransparentIconLayoutParams(Z)V

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$1700(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$1600(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Z

    move-result p1

    if-nez p1, :cond_9

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$2400(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Landroid/view/WindowManager;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$2300(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Landroid/view/View;

    move-result-object v0

    invoke-interface {p1, v0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p1, v2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$1702(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Z)Z

    :cond_9
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object p1, p1, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->isPendingHideDialog()Z

    move-result p1

    if-nez p1, :cond_a

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object p1, p1, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->mFodDialogView:Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;

    invoke-virtual {p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintDialogView;->hideFingerprintPressed()V

    goto :goto_1

    :cond_a
    const-string p1, "block hide pressed when FOD animation is playing"

    invoke-static {v1, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_1
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$3;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-virtual {p0, p2}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->handleQLTouchEvent(Landroid/view/MotionEvent;)V

    return v3
.end method
