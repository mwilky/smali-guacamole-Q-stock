.class Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$NotificationChannelState;
.super Ljava/lang/Object;
.source "NotificationChannelSlice.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NotificationChannelState"
.end annotation


# instance fields
.field private final mNotificationChannel:Landroid/app/NotificationChannel;

.field private final mNotificationsSentState:Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;Landroid/app/NotificationChannel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$NotificationChannelState;->mNotificationsSentState:Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$NotificationChannelState;->mNotificationChannel:Landroid/app/NotificationChannel;

    return-void
.end method


# virtual methods
.method public getNotificationChannel()Landroid/app/NotificationChannel;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$NotificationChannelState;->mNotificationChannel:Landroid/app/NotificationChannel;

    return-object v0
.end method

.method public getNotificationsSentState()Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationChannelSlice$NotificationChannelState;->mNotificationsSentState:Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

    return-object v0
.end method
