.class Lcom/android/systemui/SystemUIApplication$3$1;
.super Ljava/lang/Object;
.source "SystemUIApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SystemUIApplication$3;->onPluginConnected(Lcom/android/systemui/plugins/OverlayPlugin;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/SystemUIApplication$3;

.field final synthetic val$plugin:Lcom/android/systemui/plugins/OverlayPlugin;


# direct methods
.method constructor <init>(Lcom/android/systemui/SystemUIApplication$3;Lcom/android/systemui/plugins/OverlayPlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/SystemUIApplication$3$1;->this$1:Lcom/android/systemui/SystemUIApplication$3;

    iput-object p2, p0, Lcom/android/systemui/SystemUIApplication$3$1;->val$plugin:Lcom/android/systemui/plugins/OverlayPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication$3$1;->this$1:Lcom/android/systemui/SystemUIApplication$3;

    iget-object v0, v0, Lcom/android/systemui/SystemUIApplication$3;->this$0:Lcom/android/systemui/SystemUIApplication;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0, v1}, Lcom/android/systemui/SystemUIApplication;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/systemui/SystemUIApplication$3$1;->val$plugin:Lcom/android/systemui/plugins/OverlayPlugin;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getStatusBarWindow()Lcom/android/systemui/statusbar/phone/StatusBarWindowView;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getNavigationBarView()Lcom/android/systemui/statusbar/phone/NavigationBarView;

    move-result-object v0

    new-instance v3, Lcom/android/systemui/SystemUIApplication$3$Callback;

    iget-object v4, p0, Lcom/android/systemui/SystemUIApplication$3$1;->this$1:Lcom/android/systemui/SystemUIApplication$3;

    iget-object p0, p0, Lcom/android/systemui/SystemUIApplication$3$1;->val$plugin:Lcom/android/systemui/plugins/OverlayPlugin;

    invoke-direct {v3, v4, p0}, Lcom/android/systemui/SystemUIApplication$3$Callback;-><init>(Lcom/android/systemui/SystemUIApplication$3;Lcom/android/systemui/plugins/OverlayPlugin;)V

    invoke-interface {v1, v2, v0, v3}, Lcom/android/systemui/plugins/OverlayPlugin;->setup(Landroid/view/View;Landroid/view/View;Lcom/android/systemui/plugins/OverlayPlugin$Callback;)V

    :cond_0
    return-void
.end method
