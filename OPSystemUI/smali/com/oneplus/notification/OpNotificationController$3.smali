.class Lcom/oneplus/notification/OpNotificationController$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "OpNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/notification/OpNotificationController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/notification/OpNotificationController;


# direct methods
.method constructor <init>(Lcom/oneplus/notification/OpNotificationController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController$3;->this$0:Lcom/oneplus/notification/OpNotificationController;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onKeyguardVisibilityChanged(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController$3;->this$0:Lcom/oneplus/notification/OpNotificationController;

    invoke-static {p0, p1}, Lcom/oneplus/notification/OpNotificationController;->access$502(Lcom/oneplus/notification/OpNotificationController;Z)Z

    return-void
.end method

.method public onPhoneStateChanged(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController$3;->this$0:Lcom/oneplus/notification/OpNotificationController;

    invoke-static {p0, p1}, Lcom/oneplus/notification/OpNotificationController;->access$602(Lcom/oneplus/notification/OpNotificationController;I)I

    return-void
.end method

.method public onSystemReady()V
    .locals 3

    const-string v0, "OpNotificationController"

    const-string v1, "onSystemReady to register provider and OIMC"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationController$3;->this$0:Lcom/oneplus/notification/OpNotificationController;

    new-instance v1, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;-><init>(Lcom/oneplus/notification/OpNotificationController;Landroid/os/Handler;)V

    invoke-static {v0, v1}, Lcom/oneplus/notification/OpNotificationController;->access$302(Lcom/oneplus/notification/OpNotificationController;Lcom/oneplus/notification/OpNotificationController$SettingsObserver;)Lcom/oneplus/notification/OpNotificationController$SettingsObserver;

    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationController$3;->this$0:Lcom/oneplus/notification/OpNotificationController;

    invoke-static {v0}, Lcom/oneplus/notification/OpNotificationController;->access$300(Lcom/oneplus/notification/OpNotificationController;)Lcom/oneplus/notification/OpNotificationController$SettingsObserver;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->observe()V

    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationController$3;->this$0:Lcom/oneplus/notification/OpNotificationController;

    new-instance v1, Lcom/oneplus/notification/OpNotificationController$OimcObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, v0, v2}, Lcom/oneplus/notification/OpNotificationController$OimcObserver;-><init>(Lcom/oneplus/notification/OpNotificationController;Landroid/os/Handler;)V

    invoke-static {v0, v1}, Lcom/oneplus/notification/OpNotificationController;->access$402(Lcom/oneplus/notification/OpNotificationController;Lcom/oneplus/notification/OpNotificationController$OimcObserver;)Lcom/oneplus/notification/OpNotificationController$OimcObserver;

    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController$3;->this$0:Lcom/oneplus/notification/OpNotificationController;

    invoke-static {p0}, Lcom/oneplus/notification/OpNotificationController;->access$400(Lcom/oneplus/notification/OpNotificationController;)Lcom/oneplus/notification/OpNotificationController$OimcObserver;

    move-result-object p0

    invoke-virtual {p0}, Lcom/oneplus/notification/OpNotificationController$OimcObserver;->observe()V

    return-void
.end method
