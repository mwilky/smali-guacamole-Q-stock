.class public interface abstract Lcom/android/systemui/statusbar/notification/collection/NotificationRowBinder;
.super Ljava/lang/Object;
.source "NotificationRowBinder.java"


# virtual methods
.method public abstract inflateViews(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Runnable;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/statusbar/notification/InflationException;
        }
    .end annotation
.end method

.method public abstract onNotificationRankingUpdated(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Integer;Lcom/android/systemui/statusbar/NotificationUiAdjustment;Lcom/android/systemui/statusbar/NotificationUiAdjustment;)V
.end method
