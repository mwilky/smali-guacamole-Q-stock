.class Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;
.super Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;
.source "ConfirmDeviceCredentialActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ConfirmDeviceCredentialActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-direct {p0}, Landroid/hardware/biometrics/BiometricPrompt$AuthenticationCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAuthenticationError(ILjava/lang/CharSequence;)V
    .locals 2
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$000(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Z

    move-result v0

    if-nez v0, :cond_3

    const/16 v0, 0xa

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$400(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V

    goto :goto_1

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$100(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$300(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Landroid/hardware/biometrics/BiometricManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {v1, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$200(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/hardware/biometrics/BiometricManager;->onConfirmDeviceCredentialError(ILjava/lang/String;)V

    :cond_2
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->finish()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onAuthenticationFailed()V
    .locals 2

    sget-object v0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->TAG:Ljava/lang/String;

    const-string v1, "onAuthenticationFailed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$400(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)V

    return-void
.end method

.method public onAuthenticationSucceeded(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$600(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Landroid/app/trust/TrustManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {v1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$500(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$700(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {v1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$800(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Landroid/os/UserManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {v2}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$500(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settings/password/ConfirmDeviceCredentialUtils;->reportSuccessfulAttempt(Lcom/android/internal/widget/LockPatternUtils;Landroid/os/UserManager;I)V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialUtils;->checkForPendingIntent(Landroid/app/Activity;)V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$100(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-static {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->access$300(Lcom/android/settings/password/ConfirmDeviceCredentialActivity;)Landroid/hardware/biometrics/BiometricManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/biometrics/BiometricManager;->onConfirmDeviceCredentialSuccess()V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->setResult(I)V

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialActivity;

    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialActivity;->finish()V

    return-void
.end method
