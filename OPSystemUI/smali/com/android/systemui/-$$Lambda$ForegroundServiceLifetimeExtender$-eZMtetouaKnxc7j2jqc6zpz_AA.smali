.class public final synthetic Lcom/android/systemui/-$$Lambda$ForegroundServiceLifetimeExtender$-eZMtetouaKnxc7j2jqc6zpz_AA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/ForegroundServiceLifetimeExtender;

.field private final synthetic f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/ForegroundServiceLifetimeExtender;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/-$$Lambda$ForegroundServiceLifetimeExtender$-eZMtetouaKnxc7j2jqc6zpz_AA;->f$0:Lcom/android/systemui/ForegroundServiceLifetimeExtender;

    iput-object p2, p0, Lcom/android/systemui/-$$Lambda$ForegroundServiceLifetimeExtender$-eZMtetouaKnxc7j2jqc6zpz_AA;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/-$$Lambda$ForegroundServiceLifetimeExtender$-eZMtetouaKnxc7j2jqc6zpz_AA;->f$0:Lcom/android/systemui/ForegroundServiceLifetimeExtender;

    iget-object p0, p0, Lcom/android/systemui/-$$Lambda$ForegroundServiceLifetimeExtender$-eZMtetouaKnxc7j2jqc6zpz_AA;->f$1:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v0, p0}, Lcom/android/systemui/ForegroundServiceLifetimeExtender;->lambda$setShouldManageLifetime$0$ForegroundServiceLifetimeExtender(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    return-void
.end method
