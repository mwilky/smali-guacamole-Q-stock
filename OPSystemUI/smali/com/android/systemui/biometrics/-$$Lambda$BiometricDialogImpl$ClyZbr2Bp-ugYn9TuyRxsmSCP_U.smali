.class public final synthetic Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogImpl$ClyZbr2Bp-ugYn9TuyRxsmSCP_U;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/BiometricDialogImpl;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogImpl$ClyZbr2Bp-ugYn9TuyRxsmSCP_U;->f$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/biometrics/-$$Lambda$BiometricDialogImpl$ClyZbr2Bp-ugYn9TuyRxsmSCP_U;->f$0:Lcom/android/systemui/biometrics/BiometricDialogImpl;

    invoke-virtual {p0}, Lcom/android/systemui/biometrics/BiometricDialogImpl;->lambda$handleBiometricAuthenticated$0$BiometricDialogImpl()V

    return-void
.end method
