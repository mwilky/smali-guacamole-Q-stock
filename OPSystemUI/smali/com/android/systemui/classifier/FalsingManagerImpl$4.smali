.class Lcom/android/systemui/classifier/FalsingManagerImpl$4;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "FalsingManagerImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/classifier/FalsingManagerImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/classifier/FalsingManagerImpl;


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/FalsingManagerImpl;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManagerImpl$4;->this$0:Lcom/android/systemui/classifier/FalsingManagerImpl;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onBiometricAuthenticated(ILandroid/hardware/biometrics/BiometricSourceType;)V
    .locals 1

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-ne p1, v0, :cond_0

    sget-object p1, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    if-ne p2, p1, :cond_0

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerImpl$4;->this$0:Lcom/android/systemui/classifier/FalsingManagerImpl;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/systemui/classifier/FalsingManagerImpl;->access$402(Lcom/android/systemui/classifier/FalsingManagerImpl;Z)Z

    :cond_0
    return-void
.end method
