.class Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$1;
.super Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback$Stub;
.source "ConfirmDeviceCredentialBaseActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;

    invoke-direct {p0}, Landroid/hardware/biometrics/IBiometricConfirmDeviceCredentialCallback$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity$1;->this$0:Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;

    invoke-virtual {v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseActivity;->finish()V

    return-void
.end method
