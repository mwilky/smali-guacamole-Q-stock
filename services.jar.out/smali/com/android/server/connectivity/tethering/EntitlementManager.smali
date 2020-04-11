.class public Lcom/android/server/connectivity/tethering/EntitlementManager;
.super Ljava/lang/Object;
.source "EntitlementManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;,
        Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;,
        Lcom/android/server/connectivity/tethering/EntitlementManager$OnUiEntitlementFailedListener;
    }
.end annotation


# static fields
.field private static final ACTION_PROVISIONING_ALARM:Ljava/lang/String; = "com.android.server.connectivity.tethering.PROVISIONING_RECHECK_ALARM"

.field private static final DBG:Z = false

.field protected static final DISABLE_PROVISIONING_SYSPROP_KEY:Ljava/lang/String; = "net.tethering.noprovisioning"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final EVENT_GET_ENTITLEMENT_VALUE:I = 0x4

.field private static final EVENT_MAYBE_RUN_PROVISIONING:I = 0x3

.field private static final EVENT_START_PROVISIONING:I = 0x0

.field private static final EVENT_STOP_PROVISIONING:I = 0x1

.field private static final EVENT_UPSTREAM_CHANGED:I = 0x2

.field private static final EXTRA_SUBID:Ljava/lang/String; = "subId"

.field private static final MS_PER_HOUR:I = 0x36ee80

.field private static final TAG:Ljava/lang/String;

.field private static final TETHER_SERVICE:Landroid/content/ComponentName;


# instance fields
.field private final mCellularPermitted:Landroid/util/SparseIntArray;

.field private mCellularUpstreamPermitted:Z

.field private final mContext:Landroid/content/Context;

.field private final mCurrentTethers:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mEntitlementCacheValue:Landroid/util/SparseIntArray;

.field private mFetcher:Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;

.field private final mHandler:Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;

.field private mListener:Lcom/android/server/connectivity/tethering/EntitlementManager$OnUiEntitlementFailedListener;

.field private final mLog:Landroid/net/util/SharedLog;

.field private mNeedReRunProvisioningUi:Z

.field private final mPermissionChangeMessageCode:I

.field private mProvisioningRecheckAlarm:Landroid/app/PendingIntent;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

.field private final mTetherMasterSM:Lcom/android/internal/util/StateMachine;

.field private mUsingCellularAsUpstream:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/EntitlementManager;->TAG:Ljava/lang/String;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10401b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/tethering/EntitlementManager;->TETHER_SERVICE:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;ILcom/android/server/connectivity/MockableSystemProperties;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularUpstreamPermitted:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mUsingCellularAsUpstream:Z

    iput-boolean v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mNeedReRunProvisioningUi:Z

    new-instance v0, Lcom/android/server/connectivity/tethering/EntitlementManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/tethering/EntitlementManager$1;-><init>(Lcom/android/server/connectivity/tethering/EntitlementManager;)V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/connectivity/tethering/EntitlementManager;->TAG:Ljava/lang/String;

    invoke-virtual {p3, v0}, Landroid/net/util/SharedLog;->forSubComponent(Ljava/lang/String;)Landroid/net/util/SharedLog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mLog:Landroid/net/util/SharedLog;

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCurrentTethers:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularPermitted:Landroid/util/SparseIntArray;

    iput-object p5, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mEntitlementCacheValue:Landroid/util/SparseIntArray;

    iput-object p2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    iput p4, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mPermissionChangeMessageCode:I

    invoke-virtual {p2}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;-><init>(Lcom/android/server/connectivity/tethering/EntitlementManager;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mHandler:Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "com.android.server.connectivity.tethering.PROVISIONING_RECHECK_ALARM"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mHandler:Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;

    const/4 v5, 0x0

    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/connectivity/tethering/EntitlementManager;)Landroid/net/util/SharedLog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mLog:Landroid/net/util/SharedLog;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/tethering/EntitlementManager;)Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mFetcher:Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;

    return-object v0
.end method

