.class Lcom/android/settingslib/media/InfoMediaManager$MediaRouterCallback;
.super Landroidx/mediarouter/media/MediaRouter$Callback;
.source "InfoMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/media/InfoMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MediaRouterCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/media/InfoMediaManager;


# direct methods
.method constructor <init>(Lcom/android/settingslib/media/InfoMediaManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settingslib/media/InfoMediaManager$MediaRouterCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-direct {p0}, Landroidx/mediarouter/media/MediaRouter$Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRouteAdded(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/media/InfoMediaManager$MediaRouterCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-static {p2}, Lcom/android/settingslib/media/MediaDeviceUtils;->getId(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/media/InfoMediaManager;->findMediaDevice(Ljava/lang/String;)Lcom/android/settingslib/media/MediaDevice;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v1, Lcom/android/settingslib/media/InfoMediaDevice;

    iget-object v2, p0, Lcom/android/settingslib/media/InfoMediaManager$MediaRouterCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    iget-object v2, v2, Lcom/android/settingslib/media/InfoMediaManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p2}, Lcom/android/settingslib/media/InfoMediaDevice;-><init>(Landroid/content/Context;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V

    move-object v0, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRouteAdded() route : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InfoMediaManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settingslib/media/InfoMediaManager$MediaRouterCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    iget-object v1, v1, Lcom/android/settingslib/media/InfoMediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/settingslib/media/InfoMediaManager$MediaRouterCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/media/InfoMediaManager;->dispatchDeviceAdded(Lcom/android/settingslib/media/MediaDevice;)V

    :cond_0
    return-void
.end method

.method public onRouteRemoved(Landroidx/mediarouter/media/MediaRouter;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/media/InfoMediaManager$MediaRouterCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-static {p2}, Lcom/android/settingslib/media/MediaDeviceUtils;->getId(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/media/InfoMediaManager;->findMediaDevice(Ljava/lang/String;)Lcom/android/settingslib/media/MediaDevice;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRouteRemoved() route : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "InfoMediaManager"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/settingslib/media/InfoMediaManager$MediaRouterCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    iget-object v1, v1, Lcom/android/settingslib/media/InfoMediaManager;->mMediaDevices:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/settingslib/media/InfoMediaManager$MediaRouterCallback;->this$0:Lcom/android/settingslib/media/InfoMediaManager;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/media/InfoMediaManager;->dispatchDeviceRemoved(Lcom/android/settingslib/media/MediaDevice;)V

    :cond_0
    return-void
.end method
