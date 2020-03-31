.class public Lcom/oneplus/worklife/OPWLBHelper;
.super Ljava/lang/Object;
.source "OPWLBHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/worklife/OPWLBHelper$IWLBModeChangeListener;
    }
.end annotation


# static fields
.field private static sOpwlbHelper:Lcom/oneplus/worklife/OPWLBHelper;


# instance fields
.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCurrentMode:I

.field private mHandler:Landroid/os/Handler;

.field private mLastWifiConnected:Z

.field private mMediaNotificationKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mSettingsObserver:Landroid/database/ContentObserver;

.field private mWLBModeChangeListener:Lcom/oneplus/worklife/OPWLBHelper$IWLBModeChangeListener;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mMediaNotificationKeys:Ljava/util/Set;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mCurrentMode:I

    new-instance v0, Lcom/oneplus/worklife/OPWLBHelper$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/worklife/OPWLBHelper$1;-><init>(Lcom/oneplus/worklife/OPWLBHelper;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    new-instance v0, Lcom/oneplus/worklife/OPWLBHelper$2;

    invoke-direct {v0, p0}, Lcom/oneplus/worklife/OPWLBHelper$2;-><init>(Lcom/oneplus/worklife/OPWLBHelper;)V

    iput-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    iget-object p1, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AppOpsManager;

    iput-object p1, p0, Lcom/oneplus/worklife/OPWLBHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    iget-object p1, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/worklife/OPWLBHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Lcom/oneplus/worklife/OPWLBHelper;->readCurrentMode()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/worklife/OPWLBHelper;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mCurrentMode:I

    return p0
.end method

.method static synthetic access$100(Lcom/oneplus/worklife/OPWLBHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/worklife/OPWLBHelper;->readCurrentMode()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/worklife/OPWLBHelper;)Lcom/oneplus/worklife/OPWLBHelper$IWLBModeChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mWLBModeChangeListener:Lcom/oneplus/worklife/OPWLBHelper$IWLBModeChangeListener;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/worklife/OPWLBHelper;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/worklife/OPWLBHelper;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/worklife/OPWLBHelper;
    .locals 1

    sget-object v0, Lcom/oneplus/worklife/OPWLBHelper;->sOpwlbHelper:Lcom/oneplus/worklife/OPWLBHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/worklife/OPWLBHelper;

    invoke-direct {v0, p0}, Lcom/oneplus/worklife/OPWLBHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/worklife/OPWLBHelper;->sOpwlbHelper:Lcom/oneplus/worklife/OPWLBHelper;

    :cond_0
    sget-object p0, Lcom/oneplus/worklife/OPWLBHelper;->sOpwlbHelper:Lcom/oneplus/worklife/OPWLBHelper;

    return-object p0
.end method

.method private readCurrentMode()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_wlb_activated_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mCurrentMode:I

    return-void
.end method

.method private sendConnectedBroadcast(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "wificonnected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPSystemUIWLBHelper"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.intent.ACTION_WIFI_CONNECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oneplus.opwlb"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "is_connected"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public isApplicationBlocked(Landroid/service/notification/StatusBarNotification;)Z
    .locals 8

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1}, Lcom/oneplus/worklife/OPWLBHelper;->isMediaNotificationAllowed(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "packageName "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mCurrentMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/worklife/OPWLBHelper;->mCurrentMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isMediaAllowed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPSystemUIWLBHelper"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_4

    iget v3, p0, Lcom/oneplus/worklife/OPWLBHelper;->mCurrentMode:I

    if-eqz v3, :cond_4

    if-eqz p1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/4 p1, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/oneplus/worklife/OPWLBHelper;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v4, 0x80

    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v3

    const-string v4, "Couldn\'t find package"

    invoke-static {v2, v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    if-nez p1, :cond_1

    return v1

    :cond_1
    iget v3, p0, Lcom/oneplus/worklife/OPWLBHelper;->mCurrentMode:I

    const/4 v4, 0x2

    const-string v5, "isApplicationBlocked "

    const/4 v6, 0x1

    const-string v7, " "

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/oneplus/worklife/OPWLBHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v4, 0x3f1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4, p1, v0}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mCurrentMode:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_2

    move v1, v6

    :cond_2
    return v1

    :cond_3
    if-ne v3, v6, :cond_4

    iget-object v3, p0, Lcom/oneplus/worklife/OPWLBHelper;->mAppOpsManager:Landroid/app/AppOpsManager;

    const/16 v4, 0x3f0

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v3, v4, p1, v0}, Landroid/app/AppOpsManager;->checkOpNoThrow(IILjava/lang/String;)I

    move-result p1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mCurrentMode:I

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_4

    move v1, v6

    :cond_4
    :goto_1
    return v1
.end method

.method public isMediaNotificationAllowed(Landroid/service/notification/StatusBarNotification;)Z
    .locals 4

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mNotificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->getMediaNotificationKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPSystemUIWLBHelper"

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Added Media Notification Key :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mMediaNotificationKeys:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_0
    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mMediaNotificationKeys:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Allowed Media Notification Key :"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public processWifiConnectivity(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mLastWifiConnected:Z

    if-eq v0, p1, :cond_0

    invoke-direct {p0, p1}, Lcom/oneplus/worklife/OPWLBHelper;->sendConnectedBroadcast(Z)V

    iput-boolean p1, p0, Lcom/oneplus/worklife/OPWLBHelper;->mLastWifiConnected:Z

    :cond_0
    return-void
.end method

.method public registerChanges(Lcom/oneplus/worklife/OPWLBHelper$IWLBModeChangeListener;)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_wlb_activated_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/worklife/OPWLBHelper;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "com.oneplus.wlb.intent.ACTION_RELOAD_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oneplus.intent.action_DISABLE_WLB_FEATURE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/worklife/OPWLBHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/worklife/OPWLBHelper;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-object p1, p0, Lcom/oneplus/worklife/OPWLBHelper;->mWLBModeChangeListener:Lcom/oneplus/worklife/OPWLBHelper$IWLBModeChangeListener;

    return-void
.end method

.method public removeNotificationKey(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mMediaNotificationKeys:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/worklife/OPWLBHelper;->mMediaNotificationKeys:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public setNotificationMediaManager(Lcom/android/systemui/statusbar/NotificationMediaManager;)V
    .locals 0

    if-eqz p1, :cond_0

    iput-object p1, p0, Lcom/oneplus/worklife/OPWLBHelper;->mNotificationMediaManager:Lcom/android/systemui/statusbar/NotificationMediaManager;

    :cond_0
    return-void
.end method
