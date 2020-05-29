.class Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OpFodFingerTouchValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onScreenTurnedOff()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->access$002(Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;Z)Z

    return-void
.end method

.method public onStartedWakingUp()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;->access$002(Lcom/oneplus/systemui/biometrics/OpFodFingerTouchValidator;Z)Z

    return-void
.end method
