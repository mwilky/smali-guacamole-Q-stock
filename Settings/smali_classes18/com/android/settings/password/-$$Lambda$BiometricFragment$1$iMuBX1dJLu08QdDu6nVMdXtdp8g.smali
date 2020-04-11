.class public final synthetic Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$iMuBX1dJLu08QdDu6nVMdXtdp8g;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/password/BiometricFragment$1;

.field private final synthetic f$1:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/password/BiometricFragment$1;Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$iMuBX1dJLu08QdDu6nVMdXtdp8g;->f$0:Lcom/android/settings/password/BiometricFragment$1;

    iput-object p2, p0, Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$iMuBX1dJLu08QdDu6nVMdXtdp8g;->f$1:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$iMuBX1dJLu08QdDu6nVMdXtdp8g;->f$0:Lcom/android/settings/password/BiometricFragment$1;

    iget-object v1, p0, Lcom/android/settings/password/-$$Lambda$BiometricFragment$1$iMuBX1dJLu08QdDu6nVMdXtdp8g;->f$1:Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;

    invoke-virtual {v0, v1}, Lcom/android/settings/password/BiometricFragment$1;->lambda$onAuthenticationSucceeded$2$BiometricFragment$1(Landroid/hardware/biometrics/BiometricPrompt$AuthenticationResult;)V

    return-void
.end method
