.class Lcom/android/systemui/SystemUIApplication$3$Callback$1;
.super Ljava/lang/Object;
.source "SystemUIApplication.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SystemUIApplication$3$Callback;->onHoldStatusBarOpenChange()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lcom/android/systemui/SystemUIApplication$3$Callback;


# direct methods
.method constructor <init>(Lcom/android/systemui/SystemUIApplication$3$Callback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/SystemUIApplication$3$Callback$1;->this$2:Lcom/android/systemui/SystemUIApplication$3$Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic lambda$run$0(ZLcom/android/systemui/plugins/OverlayPlugin;)V
    .locals 0

    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/OverlayPlugin;->setCollapseDesired(Z)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$run$1$SystemUIApplication$3$Callback$1(Z)V
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/SystemUIApplication$3$Callback$1;->this$2:Lcom/android/systemui/SystemUIApplication$3$Callback;

    iget-object p0, p0, Lcom/android/systemui/SystemUIApplication$3$Callback;->this$1:Lcom/android/systemui/SystemUIApplication$3;

    invoke-static {p0}, Lcom/android/systemui/SystemUIApplication$3;->access$400(Lcom/android/systemui/SystemUIApplication$3;)Landroid/util/ArraySet;

    move-result-object p0

    new-instance v0, Lcom/android/systemui/-$$Lambda$SystemUIApplication$3$Callback$1$BwolTXxR8lk33KXtnn_kk1xKxjQ;

    invoke-direct {v0, p1}, Lcom/android/systemui/-$$Lambda$SystemUIApplication$3$Callback$1$BwolTXxR8lk33KXtnn_kk1xKxjQ;-><init>(Z)V

    invoke-virtual {p0, v0}, Landroid/util/ArraySet;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public run()V
    .locals 2

    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    new-instance v1, Lcom/android/systemui/-$$Lambda$SystemUIApplication$3$Callback$1$sx3y3YDR9PfTcBFpqL5skj6JDUg;

    invoke-direct {v1, p0}, Lcom/android/systemui/-$$Lambda$SystemUIApplication$3$Callback$1$sx3y3YDR9PfTcBFpqL5skj6JDUg;-><init>(Lcom/android/systemui/SystemUIApplication$3$Callback$1;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;->setStateListener(Lcom/android/systemui/statusbar/phone/StatusBarWindowController$OtherwisedCollapsedListener;)V

    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowController;

    iget-object p0, p0, Lcom/android/systemui/SystemUIApplication$3$Callback$1;->this$2:Lcom/android/systemui/SystemUIApplication$3$Callback;

    iget-object p0, p0, Lcom/android/systemui/SystemUIApplication$3$Callback;->this$1:Lcom/android/systemui/SystemUIApplication$3;

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
