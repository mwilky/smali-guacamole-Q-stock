.class public Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;
.super Ljava/lang/Object;
.source "NotificationBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NotificationsSentState"
.end annotation


# instance fields
.field public avgSentDaily:I

.field public avgSentWeekly:I

.field public instantApp:Z

.field public instantAppIcon:Landroid/graphics/drawable/Drawable;

.field public instantAppName:Ljava/lang/String;

.field public instantAppPKG:Ljava/lang/String;

.field public lastSent:J

.field public sentCount:I


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->avgSentDaily:I

    iput v0, p0, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->avgSentWeekly:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->lastSent:J

    iput v0, p0, Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;->sentCount:I

    return-void
.end method
