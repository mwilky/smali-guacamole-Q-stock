.class public Lcom/oneplus/notification/OpNotificationController;
.super Ljava/lang/Object;
.source "OpNotificationController.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/notification/OpNotificationController$OimcObserver;,
        Lcom/oneplus/notification/OpNotificationController$SettingsObserver;
    }
.end annotation


# static fields
.field private static final DRIVING_MODE_STATE_URI:Landroid/net/Uri;

.field private static final ESPORTS_MODE_ENABLED:Landroid/net/Uri;

.field private static final GAME_MODE_3RD_PARTY_CALLS_UID_URI:Landroid/net/Uri;

.field private static final GAME_MODE_BLOCK_HEADS_UP_URI:Landroid/net/Uri;

.field private static final LIFETIME_EXTENSION_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OP_DEBUG:Z

.field private static final OP_OIMC_FUNC_DISABLE_HEADSUP_BRICK_URI:Landroid/net/Uri;

.field private static final OP_OIMC_FUNC_DISABLE_HEADSUP_URI:Landroid/net/Uri;

.field private static final OP_QUICKREPLY_IM_LIST_URI:Landroid/net/Uri;

.field private static final PRIORITY_LIST_BRICK_MODE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIORITY_LIST_DRIVING_MODE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIORITY_LIST_GAME_MODE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PRIVACY_ALERT_OPS:[I

.field private static final SYSTEM_APP_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAppOpsActiveCallback:Lcom/android/internal/app/IAppOpsActiveCallback;

.field private mAppOpsService:Lcom/android/internal/app/IAppOpsService;

.field private mBlockedByBrick:Z

.field private mBlockedByDriving:Z

.field private mBlockedByGame:Z

.field private final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field private mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field private final mContext:Landroid/content/Context;

.field private final mDockedListener:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mDockedStackExists:Z

.field private mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

.field private mEsportsModeOn:Z

.field private mGameMode3rdPartyCallsUid:Ljava/lang/String;

.field private mGameModeNotifyType:I

.field private mIsFreeForm:Z

.field private mIsKeyguardShowing:Z

.field private final mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

.field private mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mNoMan:Landroid/app/NotificationManager;

.field private final mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

.field private mOimcObserver:Lcom/oneplus/notification/OpNotificationController$OimcObserver;

.field private mOrientation:I

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPhoneState:I

.field private mPrivacyAlertList:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mPrivacyGroupCount:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mQuickReplyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsObserver:Lcom/oneplus/notification/OpNotificationController$SettingsObserver;

.field private mSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

.field private mTopActivity:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    const-string v0, "com.android.incallui"

    const-string v1, "com.android.dialer"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    sput-object v2, Lcom/oneplus/notification/OpNotificationController;->PRIORITY_LIST_BRICK_MODE:Ljava/util/List;

    const-string v2, "com.oneplus.deskclock"

    filled-new-array {v2, v1}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/oneplus/notification/OpNotificationController;->PRIORITY_LIST_DRIVING_MODE:Ljava/util/List;

    filled-new-array {v0, v2, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oneplus/notification/OpNotificationController;->PRIORITY_LIST_GAME_MODE:Ljava/util/List;

    const-string v0, "com.whatsapp"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oneplus/notification/OpNotificationController;->LIFETIME_EXTENSION_LIST:Ljava/util/List;

    const-string v0, "com.oneplus.soundrecorder"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/oneplus/notification/OpNotificationController;->SYSTEM_APP_LIST:Ljava/util/List;

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/oneplus/notification/OpNotificationController;->PRIVACY_ALERT_OPS:[I

    const-string v0, "driving_mode_state"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/notification/OpNotificationController;->DRIVING_MODE_STATE_URI:Landroid/net/Uri;

    const-string v0, "esport_mode_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/notification/OpNotificationController;->ESPORTS_MODE_ENABLED:Landroid/net/Uri;

    const-string v0, "game_mode_block_notification"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/notification/OpNotificationController;->GAME_MODE_BLOCK_HEADS_UP_URI:Landroid/net/Uri;

    const-string v0, "game_mode_notifications_3rd_calls_uid"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/notification/OpNotificationController;->GAME_MODE_3RD_PARTY_CALLS_UID_URI:Landroid/net/Uri;

    const-string v0, "op_oimc_func_disable_headsup"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/notification/OpNotificationController;->OP_OIMC_FUNC_DISABLE_HEADSUP_URI:Landroid/net/Uri;

    const-string v0, "op_oimc_func_disable_headsup_breath"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/notification/OpNotificationController;->OP_OIMC_FUNC_DISABLE_HEADSUP_BRICK_URI:Landroid/net/Uri;

    const-string v0, "op_quickreply_im_list"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/oneplus/notification/OpNotificationController;->OP_QUICKREPLY_IM_LIST_URI:Landroid/net/Uri;

    return-void

    nop

    :array_0
    .array-data 4
        0x1a
        0x1b
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iput v0, p0, Lcom/oneplus/notification/OpNotificationController;->mOrientation:I

    iput-boolean v0, p0, Lcom/oneplus/notification/OpNotificationController;->mDockedStackExists:Z

    new-instance v2, Lcom/oneplus/notification/OpNotificationController$1;

    invoke-direct {v2, p0}, Lcom/oneplus/notification/OpNotificationController$1;-><init>(Lcom/oneplus/notification/OpNotificationController;)V

    iput-object v2, p0, Lcom/oneplus/notification/OpNotificationController;->mDockedListener:Ljava/util/function/Consumer;

    iput-boolean v0, p0, Lcom/oneplus/notification/OpNotificationController;->mBlockedByBrick:Z

    iput-boolean v0, p0, Lcom/oneplus/notification/OpNotificationController;->mBlockedByDriving:Z

    iput-boolean v0, p0, Lcom/oneplus/notification/OpNotificationController;->mBlockedByGame:Z

    iput-boolean v0, p0, Lcom/oneplus/notification/OpNotificationController;->mEsportsModeOn:Z

    iput v0, p0, Lcom/oneplus/notification/OpNotificationController;->mGameModeNotifyType:I

    const-string v2, "-1"

    iput-object v2, p0, Lcom/oneplus/notification/OpNotificationController;->mGameMode3rdPartyCallsUid:Ljava/lang/String;

    new-array v2, v0, [Ljava/lang/String;

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/notification/OpNotificationController;->mQuickReplyList:Ljava/util/List;

    iput-boolean v0, p0, Lcom/oneplus/notification/OpNotificationController;->mIsFreeForm:Z

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/oneplus/notification/OpNotificationController;->mPrivacyGroupCount:Ljava/util/HashMap;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lcom/oneplus/notification/OpNotificationController;->mPrivacyAlertList:Ljava/util/HashMap;

    new-instance v2, Lcom/oneplus/notification/OpNotificationController$3;

    invoke-direct {v2, p0}, Lcom/oneplus/notification/OpNotificationController$3;-><init>(Lcom/oneplus/notification/OpNotificationController;)V

    iput-object v2, p0, Lcom/oneplus/notification/OpNotificationController;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/systemui/statusbar/CommandQueue;

    invoke-static {p1, v2}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/CommandQueue;

    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    const-class p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    iget-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mConfigurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mDockedListener:Ljava/util/function/Consumer;

    invoke-static {p1}, Lcom/android/systemui/DockedStackExistsListener;->register(Ljava/util/function/Consumer;)V

    iget-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object p1

    iget-object v2, p0, Lcom/oneplus/notification/OpNotificationController;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {p1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    const-class p1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    new-instance p1, Lcom/oneplus/core/oimc/OIMCServiceManager;

    invoke-direct {p1}, Lcom/oneplus/core/oimc/OIMCServiceManager;-><init>()V

    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    new-instance p1, Lcom/oneplus/util/notification/SimpleHeadsUpController;

    iget-object v2, p0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Lcom/oneplus/util/notification/SimpleHeadsUpController;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    const-string p1, "appops"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/app/IAppOpsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IAppOpsService;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    new-instance p1, Lcom/oneplus/notification/OpNotificationController$2;

    invoke-direct {p1, p0}, Lcom/oneplus/notification/OpNotificationController$2;-><init>(Lcom/oneplus/notification/OpNotificationController;)V

    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mAppOpsActiveCallback:Lcom/android/internal/app/IAppOpsActiveCallback;

    :try_start_0
    iget-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mAppOpsService:Lcom/android/internal/app/IAppOpsService;

    sget-object v2, Lcom/oneplus/notification/OpNotificationController;->PRIVACY_ALERT_OPS:[I

    iget-object v3, p0, Lcom/oneplus/notification/OpNotificationController;->mAppOpsActiveCallback:Lcom/android/internal/app/IAppOpsActiveCallback;

    invoke-interface {p1, v2, v3}, Lcom/android/internal/app/IAppOpsService;->startWatchingActive([ILcom/android/internal/app/IAppOpsActiveCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AppOpsService: startWatchingMode fail: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "OpNotificationController"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    const-string v2, "notification"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mNoMan:Landroid/app/NotificationManager;

    iget-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    const v2, 0x50d0071

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    new-instance v2, Landroid/app/NotificationChannel;

    const/4 v3, 0x3

    const-string v4, "privacy_alert"

    invoke-direct {v2, v4, p1, v3}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    const/4 p1, 0x1

    invoke-virtual {v2, p1}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    invoke-virtual {v2, v0}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    const/4 p1, 0x0

    invoke-virtual {v2, p1, p1}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    invoke-virtual {v2, v0}, Landroid/app/NotificationChannel;->enableLights(Z)V

    iget-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mNoMan:Landroid/app/NotificationManager;

    invoke-virtual {p1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    iget-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mPrivacyGroupCount:Ljava/util/HashMap;

    const-string v0, "PrivacyAlertGroupCamera"

    invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mPrivacyGroupCount:Ljava/util/HashMap;

    const-string p1, "PrivacyAlertGroupMicrophone"

    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/notification/OpNotificationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/notification/OpNotificationController;->mDockedStackExists:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/notification/OpNotificationController;ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/notification/OpNotificationController;->preparePrivacyAlertNotification(ILjava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1000()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/oneplus/notification/OpNotificationController;->ESPORTS_MODE_ENABLED:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1100()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/oneplus/notification/OpNotificationController;->GAME_MODE_BLOCK_HEADS_UP_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1200()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/oneplus/notification/OpNotificationController;->GAME_MODE_3RD_PARTY_CALLS_UID_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oneplus/notification/OpNotificationController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/notification/OpNotificationController;->mBlockedByDriving:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/oneplus/notification/OpNotificationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/notification/OpNotificationController;->mBlockedByDriving:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/oneplus/notification/OpNotificationController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/notification/OpNotificationController;->mEsportsModeOn:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/oneplus/notification/OpNotificationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/notification/OpNotificationController;->mEsportsModeOn:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/oneplus/notification/OpNotificationController;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/notification/OpNotificationController;->mGameModeNotifyType:I

    return p0
.end method

.method static synthetic access$1502(Lcom/oneplus/notification/OpNotificationController;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/notification/OpNotificationController;->mGameModeNotifyType:I

    return p1
.end method

.method static synthetic access$1600(Lcom/oneplus/notification/OpNotificationController;)Lcom/oneplus/core/oimc/OIMCServiceManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mOIMCServiceManager:Lcom/oneplus/core/oimc/OIMCServiceManager;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/oneplus/notification/OpNotificationController;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mGameMode3rdPartyCallsUid:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1702(Lcom/oneplus/notification/OpNotificationController;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mGameMode3rdPartyCallsUid:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1800()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/oneplus/notification/OpNotificationController;Ljava/util/List;)Ljava/util/List;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mQuickReplyList:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/notification/OpNotificationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/notification/OpNotificationController;->cancelPrivacyAlertIfNeeded()V

    return-void
.end method

.method static synthetic access$2000()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/oneplus/notification/OpNotificationController;->OP_OIMC_FUNC_DISABLE_HEADSUP_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2100()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/oneplus/notification/OpNotificationController;->OP_OIMC_FUNC_DISABLE_HEADSUP_BRICK_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/oneplus/notification/OpNotificationController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/notification/OpNotificationController;->mBlockedByBrick:Z

    return p0
.end method

.method static synthetic access$2202(Lcom/oneplus/notification/OpNotificationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/notification/OpNotificationController;->mBlockedByBrick:Z

    return p1
.end method

.method static synthetic access$2300(Lcom/oneplus/notification/OpNotificationController;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/notification/OpNotificationController;->mBlockedByGame:Z

    return p0
.end method

.method static synthetic access$2302(Lcom/oneplus/notification/OpNotificationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/notification/OpNotificationController;->mBlockedByGame:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/notification/OpNotificationController;)Lcom/oneplus/notification/OpNotificationController$SettingsObserver;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mSettingsObserver:Lcom/oneplus/notification/OpNotificationController$SettingsObserver;

    return-object p0
.end method

.method static synthetic access$302(Lcom/oneplus/notification/OpNotificationController;Lcom/oneplus/notification/OpNotificationController$SettingsObserver;)Lcom/oneplus/notification/OpNotificationController$SettingsObserver;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mSettingsObserver:Lcom/oneplus/notification/OpNotificationController$SettingsObserver;

    return-object p1
.end method

.method static synthetic access$400(Lcom/oneplus/notification/OpNotificationController;)Lcom/oneplus/notification/OpNotificationController$OimcObserver;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mOimcObserver:Lcom/oneplus/notification/OpNotificationController$OimcObserver;

    return-object p0
.end method

.method static synthetic access$402(Lcom/oneplus/notification/OpNotificationController;Lcom/oneplus/notification/OpNotificationController$OimcObserver;)Lcom/oneplus/notification/OpNotificationController$OimcObserver;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mOimcObserver:Lcom/oneplus/notification/OpNotificationController$OimcObserver;

    return-object p1
.end method

.method static synthetic access$502(Lcom/oneplus/notification/OpNotificationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/notification/OpNotificationController;->mIsKeyguardShowing:Z

    return p1
.end method

.method static synthetic access$602(Lcom/oneplus/notification/OpNotificationController;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/notification/OpNotificationController;->mPhoneState:I

    return p1
.end method

.method static synthetic access$700(Lcom/oneplus/notification/OpNotificationController;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$800()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/oneplus/notification/OpNotificationController;->OP_QUICKREPLY_IM_LIST_URI:Landroid/net/Uri;

    return-object v0
.end method

.method static synthetic access$900()Landroid/net/Uri;
    .locals 1

    sget-object v0, Lcom/oneplus/notification/OpNotificationController;->DRIVING_MODE_STATE_URI:Landroid/net/Uri;

    return-object v0
.end method

.method private blockedByBrickMode(Ljava/lang/String;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/notification/OpNotificationController;->mBlockedByBrick:Z

    if-eqz p0, :cond_0

    sget-object p0, Lcom/oneplus/notification/OpNotificationController;->PRIORITY_LIST_BRICK_MODE:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private blockedByDrivingMode(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oneplus/notification/OpNotificationController;->mBlockedByDriving:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    sget-object v1, Lcom/oneplus/notification/OpNotificationController;->PRIORITY_LIST_DRIVING_MODE:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/oneplus/notification/OpNotificationController;->mIsKeyguardShowing:Z

    if-eqz p0, :cond_0

    return v2

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 p1, 0x1

    if-eqz p0, :cond_1

    const-string v0, "oneplus.shouldPeekInCarMode"

    invoke-virtual {p0, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/2addr p0, p1

    return p0

    :cond_1
    return p1

    :cond_2
    return v2
.end method

.method private blockedByEsportsMode(Landroid/service/notification/StatusBarNotification;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/notification/OpNotificationController;->mEsportsModeOn:Z

    if-eqz p0, :cond_0

    invoke-static {p1}, Lcom/oneplus/android/scene/OnePlusSceneCallBlockManagerInjector;->isNotificationMutedByESport(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private blockedByGameMode(Landroid/service/notification/StatusBarNotification;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/oneplus/notification/OpNotificationController;->PRIORITY_LIST_GAME_MODE:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->category:Ljava/lang/String;

    const-string v2, "call"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    sget-boolean v0, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mBlockedByGame: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/notification/OpNotificationController;->mBlockedByGame:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/notification/OpNotificationController;->mGameModeNotifyType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OpNotificationController"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/notification/OpNotificationController;->mBlockedByGame:Z

    if-eqz v0, :cond_4

    iget p0, p0, Lcom/oneplus/notification/OpNotificationController;->mGameModeNotifyType:I

    if-eqz p0, :cond_4

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const/4 p1, 0x1

    if-eqz p0, :cond_3

    const-string v0, "oneplus.shouldPeekInGameMode"

    invoke-virtual {p0, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    xor-int/2addr p0, p1

    return p0

    :cond_3
    return p1

    :cond_4
    return v1
.end method

.method private blockedByGameMode3rdPartyCall(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mGameMode3rdPartyCallsUid:Ljava/lang/String;

    if-eqz p0, :cond_0

    const-string v0, "-1"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    sget-object p0, Lcom/oneplus/notification/OpNotificationController;->PRIORITY_LIST_GAME_MODE:Ljava/util/List;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private blockedByReadingMode()Z
    .locals 5

    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const/4 v2, 0x0

    const-string v3, "reading_mode_status"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_1

    :cond_0
    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "reading_mode_block_notification"

    invoke-static {p0, v0, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v3, :cond_1

    return v3

    :cond_1
    return v2
.end method

.method private cancelPrivacyAlert(Ljava/lang/String;I)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cancelPrivacyAlert, tag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", privacyType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpNotificationController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mNoMan:Landroid/app/NotificationManager;

    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, p1, p2, v0}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    return-void
.end method

.method private cancelPrivacyAlertIfNeeded()V
    .locals 8

    sget-boolean v0, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    const-string v1, "PrivacyAlertGroupMicrophone"

    const-string v2, "PrivacyAlertGroupCamera"

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "cancelPrivacyAlertIfNeeded, size of mPrivacyAlertList: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/notification/OpNotificationController;->mPrivacyAlertList:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mPrivacyGroupCount(Camera): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/notification/OpNotificationController;->mPrivacyGroupCount:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", mPrivacyGroupCount(Microphone): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/notification/OpNotificationController;->mPrivacyGroupCount:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "OpNotificationController"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationController;->mPrivacyAlertList:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    if-eqz v3, :cond_1

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    and-int/lit8 v7, v3, 0x1

    if-nez v7, :cond_2

    invoke-direct {p0, v6, v5}, Lcom/oneplus/notification/OpNotificationController;->cancelPrivacyAlert(Ljava/lang/String;I)V

    :cond_2
    and-int/lit8 v5, v3, 0x2

    if-nez v5, :cond_3

    invoke-direct {p0, v6, v4}, Lcom/oneplus/notification/OpNotificationController;->cancelPrivacyAlert(Ljava/lang/String;I)V

    :cond_3
    if-nez v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/notification/OpNotificationController;->mPrivacyAlertList:Ljava/util/HashMap;

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationController;->mPrivacyGroupCount:Ljava/util/HashMap;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const-string v2, "PrivacyAlertSummary"

    if-nez v0, :cond_5

    invoke-direct {p0, v2, v5}, Lcom/oneplus/notification/OpNotificationController;->cancelPrivacyAlert(Ljava/lang/String;I)V

    :cond_5
    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationController;->mPrivacyGroupCount:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_6

    invoke-direct {p0, v2, v4}, Lcom/oneplus/notification/OpNotificationController;->cancelPrivacyAlert(Ljava/lang/String;I)V

    :cond_6
    return-void
.end method

.method private getAppIcon(Landroid/service/notification/StatusBarNotification;)Landroid/graphics/Bitmap;
    .locals 5

    const-string v0, "OpNotificationController"

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    :try_start_0
    iget-object v2, p0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Quick Reply: Get package fail, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$NameNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Notification;->getSmallIcon()Landroid/graphics/drawable/Icon;

    move-result-object p1

    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    goto :goto_1

    :cond_0
    sget-object v1, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    :goto_1
    invoke-static {p1, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    invoke-virtual {p0, v3, v3, p1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_2

    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Quick Reply: Cannot resolve application icon, pkg: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_2
    return-object v1
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0

    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to find app name for "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpNotificationController"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method

.method private isSystemApp(Ljava/lang/String;)Z
    .locals 1

    :try_start_0
    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mPackageManager:Landroid/content/pm/PackageManager;

    const/16 v0, 0x40

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "OpNotificationController"

    const-string p1, "cacheIsSystemNotification: Could not find package info"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private preparePrivacyAlertNotification(ILjava/lang/String;Z)V
    .locals 14

    move-object v7, p0

    move v0, p1

    move-object/from16 v8, p2

    invoke-direct {p0, v8}, Lcom/oneplus/notification/OpNotificationController;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x1a

    const v3, 0x50d0072

    const v4, 0x50d0073

    const/4 v5, 0x2

    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    if-eq v0, v2, :cond_1

    const/16 v2, 0x1b

    if-eq v0, v2, :cond_0

    move-object v5, v6

    move-object v11, v5

    move-object v12, v11

    move v2, v9

    move v4, v2

    goto :goto_0

    :cond_0
    iget-object v0, v7, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->privacy_type_microphone:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v0, Lcom/android/systemui/R$drawable;->privacy_alert_icon_microphone:I

    iget-object v2, v7, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    new-array v11, v5, [Ljava/lang/Object;

    aput-object v1, v11, v9

    aput-object v6, v11, v10

    invoke-virtual {v2, v4, v11}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PrivacyAlertGroupMicrophone"

    move v4, v0

    move-object v12, v2

    move-object v11, v3

    move v2, v5

    move-object v5, v1

    goto :goto_0

    :cond_1
    iget-object v0, v7, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/systemui/R$string;->privacy_type_camera:I

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    sget v0, Lcom/android/systemui/R$drawable;->privacy_alert_icon_camera:I

    iget-object v2, v7, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v1, v5, v9

    aput-object v6, v5, v10

    invoke-virtual {v2, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v7, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "PrivacyAlertGroupCamera"

    move v4, v0

    move-object v5, v1

    move-object v12, v2

    move-object v11, v3

    move v2, v10

    :goto_0
    invoke-direct {p0, v8}, Lcom/oneplus/notification/OpNotificationController;->isSystemApp(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/oneplus/notification/OpNotificationController;->SYSTEM_APP_LIST:Ljava/util/List;

    invoke-interface {v0, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_3

    :cond_2
    iget-object v0, v7, Lcom/oneplus/notification/OpNotificationController;->mPrivacyGroupCount:Ljava/util/HashMap;

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    iget-object v0, v7, Lcom/oneplus/notification/OpNotificationController;->mPrivacyAlertList:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, v7, Lcom/oneplus/notification/OpNotificationController;->mPrivacyAlertList:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_3
    move v0, v9

    :goto_1
    and-int v1, v0, v2

    if-ne v1, v10, :cond_4

    move v9, v10

    :cond_4
    if-eqz p3, :cond_5

    if-nez v9, :cond_5

    or-int v9, v0, v2

    move-object v0, p0

    move-object/from16 v1, p2

    move-object v3, v11

    move-object v6, v12

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/notification/OpNotificationController;->sendPrivacyAlertNotification(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, v7, Lcom/oneplus/notification/OpNotificationController;->mPrivacyGroupCount:Ljava/util/HashMap;

    add-int/2addr v13, v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    not-int v1, v2

    and-int v9, v0, v1

    if-lez v13, :cond_6

    iget-object v0, v7, Lcom/oneplus/notification/OpNotificationController;->mPrivacyGroupCount:Ljava/util/HashMap;

    sub-int/2addr v13, v10

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v11, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_6
    :goto_2
    iget-object v0, v7, Lcom/oneplus/notification/OpNotificationController;->mPrivacyAlertList:Ljava/util/HashMap;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    :cond_7
    :goto_3
    sget-boolean v0, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "preparePrivacyAlertNotification, stop preparing for system application, packageName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", privacyName: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", privacyType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpNotificationController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method

.method private sendPrivacyAlertNotification(Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;Ljava/lang/String;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    sget-boolean v5, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sendPrivacyAlertNotification, packageName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", privacyType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", group: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "OpNotificationController"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v5, v0, Lcom/oneplus/notification/OpNotificationController;->mPrivacyGroupCount:Ljava/util/HashMap;

    invoke-virtual {v5, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    const v6, 0x50d0071

    const-string v7, "android.substName"

    const/4 v8, -0x1

    const/high16 v9, 0x8000000

    const/4 v10, 0x0

    const-string v11, "android.provider.extra.CHANNEL_ID"

    const/high16 v12, 0x10000000

    const-string v13, "privacy_alert"

    const/4 v14, 0x1

    if-nez v5, :cond_1

    new-instance v5, Landroid/content/Intent;

    const-string v15, "android.settings.MANAGE_ALL_APPLICATIONS_SETTINGS"

    invoke-direct {v5, v15}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v11, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iget-object v15, v0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    invoke-static {v15, v10, v5, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    new-instance v15, Landroid/app/Notification$Builder;

    iget-object v9, v0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v15, v9, v13}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v15, v8}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v3}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/app/Notification$Builder;->setGroupSummary(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v14}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    iget-object v9, v5, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object v15, v0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v15, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v9, v7, v15}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v9, v0, Lcom/oneplus/notification/OpNotificationController;->mNoMan:Landroid/app/NotificationManager;

    sget-object v15, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "PrivacyAlertSummary"

    invoke-virtual {v9, v6, v2, v5, v15}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    :cond_1
    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    const-string v9, "package"

    invoke-static {v9, v1, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v12}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v5

    invoke-virtual {v5, v11, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    iget-object v6, v0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    const/high16 v9, 0x8000000

    invoke-static {v6, v10, v5, v9}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    new-instance v6, Landroid/app/Notification$Builder;

    iget-object v9, v0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v6, v9, v13}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v3

    move-object/from16 v4, p5

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    move-object/from16 v4, p6

    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v14}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v3

    iget-object v4, v3, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    iget-object v5, v0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    const v6, 0x50d0071

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v7, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, v0, Lcom/oneplus/notification/OpNotificationController;->mNoMan:Landroid/app/NotificationManager;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method private sentIntent(Landroid/service/notification/StatusBarNotification;Z)V
    .locals 11

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "launch pkg: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " userId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " in freeform mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpNotificationController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p1

    iget-object v2, p1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p1, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_4

    const/4 p1, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getActivityOptionsInternal(Landroid/view/RemoteAnimationAdapter;)Landroid/app/ActivityOptions;

    move-result-object p1

    if-eqz p2, :cond_1

    const/4 p2, 0x5

    invoke-virtual {p1, p2}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    :cond_1
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    const/4 p1, 0x1

    new-array p2, p1, [I

    const/4 v2, 0x0

    const/16 v4, 0xc5

    aput v4, p2, v2

    invoke-static {p2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p2

    if-eqz p2, :cond_2

    const-string p2, "android:activity.packageName"

    const-string v2, "OP_EXTRA_REMOTE_INPUT_DRAFT"

    invoke-virtual {v10, p2, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    iget-object v4, p0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v3 .. v10}, Landroid/app/PendingIntent;->sendAndReturnResult(Landroid/content/Context;ILandroid/content/Intent;Landroid/app/PendingIntent$OnFinished;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;)I

    move-result p0

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getActivityLaunchAnimator()Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;

    move-result-object p2

    if-eqz p2, :cond_3

    invoke-virtual {p2, p0, p1}, Lcom/android/systemui/statusbar/notification/ActivityLaunchAnimator;->setLaunchResult(IZ)V

    :cond_3
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPresenter()Lcom/android/systemui/statusbar/NotificationPresenter;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/statusbar/NotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->removeHeadsUps()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Sending PendingIntent failed: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method private setShowQuickReply(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 5

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    iget v1, v1, Landroid/app/Notification;->flags:I

    and-int/lit8 v1, v1, 0x40

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, p0, Lcom/oneplus/notification/OpNotificationController;->mTopActivity:Ljava/lang/String;

    if-eqz v4, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v4, v2

    goto :goto_1

    :cond_1
    move v4, v3

    :goto_1
    invoke-virtual {p0, v0}, Lcom/oneplus/notification/OpNotificationController;->supportQuickReply(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean p0, p0, Lcom/oneplus/notification/OpNotificationController;->mIsFreeForm:Z

    if-nez p0, :cond_2

    if-nez v4, :cond_2

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->isContentHidden()Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object p0

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->setShowQuickReply(Z)V

    return-void
.end method

.method private showSimpleHeadsUp(ILandroid/service/notification/StatusBarNotification;)V
    .locals 2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_1

    iget-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    invoke-virtual {p1}, Lcom/oneplus/util/notification/SimpleHeadsUpController;->getCurrentKey()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    invoke-virtual {p1}, Lcom/oneplus/util/notification/SimpleHeadsUpController;->getCurrentKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/notification/OpNotificationController;->hideSimpleHeadsUps()V

    :cond_0
    return-void

    :cond_1
    iget-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mLockscreenUserManager:Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;->isSecure()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/oneplus/systemui/statusbar/notification/collection/OpNotificationData;->isLocked(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    invoke-virtual {p0, p2, p1, v1}, Lcom/oneplus/util/notification/SimpleHeadsUpController;->show(Landroid/service/notification/StatusBarNotification;ZI)V

    return-void
.end method


# virtual methods
.method public canHeadsUp(Landroid/service/notification/StatusBarNotification;)I
    .locals 3

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/notification/OpNotificationController;->blockedByBrickMode(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "OpNotificationController"

    if-eqz v1, :cond_1

    sget-boolean p0, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: blocked by brick mode: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    invoke-direct {p0, p1}, Lcom/oneplus/notification/OpNotificationController;->blockedByDrivingMode(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean p0, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: blocked by driving mode: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x2

    return p0

    :cond_3
    invoke-direct {p0, p1}, Lcom/oneplus/notification/OpNotificationController;->blockedByEsportsMode(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_5

    sget-boolean p0, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: blocked by esports mode: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const/4 p0, 0x3

    return p0

    :cond_5
    invoke-direct {p0, p1}, Lcom/oneplus/notification/OpNotificationController;->blockedByGameMode3rdPartyCall(Landroid/service/notification/StatusBarNotification;)Z

    move-result v1

    if-eqz v1, :cond_7

    sget-boolean p1, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    if-eqz p1, :cond_6

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No heads up: blocked by game mode 3rd party calling, key: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " uid: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mGameMode3rdPartyCallsUid:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const/4 p0, 0x5

    return p0

    :cond_7
    invoke-direct {p0, p1}, Lcom/oneplus/notification/OpNotificationController;->blockedByGameMode(Landroid/service/notification/StatusBarNotification;)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-boolean p0, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    if-eqz p0, :cond_8

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: blocked by game mode: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    const/4 p0, 0x4

    return p0

    :cond_9
    invoke-direct {p0}, Lcom/oneplus/notification/OpNotificationController;->blockedByReadingMode()Z

    move-result p0

    if-eqz p0, :cond_b

    sget-boolean p0, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    if-eqz p0, :cond_a

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "No heads up: blocked by reading mode: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    const/4 p0, 0x6

    return p0

    :cond_b
    const/4 p0, -0x1

    return p0
.end method

.method public canHeadsUpSnoozedNotification(Landroid/service/notification/StatusBarNotification;)Z
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/notification/OpNotificationController;->mBlockedByBrick:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/notification/OpNotificationController;->PRIORITY_LIST_BRICK_MODE:Ljava/util/List;

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-boolean p0, p0, Lcom/oneplus/notification/OpNotificationController;->mBlockedByGame:Z

    if-eqz p0, :cond_2

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object p0

    iget-object p0, p0, Landroid/app/Notification;->fullScreenIntent:Landroid/app/PendingIntent;

    if-eqz p0, :cond_2

    :cond_1
    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getCallState()I
    .locals 0

    iget p0, p0, Lcom/oneplus/notification/OpNotificationController;->mPhoneState:I

    return p0
.end method

.method public getEntryManager()Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-object p0
.end method

.method public getQuickReplyView(Landroid/service/notification/StatusBarNotification;)Landroid/view/View;
    .locals 5

    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$layout;->op_quick_reply_notification:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    sget v2, Lcom/android/systemui/R$id;->app_icon:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    if-eqz v2, :cond_0

    invoke-direct {p0, p1}, Lcom/oneplus/notification/OpNotificationController;->getAppIcon(Landroid/service/notification/StatusBarNotification;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    sget v2, Lcom/android/systemui/R$id;->title:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_1

    iget-object v3, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v4, "android.title"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    const v4, 0x1010036

    invoke-static {v3, v4}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_1
    sget v2, Lcom/android/systemui/R$id;->text:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    if-eqz v2, :cond_2

    iget-object v1, v1, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v3, "android.text"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/oneplus/notification/OpNotificationController;->mContext:Landroid/content/Context;

    const v3, 0x1010038

    invoke-static {v1, v3}, Lcom/android/settingslib/Utils;->getColorAttr(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    :cond_2
    sget v1, Lcom/android/systemui/R$id;->notification_content:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_3

    new-instance v2, Lcom/oneplus/notification/-$$Lambda$OpNotificationController$jDTWB-lrFm2kPlAyY55_hDtaE7g;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/notification/-$$Lambda$OpNotificationController$jDTWB-lrFm2kPlAyY55_hDtaE7g;-><init>(Lcom/oneplus/notification/OpNotificationController;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_3
    sget v1, Lcom/android/systemui/R$id;->btn_reply:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_4

    new-instance v2, Lcom/oneplus/notification/-$$Lambda$OpNotificationController$e06XjAOoiFk5LvjE_IIxg3Asym0;

    invoke-direct {v2, p0, p1}, Lcom/oneplus/notification/-$$Lambda$OpNotificationController$e06XjAOoiFk5LvjE_IIxg3Asym0;-><init>(Lcom/oneplus/notification/OpNotificationController;Landroid/service/notification/StatusBarNotification;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_4
    return-object v0
.end method

.method public hideSimpleHeadsUps()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/util/notification/SimpleHeadsUpController;->hide()V

    :cond_0
    return-void
.end method

.method public isFreeFormActive()Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/notification/OpNotificationController;->mIsFreeForm:Z

    return p0
.end method

.method public isOnQuickReplyList(Ljava/lang/String;)Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mQuickReplyList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public isPanelDisabledInBrickMode()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/notification/OpNotificationController;->mBlockedByBrick:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/CommandQueue;->panelsEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public keepNotificationLightBlinking(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;",
            ">;)Z"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v0, p0, :cond_2

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "com.android.dialer"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "com.android.server.telecom"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public synthetic lambda$getQuickReplyView$0$OpNotificationController(Landroid/service/notification/StatusBarNotification;Landroid/view/View;)V
    .locals 3

    const-string p2, "landscape_quick_reply"

    const-string v0, "hun_action"

    const-string v1, "2"

    const-string v2, "YLTI9SVG4L"

    invoke-static {p2, v0, v1, v2}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p2, 0x0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/notification/OpNotificationController;->sentIntent(Landroid/service/notification/StatusBarNotification;Z)V

    return-void
.end method

.method public synthetic lambda$getQuickReplyView$1$OpNotificationController(Landroid/service/notification/StatusBarNotification;Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object p2

    invoke-virtual {p2}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object p2

    invoke-virtual {p2}, Lcom/android/systemui/statusbar/phone/StatusBar;->getPresenter()Lcom/android/systemui/statusbar/NotificationPresenter;

    move-result-object p2

    invoke-interface {p2}, Lcom/android/systemui/statusbar/NotificationPresenter;->isPresenterFullyCollapsed()Z

    move-result p2

    const-string v0, "YLTI9SVG4L"

    const-string v1, "1"

    const-string v2, "landscape_quick_reply"

    if-eqz p2, :cond_0

    const-string p2, "hun_action"

    invoke-static {v2, p2, v1, v0}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p2, "nd_action"

    invoke-static {v2, p2, v1, v0}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Lcom/oneplus/notification/OpNotificationController;->sentIntent(Landroid/service/notification/StatusBarNotification;Z)V

    return-void
.end method

.method public maybeShowSimpleHeadsUp(ILandroid/service/notification/StatusBarNotification;)V
    .locals 2

    invoke-virtual {p2}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    iget-boolean p1, p0, Lcom/oneplus/notification/OpNotificationController;->mBlockedByGame:Z

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/oneplus/notification/OpNotificationController;->mGameModeNotifyType:I

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    sget-boolean p1, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    if-eqz p1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Show simple heads-up: game mode: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpNotificationController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    invoke-direct {p0, p1, p2}, Lcom/oneplus/notification/OpNotificationController;->showSimpleHeadsUp(ILandroid/service/notification/StatusBarNotification;)V

    return-void
.end method

.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    iget v0, p0, Lcom/oneplus/notification/OpNotificationController;->mOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/oneplus/notification/OpNotificationController;->mOrientation:I

    invoke-virtual {p0}, Lcom/oneplus/notification/OpNotificationController;->hideSimpleHeadsUps()V

    invoke-virtual {p0}, Lcom/oneplus/notification/OpNotificationController;->setQuickReplyFlags()V

    :cond_0
    return-void
.end method

.method public setEntryManager(Lcom/android/systemui/statusbar/notification/NotificationEntryManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    return-void
.end method

.method public setIsFreeForm(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/notification/OpNotificationController;->mIsFreeForm:Z

    return-void
.end method

.method public setQuickReplyFlags()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationController;->mEntryManager:Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;->getNotificationData()Lcom/android/systemui/statusbar/notification/collection/NotificationData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/NotificationData;->getActiveNotifications()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getRow()Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;

    move-result-object v2

    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oneplus/notification/OpNotificationController;->isOnQuickReplyList(Ljava/lang/String;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/row/ExpandableNotificationRow;->reinflateQuickReply(Z)V

    invoke-direct {p0, v1}, Lcom/oneplus/notification/OpNotificationController;->setShowQuickReply(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setTopActivity(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/notification/OpNotificationController;->mTopActivity:Ljava/lang/String;

    return-void
.end method

.method public shouldForceRemoveEntry(Ljava/lang/String;)Z
    .locals 0

    sget-object p0, Lcom/oneplus/notification/OpNotificationController;->LIFETIME_EXTENSION_LIST:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public shouldSuppressFullScreenIntent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Z
    .locals 3

    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/notification/OpNotificationController;->blockedByBrickMode(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "OpNotificationController"

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    sget-boolean p0, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No Fullscreen intent: suppressed by brick mode: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2

    :cond_1
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v0}, Lcom/oneplus/notification/OpNotificationController;->blockedByDrivingMode(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-boolean p0, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No Fullscreen intent: suppressed by driving mode: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v2

    :cond_3
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v0}, Lcom/oneplus/notification/OpNotificationController;->blockedByEsportsMode(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    if-eqz v0, :cond_5

    sget-boolean p0, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    if-eqz p0, :cond_4

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No Fullscreen intent: suppressed by esports mode: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v2

    :cond_5
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-direct {p0, v0}, Lcom/oneplus/notification/OpNotificationController;->blockedByGameMode(Landroid/service/notification/StatusBarNotification;)Z

    move-result p0

    if-eqz p0, :cond_7

    sget-boolean p0, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    if-eqz p0, :cond_6

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "No Fullscreen intent: suppressed by game mode: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return v2

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public snoozeHeadsUp(Landroid/app/Notification;)V
    .locals 3

    invoke-virtual {p1}, Landroid/app/Notification;->getSwipeUpHeadsUpIntent()Landroid/app/PendingIntent;

    move-result-object p0

    if-eqz p0, :cond_1

    :try_start_0
    sget-boolean v0, Lcom/oneplus/notification/OpNotificationController;->OP_DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OpNotificationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "snooze "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " send pending intent "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/app/PendingIntent$CanceledException;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public supportQuickReply(Ljava/lang/String;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/notification/OpNotificationController;->mDockedStackExists:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oneplus/notification/OpNotificationController;->isOnQuickReplyList(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p0, p0, Lcom/oneplus/notification/OpNotificationController;->mOrientation:I

    const/4 p1, 0x2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public updateNotificationRule()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/notification/OpNotificationController;->mSettingsObserver:Lcom/oneplus/notification/OpNotificationController$SettingsObserver;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Lcom/oneplus/notification/OpNotificationController$SettingsObserver;->update(Landroid/net/Uri;)V

    :cond_0
    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mOimcObserver:Lcom/oneplus/notification/OpNotificationController$OimcObserver;

    if-eqz p0, :cond_1

    invoke-virtual {p0, v1}, Lcom/oneplus/notification/OpNotificationController$OimcObserver;->update(Landroid/net/Uri;)V

    :cond_1
    return-void
.end method

.method public updateSimpleHeadsUps()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/notification/OpNotificationController;->mSimpleHeadsUpController:Lcom/oneplus/util/notification/SimpleHeadsUpController;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/util/notification/SimpleHeadsUpController;->onDensityOrFontScaleChanged()V

    :cond_0
    return-void
.end method
