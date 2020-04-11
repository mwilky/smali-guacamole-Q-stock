.class public Lcom/android/settingslib/media/InfoMediaDevice;
.super Lcom/android/settingslib/media/MediaDevice;
.source "InfoMediaDevice.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "InfoMediaDevice"


# instance fields
.field private mRouteInfo:Landroidx/mediarouter/media/MediaRouter$RouteInfo;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroidx/mediarouter/media/MediaRouter$RouteInfo;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/media/MediaDevice;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/android/settingslib/media/InfoMediaDevice;->mRouteInfo:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {p0}, Lcom/android/settingslib/media/InfoMediaDevice;->initDeviceRecord()V

    return-void
.end method


# virtual methods
.method public connect()Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/settingslib/media/InfoMediaDevice;->setConnectedRecord()V

    iget-object v0, p0, Lcom/android/settingslib/media/InfoMediaDevice;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    const-string v2, "This is cast device !"

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return v1
.end method

.method public disconnect()V
    .locals 0

    return-void
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 3

    iget-object v0, p0, Lcom/android/settingslib/media/InfoMediaDevice;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/media/InfoMediaDevice;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settingslib/R$drawable;->ic_media_device:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settingslib/media/InfoMediaDevice;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->buildBtRainbowDrawable(Landroid/content/Context;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/media/InfoMediaDevice;->mRouteInfo:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-static {v0}, Lcom/android/settingslib/media/MediaDeviceUtils;->getId(Landroidx/mediarouter/media/MediaRouter$RouteInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/settingslib/media/InfoMediaDevice;->mRouteInfo:Landroidx/mediarouter/media/MediaRouter$RouteInfo;

    invoke-virtual {v0}, Landroidx/mediarouter/media/MediaRouter$RouteInfo;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isConnected()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
