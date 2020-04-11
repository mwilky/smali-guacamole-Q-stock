.class public final synthetic Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$zU3AAvzpcXINxpr9vtX78ZWmBdM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;

.field private final synthetic f$1:Landroid/app/NotificationChannelGroup;

.field private final synthetic f$2:Lcom/android/settings/notification/NotificationBackend$AppRow;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;Landroid/app/NotificationChannelGroup;Lcom/android/settings/notification/NotificationBackend$AppRow;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$zU3AAvzpcXINxpr9vtX78ZWmBdM;->f$0:Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$zU3AAvzpcXINxpr9vtX78ZWmBdM;->f$1:Landroid/app/NotificationChannelGroup;

    iput-object p3, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$zU3AAvzpcXINxpr9vtX78ZWmBdM;->f$2:Lcom/android/settings/notification/NotificationBackend$AppRow;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$zU3AAvzpcXINxpr9vtX78ZWmBdM;->f$0:Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$zU3AAvzpcXINxpr9vtX78ZWmBdM;->f$1:Landroid/app/NotificationChannelGroup;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/-$$Lambda$NotificationChannelSlice$zU3AAvzpcXINxpr9vtX78ZWmBdM;->f$2:Lcom/android/settings/notification/NotificationBackend$AppRow;

    check-cast p1, Landroid/app/NotificationChannel;

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;->lambda$getDisplayableChannels$1$NotificationChannelSlice(Landroid/app/NotificationChannelGroup;Lcom/android/settings/notification/NotificationBackend$AppRow;Landroid/app/NotificationChannel;)Z

    move-result p1

    return p1
.end method
