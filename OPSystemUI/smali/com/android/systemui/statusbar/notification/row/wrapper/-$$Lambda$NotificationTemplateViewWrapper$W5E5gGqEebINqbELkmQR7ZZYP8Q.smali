.class public final synthetic Lcom/android/systemui/statusbar/notification/row/wrapper/-$$Lambda$NotificationTemplateViewWrapper$W5E5gGqEebINqbELkmQR7ZZYP8Q;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;

.field private final synthetic f$1:Landroid/app/PendingIntent;

.field private final synthetic f$2:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;Landroid/app/PendingIntent;Ljava/lang/Runnable;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/-$$Lambda$NotificationTemplateViewWrapper$W5E5gGqEebINqbELkmQR7ZZYP8Q;->f$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/-$$Lambda$NotificationTemplateViewWrapper$W5E5gGqEebINqbELkmQR7ZZYP8Q;->f$1:Landroid/app/PendingIntent;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/-$$Lambda$NotificationTemplateViewWrapper$W5E5gGqEebINqbELkmQR7ZZYP8Q;->f$2:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/-$$Lambda$NotificationTemplateViewWrapper$W5E5gGqEebINqbELkmQR7ZZYP8Q;->f$0:Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/-$$Lambda$NotificationTemplateViewWrapper$W5E5gGqEebINqbELkmQR7ZZYP8Q;->f$1:Landroid/app/PendingIntent;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/wrapper/-$$Lambda$NotificationTemplateViewWrapper$W5E5gGqEebINqbELkmQR7ZZYP8Q;->f$2:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/row/wrapper/NotificationTemplateViewWrapper;->lambda$performOnPendingIntentCancellation$2$NotificationTemplateViewWrapper(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    return-void
.end method
