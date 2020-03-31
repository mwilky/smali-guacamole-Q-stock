.class public final synthetic Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$OjTZipKiRzOnJVuWnYuZIfR5DJ0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/NotificationListener;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Landroid/service/notification/NotificationListenerService$RankingMap;

.field private final synthetic f$3:I


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationListener;Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$OjTZipKiRzOnJVuWnYuZIfR5DJ0;->f$0:Lcom/android/systemui/statusbar/NotificationListener;

    iput-object p2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$OjTZipKiRzOnJVuWnYuZIfR5DJ0;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$OjTZipKiRzOnJVuWnYuZIfR5DJ0;->f$2:Landroid/service/notification/NotificationListenerService$RankingMap;

    iput p4, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$OjTZipKiRzOnJVuWnYuZIfR5DJ0;->f$3:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$OjTZipKiRzOnJVuWnYuZIfR5DJ0;->f$0:Lcom/android/systemui/statusbar/NotificationListener;

    iget-object v1, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$OjTZipKiRzOnJVuWnYuZIfR5DJ0;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$OjTZipKiRzOnJVuWnYuZIfR5DJ0;->f$2:Landroid/service/notification/NotificationListenerService$RankingMap;

    iget p0, p0, Lcom/android/systemui/statusbar/-$$Lambda$NotificationListener$OjTZipKiRzOnJVuWnYuZIfR5DJ0;->f$3:I

    invoke-virtual {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/NotificationListener;->lambda$onNotificationRemoved$2$NotificationListener(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$RankingMap;I)V

    return-void
.end method
