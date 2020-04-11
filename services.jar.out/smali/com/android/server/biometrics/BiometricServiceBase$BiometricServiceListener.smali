.class public abstract Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;
.super Ljava/lang/Object;
.source "BiometricServiceBase.java"

# interfaces
.implements Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/BiometricServiceBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "BiometricServiceListener"
.end annotation


# instance fields
.field private mWrapperReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

.field final synthetic this$0:Lcom/android/server/biometrics/BiometricServiceBase;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;->this$0:Lcom/android/server/biometrics/BiometricServiceBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;->mWrapperReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    return-void
.end method


# virtual methods
.method public getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;->mWrapperReceiver:Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    return-object v0
.end method

.method public onAuthenticationFailedInternal(IZ)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;->getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;->getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onAuthenticationFailed(IZ)V

    :cond_0
    return-void
.end method

.method public onAuthenticationSucceededInternal(Z[B)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;->getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/biometrics/BiometricServiceBase$BiometricServiceListener;->getWrapperReceiver()Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/hardware/biometrics/IBiometricServiceReceiverInternal;->onAuthenticationSucceeded(Z[B)V

    :cond_0
    return-void
.end method
