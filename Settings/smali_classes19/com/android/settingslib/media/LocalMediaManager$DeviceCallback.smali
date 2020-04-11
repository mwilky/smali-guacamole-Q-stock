.class public interface abstract Lcom/android/settingslib/media/LocalMediaManager$DeviceCallback;
.super Ljava/lang/Object;
.source "LocalMediaManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/media/LocalMediaManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "DeviceCallback"
.end annotation


# virtual methods
.method public abstract onDeviceListUpdate(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/media/MediaDevice;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onSelectedDeviceStateChanged(Lcom/android/settingslib/media/MediaDevice;I)V
.end method
