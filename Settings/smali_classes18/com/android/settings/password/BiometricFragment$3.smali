.class Lcom/android/settings/password/BiometricFragment$3;
.super Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback$Stub;
.source "BiometricFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/BiometricFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/BiometricFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/password/BiometricFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/BiometricFragment$3;->this$0:Lcom/android/settings/password/BiometricFragment;

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/password/BiometricFragment$3;->this$0:Lcom/android/settings/password/BiometricFragment;

    invoke-virtual {v0}, Lcom/android/settings/password/BiometricFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_0
    const-string v1, "ConfirmDeviceCredential/BiometricFragment"

    const-string v2, "Activity null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
