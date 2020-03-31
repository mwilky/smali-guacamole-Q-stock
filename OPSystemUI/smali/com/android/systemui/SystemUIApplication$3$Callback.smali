.class Lcom/android/systemui/SystemUIApplication$3$Callback;
.super Ljava/lang/Object;
.source "SystemUIApplication.java"

# interfaces
.implements Lcom/android/systemui/plugins/OverlayPlugin$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/SystemUIApplication$3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Callback"
.end annotation


# instance fields
.field private final mPlugin:Lcom/android/systemui/plugins/OverlayPlugin;

.field final synthetic this$1:Lcom/android/systemui/SystemUIApplication$3;


# direct methods
.method constructor <init>(Lcom/android/systemui/SystemUIApplication$3;Lcom/android/systemui/plugins/OverlayPlugin;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/SystemUIApplication$3$Callback;->this$1:Lcom/android/systemui/SystemUIApplication$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/SystemUIApplication$3$Callback;->mPlugin:Lcom/android/systemui/plugins/OverlayPlugin;

    return-void
.end method


# virtual methods
.method public onHoldStatusBarOpenChange()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication$3$Callback;->mPlugin:Lcom/android/systemui/plugins/OverlayPlugin;

    invoke-interface {v0}, Lcom/android/systemui/plugins/OverlayPlugin;->holdStatusBarOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication$3$Callback;->this$1:Lcom/android/systemui/SystemUIApplication$3;

    invoke-static {v0}, Lcom/android/systemui/SystemUIApplication$3;->access$400(Lcom/android/systemui/SystemUIApplication$3;)Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/SystemUIApplication$3$Callback;->mPlugin:Lcom/android/systemui/plugins/OverlayPlugin;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication$3$Callback;->this$1:Lcom/android/systemui/SystemUIApplication$3;

    invoke-static {v0}, Lcom/android/systemui/SystemUIApplication$3;->access$400(Lcom/android/systemui/SystemUIApplication$3;)Landroid/util/ArraySet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/SystemUIApplication$3$Callback;->mPlugin:Lcom/android/systemui/plugins/OverlayPlugin;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication$3$Callback;->this$1:Lcom/android/systemui/SystemUIApplication$3;

    iget-object v0, v0, Lcom/android/systemui/SystemUIApplication$3;->val$mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/SystemUIApplication$3$Callback$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/SystemUIApplication$3$Callback$1;-><init>(Lcom/android/systemui/SystemUIApplication$3$Callback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
