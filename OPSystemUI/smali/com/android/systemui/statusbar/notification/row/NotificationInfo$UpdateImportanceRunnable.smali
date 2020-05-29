.class Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;
.super Ljava/lang/Object;
.source "NotificationInfo.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/notification/row/NotificationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UpdateImportanceRunnable"
.end annotation


# instance fields
.field private final mAppUid:I

.field private mCancelInstantApp:Z

.field private final mChannelToUpdate:Landroid/app/NotificationChannel;

.field private final mContext:Landroid/content/Context;

.field private final mCurrentImportance:I

.field private final mINotificationManager:Landroid/app/INotificationManager;

.field private final mIsInstantApp:Z

.field private final mNewImportance:I

.field private final mPackageName:Ljava/lang/String;

.field private final mSbn:Landroid/service/notification/StatusBarNotification;


# direct methods
.method public constructor <init>(Landroid/app/INotificationManager;Ljava/lang/String;ILandroid/app/NotificationChannel;IILandroid/content/Context;Landroid/service/notification/StatusBarNotification;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;->mCancelInstantApp:Z

    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;->mContext:Landroid/content/Context;

    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;->mSbn:Landroid/service/notification/StatusBarNotification;

    iput-boolean p9, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;->mIsInstantApp:Z

    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;->mINotificationManager:Landroid/app/INotificationManager;

    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;->mPackageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;->mAppUid:I

    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    iput p5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;->mCurrentImportance:I

    iput p6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;->mNewImportance:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    const-string v0, "InfoGuts"

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    iget v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;->mNewImportance:I

    invoke-virtual {v1, v4}, Landroid/app/NotificationChannel;->setImportance(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Landroid/app/NotificationChannel;->lockFields(I)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;->mPackageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;->mAppUid:I

    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;->mChannelToUpdate:Landroid/app/NotificationChannel;

    invoke-interface {v1, v4, v5, v6}, Landroid/app/INotificationManager;->updateNotificationChannelForPackage(Ljava/lang/String;ILandroid/app/NotificationChannel;)V

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;->mINotificationManager:Landroid/app/INotificationManager;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;->mPackageName:Ljava/lang/String;

    iget v5, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;->mAppUid:I

    iget v6, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;->mNewImportance:I

    iget v7, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;->mCurrentImportance:I

    if-lt v6, v7, :cond_1

    move v6, v2

    goto :goto_0

    :cond_1
    move v6, v3

    :goto_0
    invoke-interface {v1, v4, v5, v6}, Landroid/app/INotificationManager;->setNotificationsEnabledWithImportanceLockForPackage(Ljava/lang/String;IZ)V

    :goto_1
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;->mIsInstantApp:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "small_app_package"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {}, Lcom/android/systemui/statusbar/notification/row/NotificationInfo;->access$000()Landroid/net/Uri;

    move-result-object v4

    invoke-static {v4, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_4

    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string v4, "notify"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    if-nez v4, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;->mCancelInstantApp:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_5

    :catchall_0
    move-exception p0

    goto :goto_4

    :catch_0
    move-exception v2

    :try_start_2
    const-string v3, "Fail to query data from Instant App base URI"

    invoke-static {v0, v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_5

    :goto_3
    :try_start_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_6

    :goto_4
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw p0

    :cond_4
    :goto_5
    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    :goto_6
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;->mCancelInstantApp:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getTag()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;->mSbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cancel Notification: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;->mINotificationManager:Landroid/app/INotificationManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotificationInfo$UpdateImportanceRunnable;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "-OPSystemUI"

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const/4 v4, -0x1

    invoke-interface {v3, p0, v1, v2, v4}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_7

    :catch_1
    move-exception p0

    const-string v1, "Unable to update notification importance"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    :goto_7
    return-void
.end method
