.class Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp$1;
.super Landroid/database/ContentObserver;
.source "OPQuickTurnOnAssistantApp.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final gestureUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;Landroid/os/Handler;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp$1;->this$0:Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "camera_double_tap_power_gesture_disabled"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp$1;->gestureUri:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp$1;->gestureUri:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp$1;->this$0:Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;

    invoke-static {v0}, Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;->access$000(Lcom/oneplus/settings/gestures/OPQuickTurnOnAssistantApp;)V

    :cond_0
    return-void
.end method
