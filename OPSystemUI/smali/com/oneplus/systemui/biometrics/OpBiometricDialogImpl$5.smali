.class Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$5;
.super Landroid/database/ContentObserver;
.source "OpBiometricDialogImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$5;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$5;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    iget-object v0, p1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_quick_launch_apps"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$2602(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;Ljava/lang/String;)Ljava/lang/String;

    sget-boolean p1, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "op_quick_launch_apps change "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$5;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$2600(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "QuickLaunch"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$5;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$1000(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Lcom/oneplus/systemui/biometrics/OpQLRootView;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$5;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$2600(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$5;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$1000(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Lcom/oneplus/systemui/biometrics/OpQLRootView;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl$5;->this$0:Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;->access$2600(Lcom/oneplus/systemui/biometrics/OpBiometricDialogImpl;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/oneplus/systemui/biometrics/OpQLRootView;->setQLConfig(Ljava/lang/String;)V

    :cond_1
    return-void
.end method
