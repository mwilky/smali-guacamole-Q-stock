.class final Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;
.super Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;
.source "FaceService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/biometrics/face/FaceService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "FaceAuthClient"
.end annotation


# instance fields
.field private mLastAcquire:I

.field final synthetic this$0:Lcom/android/server/biometrics/face/FaceService;


# direct methods
.method public constructor <init>(Lcom/android/server/biometrics/face/FaceService;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-direct/range {p0 .. p15}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;-><init>(Lcom/android/server/biometrics/BiometricServiceBase;Landroid/content/Context;Lcom/android/server/biometrics/BiometricServiceBase$DaemonWrapper;JLandroid/os/IBinder;Lcom/android/server/biometrics/BiometricServiceBase$ServiceListener;IIJZLjava/lang/String;IZ)V

    return-void
.end method


# virtual methods
.method public getAcquireIgnorelist()[I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->isBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$000(Lcom/android/server/biometrics/face/FaceService;)[I

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$100(Lcom/android/server/biometrics/face/FaceService;)[I

    move-result-object v0

    return-object v0
.end method

.method public getAcquireVendorIgnorelist()[I
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->isBiometricPrompt()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$200(Lcom/android/server/biometrics/face/FaceService;)[I

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-static {v0}, Lcom/android/server/biometrics/face/FaceService;->access$300(Lcom/android/server/biometrics/face/FaceService;)[I

    move-result-object v0

    return-object v0
.end method

.method public onAcquired(II)Z
    .locals 12

    iput p1, p0, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->mLastAcquire:I

    const/16 v0, 0xd

    if-ne p1, v0, :cond_0

    nop

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x1040284

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    nop

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x1040285

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    nop

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1040283

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.settings.FACE_SETTINGS"

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v4, "com.android.settings"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v10, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v7, v3

    invoke-static/range {v5 .. v10}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v4

    const-string v5, "FaceService"

    nop

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->getContext()Landroid/content/Context;

    move-result-object v6

    const-class v7, Landroid/app/NotificationManager;

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/NotificationManager;

    new-instance v7, Landroid/app/NotificationChannel;

    const/4 v8, 0x4

    const-string v9, "FaceService"

    invoke-direct {v7, v9, v0, v8}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    new-instance v8, Landroid/app/Notification$Builder;

    invoke-virtual {p0}, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-direct {v8, v10, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v9, 0x10803ae

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v0}, Landroid/app/Notification$Builder;->setSubText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v8

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setOnlyAlertOnce(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setLocalOnly(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v8

    const-string/jumbo v9, "sys"

    invoke-virtual {v8, v9}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-virtual {v8}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v8

    invoke-virtual {v6, v7}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v9, v10, v8, v11}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->onAcquired(II)Z

    move-result v0

    return v0
.end method

.method public onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;",
            "Z",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;)Z"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Lcom/android/server/biometrics/BiometricServiceBase$AuthenticationClientImpl;->onAuthenticated(Landroid/hardware/biometrics/BiometricAuthenticator$Identifier;ZLjava/util/ArrayList;)Z

    move-result v0

    if-nez v0, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public shouldFrameworkHandleLockout()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected statsModality()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->this$0:Lcom/android/server/biometrics/face/FaceService;

    invoke-virtual {v0}, Lcom/android/server/biometrics/face/FaceService;->statsModality()I

    move-result v0

    return v0
.end method

.method public wasUserDetected()Z
    .locals 2

    iget v0, p0, Lcom/android/server/biometrics/face/FaceService$FaceAuthClient;->mLastAcquire:I

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
