.class public final synthetic Lcom/android/systemui/statusbar/notification/-$$Lambda$InstantAppNotifier$-jG9Ev-YNY9H1cwQp_C5lfrjo3s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/notification/InstantAppNotifier;

.field private final synthetic f$1:Landroid/app/NotificationManager;

.field private final synthetic f$2:Landroid/content/pm/IPackageManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/InstantAppNotifier;Landroid/app/NotificationManager;Landroid/content/pm/IPackageManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$InstantAppNotifier$-jG9Ev-YNY9H1cwQp_C5lfrjo3s;->f$0:Lcom/android/systemui/statusbar/notification/InstantAppNotifier;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$InstantAppNotifier$-jG9Ev-YNY9H1cwQp_C5lfrjo3s;->f$1:Landroid/app/NotificationManager;

    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$InstantAppNotifier$-jG9Ev-YNY9H1cwQp_C5lfrjo3s;->f$2:Landroid/content/pm/IPackageManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$InstantAppNotifier$-jG9Ev-YNY9H1cwQp_C5lfrjo3s;->f$0:Lcom/android/systemui/statusbar/notification/InstantAppNotifier;

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$InstantAppNotifier$-jG9Ev-YNY9H1cwQp_C5lfrjo3s;->f$1:Landroid/app/NotificationManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/-$$Lambda$InstantAppNotifier$-jG9Ev-YNY9H1cwQp_C5lfrjo3s;->f$2:Landroid/content/pm/IPackageManager;

    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/statusbar/notification/InstantAppNotifier;->lambda$updateForegroundInstantApps$2$InstantAppNotifier(Landroid/app/NotificationManager;Landroid/content/pm/IPackageManager;)V

    return-void
.end method
