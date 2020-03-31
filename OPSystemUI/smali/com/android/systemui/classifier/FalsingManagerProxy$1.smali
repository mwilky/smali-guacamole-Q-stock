.class Lcom/android/systemui/classifier/FalsingManagerProxy$1;
.super Ljava/lang/Object;
.source "FalsingManagerProxy.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/classifier/FalsingManagerProxy;-><init>(Landroid/content/Context;Lcom/android/systemui/shared/plugins/PluginManager;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/FalsingPlugin;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/classifier/FalsingManagerProxy;

.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/systemui/classifier/FalsingManagerProxy;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingManagerProxy$1;->this$0:Lcom/android/systemui/classifier/FalsingManagerProxy;

    iput-object p2, p0, Lcom/android/systemui/classifier/FalsingManagerProxy$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPluginConnected(Lcom/android/systemui/plugins/FalsingPlugin;Landroid/content/Context;)V
    .locals 0

    invoke-interface {p1, p2}, Lcom/android/systemui/plugins/FalsingPlugin;->getFalsingManager(Landroid/content/Context;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p2, p0, Lcom/android/systemui/classifier/FalsingManagerProxy$1;->this$0:Lcom/android/systemui/classifier/FalsingManagerProxy;

    invoke-static {p2}, Lcom/android/systemui/classifier/FalsingManagerProxy;->access$000(Lcom/android/systemui/classifier/FalsingManagerProxy;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/systemui/plugins/FalsingManager;->cleanup()V

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy$1;->this$0:Lcom/android/systemui/classifier/FalsingManagerProxy;

    invoke-static {p0, p1}, Lcom/android/systemui/classifier/FalsingManagerProxy;->access$002(Lcom/android/systemui/classifier/FalsingManagerProxy;Lcom/android/systemui/plugins/FalsingManager;)Lcom/android/systemui/plugins/FalsingManager;

    :cond_0
    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/FalsingPlugin;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/classifier/FalsingManagerProxy$1;->onPluginConnected(Lcom/android/systemui/plugins/FalsingPlugin;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/FalsingPlugin;)V
    .locals 1

    iget-object p1, p0, Lcom/android/systemui/classifier/FalsingManagerProxy$1;->this$0:Lcom/android/systemui/classifier/FalsingManagerProxy;

    new-instance v0, Lcom/android/systemui/classifier/FalsingManagerImpl;

    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingManagerProxy$1;->val$context:Landroid/content/Context;

    invoke-direct {v0, p0}, Lcom/android/systemui/classifier/FalsingManagerImpl;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/android/systemui/classifier/FalsingManagerProxy;->access$002(Lcom/android/systemui/classifier/FalsingManagerProxy;Lcom/android/systemui/plugins/FalsingManager;)Lcom/android/systemui/plugins/FalsingManager;

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/FalsingPlugin;

    invoke-virtual {p0, p1}, Lcom/android/systemui/classifier/FalsingManagerProxy$1;->onPluginDisconnected(Lcom/android/systemui/plugins/FalsingPlugin;)V

    return-void
.end method
