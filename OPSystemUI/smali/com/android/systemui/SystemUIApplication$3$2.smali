.class Lcom/android/systemui/SystemUIApplication$3$2;
.super Ljava/lang/Object;
.source "SystemUIApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SystemUIApplication$3;->onPluginDisconnected(Lcom/android/systemui/plugins/OverlayPlugin;)V
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

    iput-object p1, p0, Lcom/android/systemui/SystemUIApplication$3$2;->this$1:Lcom/android/systemui/SystemUIApplication$3;

    iput-object p2, p0, Lcom/android/systemui/SystemUIApplication$3$2;->val$plugin:Lcom/android/systemui/plugins/OverlayPlugin;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication$3$2;->this$1:Lcom/android/systemui/SystemUIApplication$3;

    invoke-static {v0}, Lcom/android/systemui/SystemUIApplication$3;->access$400(Lcom/android/systemui/SystemUIApplication$3;)Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/SystemUIApplication$3$2;->val$plugin:Lcom/android/systemui/plugins/OverlayPlugin;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    iget-object p0, p0, Lcom/android/systemui/SystemUIApplication$3$2;->this$1:Lcom/android/systemui/SystemUIApplication$3;

    invoke-static {p0}, Lcom/android/systemui/SystemUIApplication$3;->access$400(Lcom/android/systemui/SystemUIApplication$3;)Landroid/util/ArraySet;

    move-result-object p0

    invoke-virtual {p0}, Landroid/util/ArraySet;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setForcePluginOpen(Z)V

    return-void
.end method
