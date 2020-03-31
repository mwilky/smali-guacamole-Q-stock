.class Lcom/oneplus/anim/OpCameraAnimateController$MotorStateChangedCallback;
.super Lcom/oneplus/android/os/IOpMotorStateChangedCallback$Stub;
.source "OpCameraAnimateController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/anim/OpCameraAnimateController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotorStateChangedCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/anim/OpCameraAnimateController;


# direct methods
.method private constructor <init>(Lcom/oneplus/anim/OpCameraAnimateController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/anim/OpCameraAnimateController$MotorStateChangedCallback;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    invoke-direct {p0}, Lcom/oneplus/android/os/IOpMotorStateChangedCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/anim/OpCameraAnimateController;Lcom/oneplus/anim/OpCameraAnimateController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/anim/OpCameraAnimateController$MotorStateChangedCallback;-><init>(Lcom/oneplus/anim/OpCameraAnimateController;)V

    return-void
.end method


# virtual methods
.method public onMotorStateChanged(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMotorStateChanged state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpCameraAnimateController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/anim/OpCameraAnimateController$MotorStateChangedCallback;->this$0:Lcom/oneplus/anim/OpCameraAnimateController;

    invoke-static {p0}, Lcom/oneplus/anim/OpCameraAnimateController;->access$100(Lcom/oneplus/anim/OpCameraAnimateController;)Lcom/oneplus/anim/OpGraphLight;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/anim/OpGraphLight;->postShow()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    if-eq p1, p0, :cond_1

    const/16 p0, -0xa

    if-ne p1, p0, :cond_3

    :cond_1
    const/4 p0, 0x0

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getFacelockController()Lcom/oneplus/faceunlock/OpFacelockController;

    move-result-object p0

    :cond_2
    if-eqz p0, :cond_3

    invoke-virtual {p0, p1}, Lcom/oneplus/faceunlock/OpFacelockController;->onMotorStateChanged(I)V

    :cond_3
    :goto_0
    return-void
.end method
