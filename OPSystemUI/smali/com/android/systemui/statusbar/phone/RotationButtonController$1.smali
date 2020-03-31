.class Lcom/android/systemui/statusbar/phone/RotationButtonController$1;
.super Landroid/view/IRotationWatcher$Stub;
.source "RotationButtonController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/RotationButtonController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/RotationButtonController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/RotationButtonController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController$1;->this$0:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    invoke-direct {p0}, Landroid/view/IRotationWatcher$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onRotationChanged$0$RotationButtonController$1(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController$1;->this$0:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->access$200(Lcom/android/systemui/statusbar/phone/RotationButtonController;)Lcom/android/systemui/statusbar/policy/RotationLockController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/RotationLockController;->isRotationLocked()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController$1;->this$0:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->access$300(Lcom/android/systemui/statusbar/phone/RotationButtonController;I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController$1;->this$0:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->setRotationLockedAtAngle(I)V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController$1;->this$0:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->setRotateSuggestionButtonState(ZZ)V

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController$1;->this$0:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->access$400(Lcom/android/systemui/statusbar/phone/RotationButtonController;)Ljava/util/function/Consumer;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController$1;->this$0:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->access$400(Lcom/android/systemui/statusbar/phone/RotationButtonController;)Ljava/util/function/Consumer;

    move-result-object p0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    :cond_2
    return-void
.end method

.method public onRotationChanged(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/RotationButtonController$1;->this$0:Lcom/android/systemui/statusbar/phone/RotationButtonController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/RotationButtonController;->access$100(Lcom/android/systemui/statusbar/phone/RotationButtonController;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/phone/-$$Lambda$RotationButtonController$1$wNXXdlqLeBk1NR5FrlGSJawDu0I;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/phone/-$$Lambda$RotationButtonController$1$wNXXdlqLeBk1NR5FrlGSJawDu0I;-><init>(Lcom/android/systemui/statusbar/phone/RotationButtonController$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->postAtFrontOfQueue(Ljava/lang/Runnable;)Z

    return-void
.end method
