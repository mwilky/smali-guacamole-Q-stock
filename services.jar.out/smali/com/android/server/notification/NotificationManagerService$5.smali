.class Lcom/android/server/notification/NotificationManagerService$5;
.super Landroid/content/BroadcastReceiver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 36

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v20, 0x5

    const-string v9, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    const-string v10, "android.intent.action.DISTRACTING_PACKAGES_CHANGED"

    const-string v11, "android.intent.action.PACKAGES_UNSUSPENDED"

    const-string v12, "android.intent.action.PACKAGES_SUSPENDED"

    const-string v13, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    const-string v15, "android.intent.action.PACKAGE_RESTARTED"

    if-nez v9, :cond_4

    const-string v9, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move v4, v9

    if-nez v9, :cond_3

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    const-string v9, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move v5, v9

    if-nez v9, :cond_2

    const-string v9, "android.intent.action.QUERY_PACKAGE_RESTART"

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    move v0, v9

    if-nez v9, :cond_3

    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_3

    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_0

    :cond_1
    move/from16 v35, v4

    move/from16 v21, v5

    move/from16 v33, v8

    goto/16 :goto_e

    :cond_2
    move/from16 v21, v5

    move v5, v0

    goto :goto_1

    :cond_3
    :goto_0
    move/from16 v21, v5

    move v5, v0

    goto :goto_1

    :cond_4
    move/from16 v21, v5

    move v5, v0

    :goto_1
    const/4 v9, -0x1

    const-string v0, "android.intent.extra.user_handle"

    invoke-virtual {v2, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v9, 0x0

    if-eqz v4, :cond_5

    const-string v0, "android.intent.extra.REPLACING"

    invoke-virtual {v2, v0, v9}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    move v0, v9

    :goto_2
    move/from16 v33, v0

    sget-boolean v0, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    const-string v9, "NotificationService"

    if-eqz v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v35, v4

    const-string v4, "action="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " removing="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, v33

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v9, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_6
    move/from16 v35, v4

    move/from16 v4, v33

    :goto_3
    invoke-virtual {v3, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v13, "android.intent.extra.changed_uid_list"

    move/from16 v22, v6

    const-string v6, "android.intent.extra.changed_package_list"

    if-eqz v0, :cond_7

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v13}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v6

    move/from16 v33, v8

    const/4 v12, 0x0

    move v8, v7

    move/from16 v7, v22

    goto/16 :goto_8

    :cond_7
    invoke-virtual {v3, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v13}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v6

    const/4 v9, 0x0

    const/4 v7, 0x1

    move/from16 v33, v8

    const/4 v12, 0x0

    move v8, v7

    move v7, v9

    goto/16 :goto_8

    :cond_8
    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v13}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v6

    const/4 v9, 0x0

    const/4 v8, 0x1

    move/from16 v33, v8

    const/4 v12, 0x0

    move v8, v7

    move v7, v9

    goto/16 :goto_8

    :cond_9
    invoke-virtual {v3, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    nop

    const-string v0, "android.intent.extra.distraction_restrictions"

    const/4 v9, 0x0

    invoke-virtual {v2, v0, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    and-int/lit8 v9, v0, 0x2

    if-eqz v9, :cond_a

    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v13}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v9

    const/4 v10, 0x0

    const/4 v7, 0x1

    move-object v0, v6

    move-object v6, v9

    goto :goto_4

    :cond_a
    invoke-virtual {v2, v6}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v13}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v9

    const/4 v10, 0x0

    const/4 v8, 0x1

    move-object v0, v6

    move-object v6, v9

    :goto_4
    move/from16 v33, v8

    const/4 v12, 0x0

    move v8, v7

    move v7, v10

    goto/16 :goto_8

    :cond_b
    const-string v6, "android.intent.extra.UID"

    if-eqz v5, :cond_c

    const-string v0, "android.intent.extra.PACKAGES"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/4 v9, 0x1

    new-array v10, v9, [I

    const/4 v9, -0x1

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const/4 v9, 0x0

    aput v6, v10, v9

    move-object v6, v10

    move/from16 v33, v8

    const/4 v12, 0x0

    move v8, v7

    move/from16 v7, v22

    goto :goto_8

    :cond_c
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    if-nez v10, :cond_d

    return-void

    :cond_d
    invoke-virtual {v10}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v11

    if-nez v11, :cond_e

    return-void

    :cond_e
    if-eqz v21, :cond_12

    :try_start_0
    iget-object v0, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v0}, Lcom/android/server/notification/NotificationManagerService;->access$1400(Lcom/android/server/notification/NotificationManagerService;)Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v12, -0x1

    if-eq v14, v12, :cond_f

    move v12, v14

    goto :goto_5

    :cond_f
    const/4 v12, 0x0

    :goto_5
    invoke-interface {v0, v11, v12}, Landroid/content/pm/IPackageManager;->getApplicationEnabledSetting(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v9, 0x1

    if-eq v0, v9, :cond_10

    if-nez v0, :cond_11

    :cond_10
    const/4 v9, 0x0

    move/from16 v22, v9

    :cond_11
    :goto_6
    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_7

    :catch_1
    move-exception v0

    sget-boolean v12, Lcom/android/server/notification/NotificationManagerService;->DBG:Z

    if-eqz v12, :cond_11

    const-string v12, "Exception trying to look up app enabled setting"

    invoke-static {v9, v12, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    :cond_12
    :goto_7
    const/4 v9, 0x1

    new-array v0, v9, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v11, v0, v12

    new-array v13, v9, [I

    const/4 v9, -0x1

    invoke-virtual {v2, v6, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    aput v6, v13, v12

    move-object v6, v13

    move/from16 v33, v8

    move v8, v7

    move/from16 v7, v22

    :goto_8
    if-eqz v0, :cond_1a

    array-length v9, v0

    if-lez v9, :cond_1a

    array-length v13, v0

    move v11, v12

    :goto_9
    if-ge v11, v13, :cond_19

    aget-object v34, v0, v11

    if-eqz v7, :cond_16

    invoke-virtual {v3, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1500()I

    move-result v23

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1600()I

    move-result v24

    const/16 v26, 0x0

    const/16 v27, 0x0

    const/16 v28, 0x0

    if-nez v5, :cond_13

    const/16 v29, 0x1

    goto :goto_a

    :cond_13
    move/from16 v29, v12

    :goto_a
    const/16 v31, 0x14

    const/16 v32, 0x0

    move-object/from16 v22, v9

    move-object/from16 v25, v34

    move/from16 v30, v14

    invoke-virtual/range {v22 .. v32}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    move/from16 v27, v11

    move/from16 v26, v12

    move/from16 v28, v13

    move/from16 v29, v14

    move-object/from16 v30, v15

    const/16 v25, 0x1

    goto :goto_c

    :cond_14
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1500()I

    move-result v10

    invoke-static {}, Lcom/android/server/notification/NotificationManagerService;->access$1600()I

    move-result v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v22, 0x0

    if-nez v5, :cond_15

    const/16 v23, 0x1

    goto :goto_b

    :cond_15
    move/from16 v23, v12

    :goto_b
    const/16 v24, 0x0

    move/from16 v26, v12

    const/16 v25, 0x1

    move/from16 v27, v11

    move/from16 v11, v16

    move-object/from16 v12, v34

    move/from16 v28, v13

    move-object/from16 v13, v17

    move/from16 v29, v14

    move/from16 v14, v18

    move-object/from16 v30, v15

    move/from16 v15, v22

    move/from16 v16, v23

    move/from16 v17, v29

    move/from16 v18, v20

    move-object/from16 v19, v24

    invoke-virtual/range {v9 .. v19}, Lcom/android/server/notification/NotificationManagerService;->cancelAllNotificationsInt(IILjava/lang/String;Ljava/lang/String;IIZIILcom/android/server/notification/ManagedServices$ManagedServiceInfo;)V

    goto :goto_c

    :cond_16
    move/from16 v27, v11

    move/from16 v26, v12

    move/from16 v28, v13

    move/from16 v29, v14

    move-object/from16 v30, v15

    const/16 v25, 0x1

    if-eqz v8, :cond_17

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v9, v0}, Lcom/android/server/notification/NotificationManagerService;->hideNotificationsForPackages([Ljava/lang/String;)V

    goto :goto_c

    :cond_17
    if-eqz v33, :cond_18

    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v9, v0}, Lcom/android/server/notification/NotificationManagerService;->unhideNotificationsForPackages([Ljava/lang/String;)V

    :cond_18
    :goto_c
    add-int/lit8 v11, v27, 0x1

    move/from16 v12, v26

    move/from16 v13, v28

    move/from16 v14, v29

    move-object/from16 v15, v30

    goto/16 :goto_9

    :cond_19
    move/from16 v29, v14

    goto :goto_d

    :cond_1a
    move/from16 v29, v14

    :goto_d
    iget-object v9, v1, Lcom/android/server/notification/NotificationManagerService$5;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v9}, Lcom/android/server/notification/NotificationManagerService;->access$1700(Lcom/android/server/notification/NotificationManagerService;)Lcom/android/server/notification/NotificationManagerService$WorkerHandler;

    move-result-object v9

    move/from16 v10, v29

    invoke-virtual {v9, v4, v10, v0, v6}, Lcom/android/server/notification/NotificationManagerService$WorkerHandler;->scheduleOnPackageChanged(ZI[Ljava/lang/String;[I)V

    move v0, v5

    move v6, v7

    move v7, v8

    :goto_e
    return-void
.end method
