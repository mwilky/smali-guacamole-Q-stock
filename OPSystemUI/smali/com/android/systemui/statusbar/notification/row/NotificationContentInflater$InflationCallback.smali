.class public interface abstract Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater$InflationCallback;
.super Ljava/lang/Object;
.source "NotificationContentInflater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/NotificationContentInflater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "InflationCallback"
.end annotation


# virtual methods
.method public abstract handleInflationException(Landroid/service/notification/StatusBarNotification;Ljava/lang/Exception;)V
.end method

.method public abstract onAsyncInflationFinished(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;I)V
.end method
