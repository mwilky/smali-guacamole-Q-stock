.class Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$1;
.super Ljava/lang/Object;
.source "OpNotificationPanelView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView$1;->this$0:Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;

    invoke-static {p0}, Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;->access$000(Lcom/oneplus/systemui/statusbar/phone/OpNotificationPanelView;)Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/keyguard/OpKeyguardUpdateMonitor;->updateLaunchingCameraState(Z)V

    return-void
.end method
