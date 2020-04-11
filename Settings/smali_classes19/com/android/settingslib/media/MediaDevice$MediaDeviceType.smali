.class public interface abstract annotation Lcom/android/settingslib/media/MediaDevice$MediaDeviceType;
.super Ljava/lang/Object;
.source "MediaDevice.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/media/MediaDevice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2609
    name = "MediaDeviceType"
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation


# static fields
.field public static final TYPE_BLUETOOTH_DEVICE:I = 0x3

.field public static final TYPE_CAST_DEVICE:I = 0x2

.field public static final TYPE_PHONE_DEVICE:I = 0x1
