.class Lcom/android/settings/homepage/contextualcards/slices/NotificationMultiChannelAppRow;
.super Ljava/lang/Object;
.source "NotificationMultiChannelAppRow.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/android/settings/notification/NotificationBackend$AppRow;",
        ">;"
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

.field private final mPackageInfo:Landroid/content/pm/PackageInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/notification/NotificationBackend;Landroid/content/pm/PackageInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationMultiChannelAppRow;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationMultiChannelAppRow;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iput-object p3, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationMultiChannelAppRow;->mPackageInfo:Landroid/content/pm/PackageInfo;

    return-void
.end method


# virtual methods
.method public call()Lcom/android/settings/notification/NotificationBackend$AppRow;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationMultiChannelAppRow;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationMultiChannelAppRow;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationMultiChannelAppRow;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/NotificationBackend;->getChannelCount(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationMultiChannelAppRow;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    iget-object v2, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationMultiChannelAppRow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationMultiChannelAppRow;->mContext:Landroid/content/Context;

    const-class v5, Landroid/app/role/RoleManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/role/RoleManager;

    iget-object v5, p0, Lcom/android/settings/homepage/contextualcards/slices/NotificationMultiChannelAppRow;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/android/settings/notification/NotificationBackend;->loadAppRow(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/app/role/RoleManager;Landroid/content/pm/PackageInfo;)Lcom/android/settings/notification/NotificationBackend$AppRow;

    move-result-object v1

    return-object v1

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/settings/homepage/contextualcards/slices/NotificationMultiChannelAppRow;->call()Lcom/android/settings/notification/NotificationBackend$AppRow;

    move-result-object v0

    return-object v0
.end method
