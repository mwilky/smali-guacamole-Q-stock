.class Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView$1;
.super Landroid/os/Handler;
.source "OpFingerprintAnimationView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;->access$000(Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;)Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;->access$000(Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;)Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;

    move-result-object p0

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationCtrl;->playAnimation(I)V

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView$1;->this$0:Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpFingerprintAnimationView;->stopAnimation()V

    :cond_2
    :goto_0
    return-void
.end method
