.class public Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;
.super Landroid/content/BroadcastReceiver;
.source "OPUninstallFinish.java"


# static fields
.field static final EXTRA_APP_LABEL:Ljava/lang/String; = "com.android.packageinstaller.extra.APP_LABEL"

.field static final EXTRA_UNINSTALL_ID:Ljava/lang/String; = "com.android.packageinstaller.extra.UNINSTALL_ID"

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final UNINSTALL_FAILURE_CHANNEL:Ljava/lang/String; = "uninstall failure"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private addDeviceManagerButton(Landroid/content/Context;Landroid/app/Notification$Builder;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Notification$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.Settings$DeviceAdminSettingsActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/app/Notification$Action$Builder;

    const v2, 0x7f0804ef

    invoke-static {p1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    const v3, 0x7f120a15

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {p1, v4, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    return-void
.end method

.method private addManageUsersButton(Landroid/content/Context;Landroid/app/Notification$Builder;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/app/Notification$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.USER_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x50000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/app/Notification$Action$Builder;

    const v2, 0x7f080352

    invoke-static {p1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v2

    const v3, 0x7f120a1d

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/high16 v5, 0x8000000

    invoke-static {p1, v4, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {v1, v2, v3, v4}, Landroid/app/Notification$Action$Builder;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v1}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    return-void
.end method

.method private isProfileOfOrSame(Landroid/os/UserManager;II)Z
    .locals 3
    .param p1    # Landroid/os/UserManager;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p2, p3, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1, p3}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    if-eqz v1, :cond_1

    iget v2, v1, Landroid/content/pm/UserInfo;->id:I

    if-ne v2, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private notifyPackageRemoved(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "oneplus.settings.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package_name"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x11000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setBigText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)V
    .locals 1
    .param p1    # Landroid/app/Notification$Builder;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/CharSequence;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    new-instance v0, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v0}, Landroid/app/Notification$BigTextStyle;-><init>()V

    invoke-virtual {v0, p2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 23

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const/4 v4, 0x0

    const-string v0, "android.content.pm.extra.STATUS"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    sget-object v0, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->LOG_TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Uninstall finished extras="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    if-ne v5, v0, :cond_0

    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_0
    const-string v0, "com.android.packageinstaller.extra.UNINSTALL_ID"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string v0, "com.android.packageinstaller.applicationInfo"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v7, v0

    check-cast v7, Landroid/content/pm/ApplicationInfo;

    const-string v0, "com.android.packageinstaller.extra.APP_LABEL"

    invoke-virtual {v3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v0, "android.intent.extra.UNINSTALL_ALL_USERS"

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v9

    const-class v0, Landroid/app/NotificationManager;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v10, v0

    check-cast v10, Landroid/app/NotificationManager;

    const-class v0, Landroid/os/UserManager;

    invoke-virtual {v2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Landroid/os/UserManager;

    new-instance v0, Landroid/app/NotificationChannel;

    const v12, 0x7f1216a6

    invoke-virtual {v2, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x3

    const-string v14, "uninstall failure"

    invoke-direct {v0, v14, v12, v13}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    move-object v12, v0

    invoke-virtual {v10, v12}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, v2, v14}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v13, v0

    if-eqz v5, :cond_e

    const/4 v0, 0x2

    const-string v15, " with code "

    const-string v14, "Uninstall failed for "

    if-eq v5, v0, :cond_1

    sget-object v0, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v19, v6

    move-object/from16 v22, v10

    move-object/from16 v17, v12

    goto/16 :goto_9

    :cond_1
    const-string v0, "android.content.pm.extra.LEGACY_STATUS"

    move-object/from16 v17, v12

    const/4 v4, 0x0

    invoke-virtual {v3, v0, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v12

    const/4 v0, -0x4

    const-string v4, "Failed to talk to package manager"

    if-eq v12, v0, :cond_7

    const/4 v0, -0x2

    if-eq v12, v0, :cond_2

    sget-object v0, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Uninstall blocked for "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " with legacy code "

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v19, v6

    move-object/from16 v22, v10

    goto/16 :goto_9

    :cond_2
    nop

    const-string v0, "device_policy"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/admin/IDevicePolicyManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/admin/IDevicePolicyManager;

    move-result-object v14

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v15

    const/16 v18, 0x0

    invoke-virtual {v11}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/content/pm/UserInfo;

    iget v0, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {v1, v11, v15, v0}, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->isProfileOfOrSame(Landroid/os/UserManager;II)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object/from16 v3, p2

    goto :goto_0

    :cond_3
    :try_start_0
    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    move/from16 v20, v12

    :try_start_1
    iget v12, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v14, v0, v12}, Landroid/app/admin/IDevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;I)Z

    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v0, :cond_4

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    goto :goto_3

    :cond_4
    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v0

    move/from16 v20, v12

    :goto_1
    sget-object v12, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->LOG_TAG:Ljava/lang/String;

    invoke-static {v12, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    move-object/from16 v3, p2

    move/from16 v12, v20

    goto :goto_0

    :cond_5
    move/from16 v20, v12

    move-object/from16 v0, v18

    :goto_3
    const-string v3, "Uninstall failed because "

    if-nez v0, :cond_6

    sget-object v4, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is a device admin"

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {v1, v2, v13}, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->addDeviceManagerButton(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    const v3, 0x7f1216a3

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v13, v3}, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->setBigText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)V

    move/from16 v19, v6

    move-object/from16 v22, v10

    goto/16 :goto_9

    :cond_6
    sget-object v4, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->LOG_TAG:Ljava/lang/String;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is a device admin of user "

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v3, 0x7f1216a4

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    new-array v12, v4, [Ljava/lang/Object;

    iget-object v4, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    const/16 v16, 0x0

    aput-object v4, v12, v16

    invoke-static {v3, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v13, v3}, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->setBigText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)V

    move/from16 v19, v6

    move-object/from16 v22, v10

    goto/16 :goto_9

    :cond_7
    move/from16 v20, v12

    const-string v0, "package"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    move-result-object v3

    invoke-virtual {v11}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v12

    const/16 v18, -0x2710

    const/4 v0, 0x0

    move/from16 v19, v6

    move v6, v0

    :goto_4
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-ge v6, v0, :cond_9

    invoke-interface {v12, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v21, v12

    move-object v12, v0

    check-cast v12, Landroid/content/pm/UserInfo;

    :try_start_2
    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    move-object/from16 v22, v10

    :try_start_3
    iget v10, v12, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v3, v0, v10}, Landroid/content/pm/IPackageManager;->getBlockUninstallForUser(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, v12, Landroid/content/pm/UserInfo;->id:I
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    move/from16 v18, v0

    goto :goto_7

    :cond_8
    goto :goto_6

    :catch_2
    move-exception v0

    goto :goto_5

    :catch_3
    move-exception v0

    move-object/from16 v22, v10

    :goto_5
    sget-object v10, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->LOG_TAG:Ljava/lang/String;

    invoke-static {v10, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_6
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v12, v21

    move-object/from16 v10, v22

    goto :goto_4

    :cond_9
    move-object/from16 v22, v10

    move-object/from16 v21, v12

    move/from16 v0, v18

    :goto_7
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-direct {v1, v11, v4, v0}, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->isProfileOfOrSame(Landroid/os/UserManager;II)Z

    move-result v6

    if-eqz v6, :cond_a

    invoke-direct {v1, v2, v13}, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->addDeviceManagerButton(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    goto :goto_8

    :cond_a
    invoke-direct {v1, v2, v13}, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->addManageUsersButton(Landroid/content/Context;Landroid/app/Notification$Builder;)V

    :goto_8
    const/16 v6, -0x2710

    if-ne v0, v6, :cond_b

    sget-object v6, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->LOG_TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, " no blocking user"

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_9

    :cond_b
    if-nez v0, :cond_c

    const v6, 0x7f12169c

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v13, v6}, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->setBigText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_c
    if-eqz v9, :cond_d

    const v6, 0x7f121696

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v13, v6}, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->setBigText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)V

    goto :goto_9

    :cond_d
    const v6, 0x7f12169d

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v13, v6}, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->setBigText(Landroid/app/Notification$Builder;Ljava/lang/CharSequence;)V

    nop

    :goto_9
    const v0, 0x7f1216a2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v8, v3, v4

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    invoke-virtual {v13, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    const v0, 0x7f0804cf

    invoke-virtual {v13, v0}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    invoke-virtual {v13}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    move/from16 v3, v19

    move-object/from16 v4, v22

    invoke-virtual {v4, v3, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_e
    move v3, v6

    move-object v4, v10

    move-object/from16 v17, v12

    invoke-virtual {v4, v3}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v2, v0}, Lcom/oneplus/settings/packageuninstaller/OPUninstallFinish;->notifyPackageRemoved(Landroid/content/Context;Ljava/lang/String;)V

    iget v0, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    const v6, 0x5f48170

    if-lt v0, v6, :cond_f

    iget-object v0, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v7, Landroid/content/pm/ApplicationInfo;->uid:I

    const/4 v10, 0x1

    invoke-static {v2, v0, v6, v10}, Lcom/oneplus/settings/utils/OPUtils;->notifyMultiPackageRemoved(Landroid/content/Context;Ljava/lang/String;IZ)V

    goto :goto_a

    :cond_f
    const/4 v10, 0x1

    :goto_a
    const v0, 0x7f1216a0

    new-array v6, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v8, v6, v12

    invoke-virtual {v2, v0, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v10}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method
