.class Lcom/android/systemui/SystemUIApplication$3;
.super Ljava/lang/Object;
.source "SystemUIApplication.java"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/SystemUIApplication;->startServicesIfNeeded([Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SystemUIApplication$3$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/systemui/plugins/PluginListener<",
        "Lcom/android/systemui/plugins/OverlayPlugin;",
        ">;"
    }
.end annotation


# instance fields
.field private mOverlays:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/systemui/plugins/OverlayPlugin;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/systemui/SystemUIApplication;

.field final synthetic val$mainHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/systemui/SystemUIApplication;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/SystemUIApplication$3;->this$0:Lcom/android/systemui/SystemUIApplication;

    iput-object p2, p0, Lcom/android/systemui/SystemUIApplication$3;->val$mainHandler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/SystemUIApplication$3;->mOverlays:Landroid/util/ArraySet;

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/SystemUIApplication$3;)Landroid/util/ArraySet;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/SystemUIApplication$3;->mOverlays:Landroid/util/ArraySet;

    return-object p0
.end method


# virtual methods
.method public onPluginConnected(Lcom/android/systemui/plugins/OverlayPlugin;Landroid/content/Context;)V
    .locals 1

    iget-object p2, p0, Lcom/android/systemui/SystemUIApplication$3;->val$mainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/SystemUIApplication$3$1;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/SystemUIApplication$3$1;-><init>(Lcom/android/systemui/SystemUIApplication$3;Lcom/android/systemui/plugins/OverlayPlugin;)V

    invoke-virtual {p2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/OverlayPlugin;

    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/SystemUIApplication$3;->onPluginConnected(Lcom/android/systemui/plugins/OverlayPlugin;Landroid/content/Context;)V

    return-void
.end method

.method public onPluginDisconnected(Lcom/android/systemui/plugins/OverlayPlugin;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/SystemUIApplication$3;->val$mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/SystemUIApplication$3$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/SystemUIApplication$3$2;-><init>(Lcom/android/systemui/SystemUIApplication$3;Lcom/android/systemui/plugins/OverlayPlugin;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public bridge synthetic onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/plugins/OverlayPlugin;

    invoke-virtual {p0, p1}, Lcom/android/systemui/SystemUIApplication$3;->onPluginDisconnected(Lcom/android/systemui/plugins/OverlayPlugin;)V

    return-void
.end method