.method static synthetic access$200(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->toBool(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/tethering/EntitlementManager;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/EntitlementManager;->handleStartProvisioningIfNeeded(IZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/tethering/EntitlementManager;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->handleStopProvisioningIfNeeded(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/tethering/EntitlementManager;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->handleNotifyUpstream(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/tethering/EntitlementManager;Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->handleMaybeRunProvisioning(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/tethering/EntitlementManager;ILandroid/os/ResultReceiver;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/tethering/EntitlementManager;->handleGetLatestTetheringEntitlementValue(ILandroid/os/ResultReceiver;Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/tethering/EntitlementManager;II)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/tethering/EntitlementManager;->updateEntitlementCacheValue(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/tethering/EntitlementManager;)Lcom/android/server/connectivity/tethering/EntitlementManager$OnUiEntitlementFailedListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mListener:Lcom/android/server/connectivity/tethering/EntitlementManager$OnUiEntitlementFailedListener;

    return-object v0
.end method

.method private buildProxyReceiver(IZLandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 7

    new-instance v6, Lcom/android/server/connectivity/tethering/EntitlementManager$2;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mHandler:Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;

    move-object v0, v6

    move-object v1, p0

    move v3, p1

    move v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/android/server/connectivity/tethering/EntitlementManager$2;-><init>(Lcom/android/server/connectivity/tethering/EntitlementManager;Landroid/os/Handler;IZLandroid/os/ResultReceiver;)V

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->writeToParcel(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v1

    return-object v1
.end method

.method private cancelTetherProvisioningRechecks()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mProvisioningRecheckAlarm:Landroid/app/PendingIntent;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mProvisioningRecheckAlarm:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mProvisioningRecheckAlarm:Landroid/app/PendingIntent;

    :cond_0
    return-void
.end method

.method private carrierConfigAffirmsEntitlementCheckNotRequired(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)Z
    .locals 3

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->getCarrierConfig(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)Landroid/os/PersistableBundle;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const-string/jumbo v1, "require_entitlement_checks_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    xor-int/lit8 v2, v1, 0x1

    return v2
.end method

.method private static encodeBool(Z)I
    .locals 0

    return p0
.end method

.method private static errorString(I)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_2

    const/16 v0, 0xb

    if-eq p0, v0, :cond_1

    const/16 v0, 0xd

    if-eq p0, v0, :cond_0

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "UNKNOWN ERROR (%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "TETHER_ERROR_ENTITLEMENT_UNKONWN"

    return-object v0

    :cond_1
    const-string v0, "TETHER_ERROR_PROVISION_FAILED"

    return-object v0

    :cond_2
    const-string v0, "TETHER_ERROR_NO_ERROR"

    return-object v0
.end method

.method private evaluateCellularPermission(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularUpstreamPermitted:Z

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->isTetherProvisioningRequired(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularPermitted:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseIntArray;->indexOfValue(I)I

    move-result v1

    const/4 v3, -0x1

    if-le v1, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularUpstreamPermitted:Z

    iget-boolean v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularUpstreamPermitted:Z

    if-eq v1, v0, :cond_2

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cellular permission change: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularUpstreamPermitted:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    iget v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mPermissionChangeMessageCode:I

    invoke-virtual {v1, v2}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularUpstreamPermitted:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularPermitted:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    if-lez v1, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->scheduleProvisioningRechecks(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->cancelTetherProvisioningRechecks()V

    :goto_0
    return-void
.end method

.method private handleGetLatestTetheringEntitlementValue(ILandroid/os/ResultReceiver;Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mFetcher:Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;

    invoke-interface {v0}, Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;->fetchTetheringConfiguration()Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->isTetherProvisioningRequired(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p2, v3, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mEntitlementCacheValue:Landroid/util/SparseIntArray;

    const/16 v4, 0xd

    invoke-virtual {v1, p1, v4}, Landroid/util/SparseIntArray;->get(II)I

    move-result v1

    if-eqz v1, :cond_2

    if-nez p3, :cond_1

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1, v3, p2}, Lcom/android/server/connectivity/tethering/EntitlementManager;->buildProxyReceiver(IZLandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v2

    iget v3, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->subId:I

    invoke-virtual {p0, p1, v3, v2}, Lcom/android/server/connectivity/tethering/EntitlementManager;->runUiTetherProvisioning(IILandroid/os/ResultReceiver;)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p2, v1, v2}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :goto_1
    return-void
.end method

.method private handleMaybeRunProvisioning(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCurrentTethers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->isTetherProvisioningRequired(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCurrentTethers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularPermitted:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mNeedReRunProvisioningUi:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mNeedReRunProvisioningUi:Z

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->subId:I

    invoke-direct {p0, v2, v3}, Lcom/android/server/connectivity/tethering/EntitlementManager;->runUiTetherProvisioning(II)V

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget v3, p1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->subId:I

    invoke-virtual {p0, v2, v3}, Lcom/android/server/connectivity/tethering/EntitlementManager;->runSilentTetherProvisioning(II)V

    :cond_2
    :goto_1
    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method private handleNotifyUpstream(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mUsingCellularAsUpstream:Z

    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mUsingCellularAsUpstream:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mFetcher:Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;

    invoke-interface {v0}, Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;->fetchTetheringConfiguration()Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->handleMaybeRunProvisioning(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V

    :cond_0
    return-void
.end method

.method private handleStartProvisioningIfNeeded(IZ)V
    .locals 3

    invoke-static {p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->isValidDownstreamType(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCurrentTethers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCurrentTethers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mFetcher:Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;

    invoke-interface {v0}, Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;->fetchTetheringConfiguration()Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->isTetherProvisioningRequired(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularPermitted:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    iput-boolean v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularUpstreamPermitted:Z

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mUsingCellularAsUpstream:Z

    if-eqz v1, :cond_4

    if-eqz p2, :cond_3

    iget v1, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->subId:I

    invoke-direct {p0, p1, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->runUiTetherProvisioning(II)V

    goto :goto_0

    :cond_3
    iget v1, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->subId:I

    invoke-virtual {p0, p1, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->runSilentTetherProvisioning(II)V

    :goto_0
    iput-boolean v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mNeedReRunProvisioningUi:Z

    goto :goto_1

    :cond_4
    iget-boolean v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mNeedReRunProvisioningUi:Z

    or-int/2addr v1, p2

    iput-boolean v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mNeedReRunProvisioningUi:Z

    goto :goto_1

    :cond_5
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularUpstreamPermitted:Z

    :goto_1
    return-void
.end method

.method private handleStopProvisioningIfNeeded(I)V
    .locals 2

    invoke-static {p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->isValidDownstreamType(I)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCurrentTethers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->removeDownstreamMapping(I)V

    return-void
.end method

.method private static isValidDownstreamType(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eqz p0, :cond_0

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    return v0
.end method

.method private runUiTetherProvisioning(II)V
    .locals 2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->buildProxyReceiver(IZLandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->runUiTetherProvisioning(IILandroid/os/ResultReceiver;)V

    return-void
.end method

.method private scheduleProvisioningRechecks(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V
    .locals 14

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mProvisioningRecheckAlarm:Landroid/app/PendingIntent;

    if-nez v0, :cond_1

    iget v0, p1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningCheckPeriod:I

    if-gtz v0, :cond_0

    return-void

    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.android.server.connectivity.tethering.PROVISIONING_RECHECK_ALARM"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    invoke-static {v2, v3, v1, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mProvisioningRecheckAlarm:Landroid/app/PendingIntent;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mContext:Landroid/content/Context;

    const-string v3, "alarm"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AlarmManager;

    const v3, 0x36ee80

    mul-int/2addr v3, v0

    int-to-long v10, v3

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long v12, v3, v10

    const/4 v4, 0x3

    iget-object v9, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mProvisioningRecheckAlarm:Landroid/app/PendingIntent;

    move-object v3, v2

    move-wide v5, v12

    move-wide v7, v10

    invoke-virtual/range {v3 .. v9}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    :cond_1
    return-void
.end method

.method private static toBool(I)Z
    .locals 1

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static typeString(I)Ljava/lang/String;
    .locals 3

    const/4 v0, -0x1

    if-eq p0, v0, :cond_3

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    const-string v1, "TETHERING UNKNOWN TYPE (%d)"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, "TETHERING_BLUETOOTH"

    return-object v0

    :cond_1
    const-string v0, "TETHERING_USB"

    return-object v0

    :cond_2
    const-string v0, "TETHERING_WIFI"

    return-object v0

    :cond_3
    const-string v0, "TETHERING_INVALID"

    return-object v0
.end method

.method private updateEntitlementCacheValue(II)I
    .locals 2

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mEntitlementCacheValue:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    return p2

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mEntitlementCacheValue:Landroid/util/SparseIntArray;

    const/16 v1, 0xb

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    return v1
.end method

.method private writeToParcel(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;
    .locals 2

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/ResultReceiver;->writeToParcel(Landroid/os/Parcel;I)V

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->setDataPosition(I)V

    sget-object v1, Landroid/os/ResultReceiver;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/ResultReceiver;

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    return-object v1
.end method


# virtual methods
.method protected addDownstreamMapping(II)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addDownstreamMapping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", result: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " ,TetherTypeRequested: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCurrentTethers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCurrentTethers:Landroid/util/ArraySet;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularPermitted:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mFetcher:Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;

    invoke-interface {v0}, Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;->fetchTetheringConfiguration()Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->evaluateCellularPermission(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 4

    const-string/jumbo v0, "mCellularUpstreamPermitted: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularUpstreamPermitted:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCurrentTethers:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const-string v2, "Type: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/connectivity/tethering/EntitlementManager;->typeString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularPermitted:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_0

    const-string v2, ", Value: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularPermitted:Landroid/util/SparseIntArray;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/connectivity/tethering/EntitlementManager;->errorString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_0
    const-string v2, ", Value: empty"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_1
    goto :goto_0

    :cond_1
    return-void
.end method

.method public getCarrierConfig(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)Landroid/os/PersistableBundle;
    .locals 4

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    iget v2, p1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->subId:I

    invoke-virtual {v0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/CarrierConfigManager;->isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v2

    :cond_1
    return-object v1
.end method

.method public getLatestTetheringEntitlementResult(ILandroid/os/ResultReceiver;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mHandler:Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;

    invoke-static {p3}, Lcom/android/server/connectivity/tethering/EntitlementManager;->encodeBool(Z)I

    move-result v1

    const/4 v2, 0x4

    invoke-virtual {v0, v2, p1, v1, p2}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public isCellularUpstreamPermitted()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularUpstreamPermitted:Z

    return v0
.end method

.method protected isTetherProvisioningRequired(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)Z
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mSystemProperties:Lcom/android/server/connectivity/MockableSystemProperties;

    const/4 v1, 0x0

    const-string/jumbo v2, "net.tethering.noprovisioning"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/connectivity/MockableSystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningApp:[Ljava/lang/String;

    array-length v0, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->carrierConfigAffirmsEntitlementCheckNotRequired(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v0, p1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->provisioningApp:[Ljava/lang/String;

    array-length v0, v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v1
.end method

.method public maybeRunProvisioning()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mHandler:Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyUpstream(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mHandler:Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;

    invoke-static {p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->encodeBool(Z)I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public reevaluateSimCardProvisioning(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mHandler:Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v1, "reevaluateSimCardProvisioning() don\'t run in TetherMaster thread"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mEntitlementCacheValue:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularPermitted:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    invoke-virtual {p1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->hasMobileHotspotProvisionApp()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->carrierConfigAffirmsEntitlementCheckNotRequired(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mUsingCellularAsUpstream:Z

    if-eqz v0, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->handleMaybeRunProvisioning(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V

    :cond_2
    return-void

    :cond_3
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->evaluateCellularPermission(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V

    return-void
.end method

.method protected removeDownstreamMapping(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeDownstreamMapping: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->i(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mCellularPermitted:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseIntArray;->delete(I)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mFetcher:Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;

    invoke-interface {v0}, Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;->fetchTetheringConfiguration()Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->evaluateCellularPermission(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V

    return-void
.end method

.method protected runSilentTetherProvisioning(II)V
    .locals 6
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->buildProxyReceiver(IZLandroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "extraAddTetherType"

    invoke-virtual {v1, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "extraRunProvision"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "extraProvisionCallback"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v2, "subId"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v2, Lcom/android/server/connectivity/tethering/EntitlementManager;->TETHER_SERVICE:Landroid/content/ComponentName;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    :try_start_0
    iget-object v4, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v4, v1, v5}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4
.end method

.method protected runUiTetherProvisioning(IILandroid/os/ResultReceiver;)V
    .locals 5
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.TETHER_PROVISIONING_UI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "extraAddTetherType"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "extraProvisionCallback"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string/jumbo v1, "subId"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public setOnUiEntitlementFailedListener(Lcom/android/server/connectivity/tethering/EntitlementManager$OnUiEntitlementFailedListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mListener:Lcom/android/server/connectivity/tethering/EntitlementManager$OnUiEntitlementFailedListener;

    return-void
.end method

.method public setTetheringConfigurationFetcher(Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mFetcher:Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;

    return-void
.end method

.method public startProvisioningIfNeeded(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mHandler:Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;

    invoke-static {p2}, Lcom/android/server/connectivity/tethering/EntitlementManager;->encodeBool(Z)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public stopProvisioningIfNeeded(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/EntitlementManager;->mHandler:Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager$EntitlementHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
