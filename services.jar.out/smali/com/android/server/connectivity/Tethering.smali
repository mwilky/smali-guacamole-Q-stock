.class public Lcom/android/server/connectivity/Tethering;
.super Lcom/android/server/net/BaseNetworkObserver;
.source "Tethering.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/connectivity/Tethering$TetherMasterSM;,
        Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;,
        Lcom/android/server/connectivity/Tethering$StateReceiver;,
        Lcom/android/server/connectivity/Tethering$TetherState;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final GROUP_NAME:Ljava/lang/String; = "com.android.server.connectivity.tethering"

.field private static final TAG:Ljava/lang/String;

.field private static final VDBG:Z = false

.field private static final messageClasses:[Ljava/lang/Class;

.field private static final sMagicDecoderRing:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mBluetoothTethered:Z

.field private mCallerPkg:Ljava/lang/String;

.field private final mCarrierConfigChange:Landroid/net/util/VersionedBroadcastListener;

.field private volatile mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

.field private mConnectedClients:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

.field private final mDefaultSubscriptionChange:Landroid/net/util/VersionedBroadcastListener;

.field private final mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

.field private final mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

.field private final mForwardedDownstreams:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Landroid/net/ip/IpServer;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mLastNotificationId:I

.field private final mLog:Landroid/net/util/SharedLog;

.field private final mLooper:Landroid/os/Looper;

.field private final mNMService:Landroid/os/INetworkManagementService;

.field private final mOffloadController:Lcom/android/server/connectivity/tethering/OffloadController;

.field private final mPolicyManager:Landroid/net/INetworkPolicyManager;

.field private final mPublicSync:Ljava/lang/Object;

.field private mRndisEnabled:Z

.field private final mStateReceiver:Landroid/content/BroadcastReceiver;

.field private final mStatsService:Landroid/net/INetworkStatsService;

.field private final mTetherMasterSM:Lcom/android/internal/util/StateMachine;

.field private final mTetherStates:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/server/connectivity/Tethering$TetherState;",
            ">;"
        }
    .end annotation
.end field

.field private mTetherUpstream:Landroid/net/Network;

.field private mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

.field private final mTetheringEventCallbacks:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/net/ITetheringEventCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

.field private mUsbTethered:Z

.field private mWifiTetherRequested:Z

.field private mWifiTethered:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/android/server/connectivity/Tethering;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Class;

    const-class v1, Lcom/android/server/connectivity/Tethering;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-class v1, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-class v1, Landroid/net/ip/IpServer;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/connectivity/Tethering;->messageClasses:[Ljava/lang/Class;

    sget-object v0, Lcom/android/server/connectivity/Tethering;->messageClasses:[Ljava/lang/Class;

    invoke-static {v0}, Lcom/android/internal/util/MessageUtils;->findMessageNames([Ljava/lang/Class;)Landroid/util/SparseArray;

    move-result-object v0

    sput-object v0, Lcom/android/server/connectivity/Tethering;->sMagicDecoderRing:Landroid/util/SparseArray;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;Landroid/os/Looper;Lcom/android/server/connectivity/MockableSystemProperties;Lcom/android/server/connectivity/tethering/TetheringDependencies;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p7

    invoke-direct/range {p0 .. p0}, Lcom/android/server/net/BaseNetworkObserver;-><init>()V

    new-instance v2, Landroid/net/util/SharedLog;

    sget-object v3, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    invoke-direct {v2, v3}, Landroid/net/util/SharedLog;-><init>(Ljava/lang/String;)V

    iput-object v2, v0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Landroid/os/RemoteCallbackList;

    invoke-direct {v2}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v2, v0, Lcom/android/server/connectivity/Tethering;->mTetheringEventCallbacks:Landroid/os/RemoteCallbackList;

    const/4 v2, 0x0

    iput v2, v0, Lcom/android/server/connectivity/Tethering;->mConnectedClients:I

    const/4 v3, 0x0

    iput-object v3, v0, Lcom/android/server/connectivity/Tethering;->mCallerPkg:Ljava/lang/String;

    iput-boolean v2, v0, Lcom/android/server/connectivity/Tethering;->mWifiTethered:Z

    iput-boolean v2, v0, Lcom/android/server/connectivity/Tethering;->mUsbTethered:Z

    iput-boolean v2, v0, Lcom/android/server/connectivity/Tethering;->mBluetoothTethered:Z

    iget-object v2, v0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v4, "constructed"

    invoke-virtual {v2, v4}, Landroid/net/util/SharedLog;->mark(Ljava/lang/String;)V

    move-object/from16 v2, p1

    iput-object v2, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    move-object/from16 v4, p2

    iput-object v4, v0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    move-object/from16 v5, p3

    iput-object v5, v0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    move-object/from16 v6, p4

    iput-object v6, v0, Lcom/android/server/connectivity/Tethering;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    move-object/from16 v7, p5

    iput-object v7, v0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    iput-object v1, v0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    new-instance v8, Ljava/lang/Object;

    invoke-direct {v8}, Ljava/lang/Object;-><init>()V

    iput-object v8, v0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    new-instance v8, Landroid/util/ArrayMap;

    invoke-direct {v8}, Landroid/util/ArrayMap;-><init>()V

    iput-object v8, v0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    new-instance v8, Lcom/android/server/connectivity/Tethering$TetherMasterSM;

    iget-object v9, v0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    const-string v10, "TetherMaster"

    invoke-direct {v8, v0, v10, v9, v1}, Lcom/android/server/connectivity/Tethering$TetherMasterSM;-><init>(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;Landroid/os/Looper;Lcom/android/server/connectivity/tethering/TetheringDependencies;)V

    iput-object v8, v0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    iget-object v8, v0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v8}, Lcom/android/internal/util/StateMachine;->start()V

    iget-object v8, v0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v8}, Lcom/android/internal/util/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    new-instance v8, Lcom/android/server/connectivity/tethering/OffloadController;

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    iget-object v9, v0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v9, v10, v11}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getOffloadHardwareInterface(Landroid/os/Handler;Landroid/net/util/SharedLog;)Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    move-result-object v11

    iget-object v9, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v14, v0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    move-object v9, v8

    invoke-direct/range {v9 .. v14}, Lcom/android/server/connectivity/tethering/OffloadController;-><init>(Landroid/os/Handler;Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;Landroid/content/ContentResolver;Landroid/os/INetworkManagementService;Landroid/net/util/SharedLog;)V

    iput-object v8, v0, Lcom/android/server/connectivity/Tethering;->mOffloadController:Lcom/android/server/connectivity/tethering/OffloadController;

    iget-object v8, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v9, v0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const v11, 0x50005

    invoke-virtual {v1, v8, v9, v10, v11}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getUpstreamNetworkMonitor(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;I)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    new-instance v8, Ljava/util/HashSet;

    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    iput-object v8, v0, Lcom/android/server/connectivity/Tethering;->mForwardedDownstreams:Ljava/util/HashSet;

    new-instance v8, Landroid/content/IntentFilter;

    invoke-direct {v8}, Landroid/content/IntentFilter;-><init>()V

    const-string v9, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v10, v0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const v14, 0x50008

    move-object/from16 v15, p6

    invoke-virtual/range {v10 .. v15}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getEntitlementManager(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;ILcom/android/server/connectivity/MockableSystemProperties;)Lcom/android/server/connectivity/tethering/EntitlementManager;

    move-result-object v9

    iput-object v9, v0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    iget-object v9, v0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    new-instance v10, Lcom/android/server/connectivity/-$$Lambda$Tethering$3zIH-fISJxjng2YhMI1EBDdSKsk;

    invoke-direct {v10, v0}, Lcom/android/server/connectivity/-$$Lambda$Tethering$3zIH-fISJxjng2YhMI1EBDdSKsk;-><init>(Lcom/android/server/connectivity/Tethering;)V

    invoke-virtual {v9, v10}, Lcom/android/server/connectivity/tethering/EntitlementManager;->setOnUiEntitlementFailedListener(Lcom/android/server/connectivity/tethering/EntitlementManager$OnUiEntitlementFailedListener;)V

    iget-object v9, v0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    new-instance v10, Lcom/android/server/connectivity/-$$Lambda$Tethering$n3LtFaPEJryBHWNNaGBvLgh7QQk;

    invoke-direct {v10, v0}, Lcom/android/server/connectivity/-$$Lambda$Tethering$n3LtFaPEJryBHWNNaGBvLgh7QQk;-><init>(Lcom/android/server/connectivity/Tethering;)V

    invoke-virtual {v9, v10}, Lcom/android/server/connectivity/tethering/EntitlementManager;->setTetheringConfigurationFetcher(Lcom/android/server/connectivity/tethering/EntitlementManager$TetheringConfigurationFetcher;)V

    new-instance v15, Landroid/net/util/VersionedBroadcastListener;

    iget-object v11, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    new-instance v14, Lcom/android/server/connectivity/-$$Lambda$Tethering$a_wqxo60onQxTR27G2Ub5703PoY;

    invoke-direct {v14, v0}, Lcom/android/server/connectivity/-$$Lambda$Tethering$a_wqxo60onQxTR27G2Ub5703PoY;-><init>(Lcom/android/server/connectivity/Tethering;)V

    const-string v10, "CarrierConfigChangeListener"

    move-object v9, v15

    move-object v13, v8

    invoke-direct/range {v9 .. v14}, Landroid/net/util/VersionedBroadcastListener;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Landroid/content/IntentFilter;Ljava/util/function/Consumer;)V

    iput-object v15, v0, Lcom/android/server/connectivity/Tethering;->mCarrierConfigChange:Landroid/net/util/VersionedBroadcastListener;

    new-instance v9, Landroid/content/IntentFilter;

    invoke-direct {v9}, Landroid/content/IntentFilter;-><init>()V

    move-object v8, v9

    const-string v9, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v8, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    new-instance v9, Landroid/net/util/VersionedBroadcastListener;

    iget-object v12, v0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v13, v0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    new-instance v15, Lcom/android/server/connectivity/-$$Lambda$Tethering$Ou4huZtFpEPgpllOn6YJeTgvhHw;

    invoke-direct {v15, v0}, Lcom/android/server/connectivity/-$$Lambda$Tethering$Ou4huZtFpEPgpllOn6YJeTgvhHw;-><init>(Lcom/android/server/connectivity/Tethering;)V

    const-string v11, "DefaultSubscriptionChangeListener"

    move-object v10, v9

    move-object v14, v8

    invoke-direct/range {v10 .. v15}, Landroid/net/util/VersionedBroadcastListener;-><init>(Ljava/lang/String;Landroid/content/Context;Landroid/os/Handler;Landroid/content/IntentFilter;Ljava/util/function/Consumer;)V

    iput-object v9, v0, Lcom/android/server/connectivity/Tethering;->mDefaultSubscriptionChange:Landroid/net/util/VersionedBroadcastListener;

    new-instance v9, Lcom/android/server/connectivity/Tethering$StateReceiver;

    invoke-direct {v9, v0, v3}, Lcom/android/server/connectivity/Tethering$StateReceiver;-><init>(Lcom/android/server/connectivity/Tethering;Lcom/android/server/connectivity/Tethering$1;)V

    iput-object v9, v0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct/range {p0 .. p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    iget-object v3, v0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v3}, Lcom/android/server/connectivity/Tethering;->startStateMachineUpdaters(Landroid/os/Handler;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/connectivity/Tethering;Landroid/os/ResultReceiver;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->enableWifiIpServingLocked(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/server/connectivity/Tethering;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/connectivity/Tethering;->mConnectedClients:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->disableWifiIpServingLocked(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/connectivity/Tethering;Lcom/android/internal/util/State;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->logMessage(Lcom/android/internal/util/State;I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/connectivity/Tethering;)Landroid/os/INetworkManagementService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/connectivity/Tethering;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->maybeDunSettingChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/SharedLog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/connectivity/Tethering;)Landroid/net/Network;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherUpstream:Landroid/net/Network;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/server/connectivity/Tethering;Landroid/net/Network;)Landroid/net/Network;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mTetherUpstream:Landroid/net/Network;

    return-object p1
.end method

.method static synthetic access$2200(Lcom/android/server/connectivity/Tethering;Landroid/net/Network;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->reportUpstreamChanged(Landroid/net/Network;)V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/server/connectivity/Tethering;Landroid/net/NetworkState;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->pertainsToCurrentUpstream(Landroid/net/NetworkState;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/connectivity/Tethering;)Landroid/net/util/InterfaceSet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/server/connectivity/Tethering;Landroid/net/util/InterfaceSet;)Landroid/net/util/InterfaceSet;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/server/connectivity/Tethering;)Ljava/util/HashSet;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mForwardedDownstreams:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$2600(Lcom/android/server/connectivity/Tethering;)Landroid/net/wifi/WifiManager;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2700()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->upstreamWanted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/server/connectivity/Tethering;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/OffloadController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mOffloadController:Lcom/android/server/connectivity/tethering/OffloadController;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/server/connectivity/Tethering;Landroid/net/ip/IpServer;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/connectivity/Tethering;->notifyInterfaceStateChange(Landroid/net/ip/IpServer;II)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/connectivity/Tethering;Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->notifyLinkPropertiesChanged(Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/connectivity/Tethering;)Lcom/android/internal/util/StateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/connectivity/Tethering;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/connectivity/Tethering;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/connectivity/Tethering;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mRndisEnabled:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/connectivity/Tethering;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->tetherMatchingInterfaces(II)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/connectivity/Tethering;)Lcom/android/server/connectivity/tethering/EntitlementManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/connectivity/Tethering;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCallerPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$902(Lcom/android/server/connectivity/Tethering;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/Tethering;->mCallerPkg:Ljava/lang/String;

    return-object p1
.end method

.method private static argsContain([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 5

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p0, v2

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private changeInterfaceState(Ljava/lang/String;I)V
    .locals 4

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    const/4 v0, 0x3

    if-eq p2, v0, :cond_0

    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown interface state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;I)I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->untether(Ljava/lang/String;)I

    move-result v0

    nop

    :goto_0
    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unable start or stop tethering on iface "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    return-void
.end method

.method private static copy([Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    array-length v0, p0

    invoke-static {p0, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method private disableWifiIpServingLocked(Ljava/lang/String;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Canceling WiFi tethering request - AP_STATE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetherRequested:Z

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherState;

    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->ipServer:Landroid/net/ip/IpServer;

    invoke-virtual {v1}, Landroid/net/ip/IpServer;->unwanted()V

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    iget-object v1, v1, Lcom/android/server/connectivity/Tethering$TetherState;->ipServer:Landroid/net/ip/IpServer;

    invoke-virtual {v1}, Landroid/net/ip/IpServer;->interfaceType()I

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/net/ip/IpServer;->unwanted()V

    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error disabling Wi-Fi IP serving; "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string/jumbo v2, "no interface name specified"

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "specified interface: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private enableTetheringInternal(IZLandroid/os/ResultReceiver;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;Ljava/lang/String;)V

    return-void
.end method

.method private enableTetheringInternal(IZLandroid/os/ResultReceiver;Ljava/lang/String;)V
    .locals 3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    sget-object v1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string v2, "Invalid tether type."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p3, v0}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, p3}, Lcom/android/server/connectivity/Tethering;->setBluetoothTethering(ZLandroid/os/ResultReceiver;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p2}, Lcom/android/server/connectivity/Tethering;->setUsbTethering(Z)I

    move-result v0

    invoke-direct {p0, p3, v0}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, p2, p4}, Lcom/android/server/connectivity/Tethering;->setWifiTethering(ZLjava/lang/String;)I

    move-result v0

    invoke-direct {p0, p3, v0}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    nop

    :goto_0
    return-void
.end method

.method private enableWifiIpServingLocked(Ljava/lang/String;I)V
    .locals 5

    const/4 v0, 0x1

    if-eq p2, v0, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot enable IP serving in unknown WiFi mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    nop

    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_2

    invoke-direct {p0, p1, v3}, Lcom/android/server/connectivity/Tethering;->maybeTrackNewInterfaceLocked(Ljava/lang/String;I)V

    invoke-direct {p0, p1, v1}, Lcom/android/server/connectivity/Tethering;->changeInterfaceState(Ljava/lang/String;I)V

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v3

    const-string v3, "Cannot enable IP serving in mode %s on missing interface name"

    invoke-static {v3, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private getWifiManager()Landroid/net/wifi/WifiManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    return-object v0
.end method

.method private ifaceNameToType(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isWifi(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "persist.vendor.wigig.interface"

    const-string/jumbo v2, "wigig0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2

    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isUsb(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "usb\\d"

    invoke-virtual {p1, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const/4 v1, 0x1

    return v1

    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isBluetooth(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x2

    return v1

    :cond_3
    const/4 v1, -0x1

    return v1
.end method

.method private logMessage(Lcom/android/internal/util/State;I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/util/State;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/connectivity/Tethering;->sMagicDecoderRing:Landroid/util/SparseArray;

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, p2, v3}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method private makeControlCallback()Landroid/net/ip/IpServer$Callback;
    .locals 1

    new-instance v0, Lcom/android/server/connectivity/Tethering$2;

    invoke-direct {v0, p0}, Lcom/android/server/connectivity/Tethering$2;-><init>(Lcom/android/server/connectivity/Tethering;)V

    return-object v0
.end method

.method private maybeDefaultDataSubChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getDefaultDataSubscriptionId()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget v1, v1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->subId:I

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration(I)V

    return-void
.end method

.method private maybeDunSettingChanged()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->checkDunRequired(Landroid/content/Context;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-boolean v1, v1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isDunRequired:Z

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    return-void
.end method

.method private maybeTrackNewInterfaceLocked(Ljava/lang/String;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not a tetherable iface, ignoring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->maybeTrackNewInterfaceLocked(Ljava/lang/String;I)V

    return-void
.end method

.method private maybeTrackNewInterfaceLocked(Ljava/lang/String;I)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "active iface ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ") reported as added, ignoring"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adding TetheringInterfaceStateMachine for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/connectivity/Tethering$TetherState;

    new-instance v11, Landroid/net/ip/IpServer;

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLooper:Landroid/os/Looper;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->makeControlCallback()Landroid/net/ip/IpServer$Callback;

    move-result-object v8

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-boolean v9, v1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->enableLegacyDhcpServer:Z

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    invoke-virtual {v1}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getIpServerDependencies()Landroid/net/ip/IpServer$Dependencies;

    move-result-object v10

    move-object v1, v11

    move-object v2, p1

    move v4, p2

    invoke-direct/range {v1 .. v10}, Landroid/net/ip/IpServer;-><init>(Ljava/lang/String;Landroid/os/Looper;ILandroid/net/util/SharedLog;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/ip/IpServer$Callback;ZLandroid/net/ip/IpServer$Dependencies;)V

    invoke-direct {v0, v11}, Lcom/android/server/connectivity/Tethering$TetherState;-><init>(Landroid/net/ip/IpServer;)V

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->ipServer:Landroid/net/ip/IpServer;

    invoke-virtual {v1}, Landroid/net/ip/IpServer;->start()V

    return-void
.end method

.method private notifyInterfaceStateChange(Landroid/net/ip/IpServer;II)V
    .locals 8

    invoke-virtual {p1}, Landroid/net/ip/IpServer;->interfaceName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherState;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/connectivity/Tethering$TetherState;->ipServer:Landroid/net/ip/IpServer;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iput p2, v2, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    iput p3, v2, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const/4 v2, 0x3

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v3, v7

    const-string v5, "OBSERVED iface=%s state=%s error=%s"

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    :try_start_1
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPolicyManager:Landroid/net/INetworkPolicyManager;

    if-ne p2, v7, :cond_1

    move v3, v6

    goto :goto_0

    :cond_1
    move v3, v4

    :goto_0
    invoke-interface {v1, v0, v3}, Landroid/net/INetworkPolicyManager;->onTetheringChanged(Ljava/lang/String;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_1
    const/4 v1, 0x5

    if-ne p3, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    const v3, 0x50006

    invoke-virtual {v1, v3, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(ILjava/lang/Object;)V

    :cond_2
    if-eqz p2, :cond_4

    if-eq p2, v6, :cond_4

    if-eq p2, v7, :cond_3

    if-eq p2, v2, :cond_3

    sget-object v1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown interface state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const v1, 0x50001

    goto :goto_2

    :cond_4
    const v1, 0x50002

    nop

    :goto_2
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    invoke-virtual {v2, v1, p2, v4, p1}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->sendTetherStateChangedBroadcast()V

    return-void

    :catchall_0
    move-exception v2

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v2
.end method

.method private notifyLinkPropertiesChanged(Landroid/net/ip/IpServer;Landroid/net/LinkProperties;)V
    .locals 7

    invoke-virtual {p1}, Landroid/net/ip/IpServer;->interfaceName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/connectivity/Tethering$TetherState;

    if-eqz v2, :cond_0

    iget-object v3, v2, Lcom/android/server/connectivity/Tethering$TetherState;->ipServer:Landroid/net/ip/IpServer;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget v3, v2, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v2, v4

    const/4 v5, 0x1

    invoke-static {v3}, Landroid/net/ip/IpServer;->getStateString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    const/4 v5, 0x2

    aput-object p2, v2, v5

    const-string v5, "OBSERVED LinkProperties update iface=%s state=%s lp=%s"

    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    const v1, 0x50007

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetherMasterSM:Lcom/android/internal/util/StateMachine;

    const v5, 0x50007

    invoke-virtual {v2, v5, v3, v4, p2}, Lcom/android/internal/util/StateMachine;->sendMessage(IIILjava/lang/Object;)V

    return-void

    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "got notification from stale iface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private pertainsToCurrentUpstream(Landroid/net/NetworkState;)Z
    .locals 3

    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/net/NetworkState;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v0}, Landroid/net/LinkProperties;->getAllInterfaceNames()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    iget-object v2, v2, Landroid/net/util/InterfaceSet;->ifnames:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private reportUpstreamChanged(Landroid/net/Network;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheringEventCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetheringEventCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Landroid/net/ITetheringEventCallback;

    invoke-interface {v2, p1}, Landroid/net/ITetheringEventCallback;->onUpstreamChanged(Landroid/net/Network;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mTetheringEventCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    throw v1

    :catch_0
    move-exception v2

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetheringEventCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    nop

    return-void
.end method

.method private sendTetherResult(Landroid/os/ResultReceiver;I)V
    .locals 1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/os/ResultReceiver;->send(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method

.method private sendTetherStateChangedBroadcast()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->isTetheringSupported()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->mWifiTethered:Z

    iput-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->mUsbTethered:Z

    iput-boolean v4, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothTethered:Z

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v6

    nop

    :goto_0
    :try_start_0
    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v7

    if-ge v4, v7, :cond_8

    iget-object v7, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v7, v4}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/connectivity/Tethering$TetherState;

    iget-object v8, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v8, v4}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget v9, v7, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    if-eqz v9, :cond_1

    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_1
    iget v9, v7, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v10, 0x1

    if-ne v9, v10, :cond_2

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_2
    iget v9, v7, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v11, 0x3

    if-ne v9, v11, :cond_3

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    iget v9, v7, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v11, 0x2

    if-ne v9, v11, :cond_7

    invoke-virtual {v5, v8}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isUsb(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    iput-boolean v10, p0, Lcom/android/server/connectivity/Tethering;->mUsbTethered:Z

    goto :goto_1

    :cond_4
    invoke-virtual {v5, v8}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isWifi(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_5

    iput-boolean v10, p0, Lcom/android/server/connectivity/Tethering;->mWifiTethered:Z

    goto :goto_1

    :cond_5
    invoke-virtual {v5, v8}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isBluetooth(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_6

    iput-boolean v10, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothTethered:Z

    :cond_6
    :goto_1
    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_7
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_8
    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    new-instance v4, Landroid/content/Intent;

    const-string v6, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v4, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v6, 0x24000000

    invoke-virtual {v4, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v6, "availableArray"

    invoke-virtual {v4, v6, v0}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string/jumbo v6, "localOnlyArray"

    invoke-virtual {v4, v6, v2}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string/jumbo v6, "tetherArray"

    invoke-virtual {v4, v6, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v6, "erroredArray"

    invoke-virtual {v4, v6, v3}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    iget-object v6, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v6, v4, v7}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mUsbTethered:Z

    const/16 v7, 0xe

    if-eqz v6, :cond_b

    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mWifiTethered:Z

    if-nez v6, :cond_a

    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothTethered:Z

    if-eqz v6, :cond_9

    goto :goto_3

    :cond_9
    const/16 v6, 0xf

    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_4

    :cond_a
    :goto_3
    invoke-direct {p0, v7}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_4

    :cond_b
    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mWifiTethered:Z

    if-eqz v6, :cond_d

    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothTethered:Z

    if-eqz v6, :cond_c

    invoke-direct {p0, v7}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_4

    :cond_c
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    const v6, 0x33954ba

    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_4

    :cond_d
    iget-boolean v6, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothTethered:Z

    if-eqz v6, :cond_e

    const/16 v6, 0x10

    invoke-direct {p0, v6}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_4

    :cond_e
    invoke-virtual {p0}, Lcom/android/server/connectivity/Tethering;->clearTetheredNotification()V

    :goto_4
    return-void

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private setBluetoothTethering(ZLandroid/os/ResultReceiver;)V
    .locals 4

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/connectivity/Tethering$1;

    invoke-direct {v2, p0, p1, p2, v0}, Lcom/android/server/connectivity/Tethering$1;-><init>(Lcom/android/server/connectivity/Tethering;ZLandroid/os/ResultReceiver;Landroid/bluetooth/BluetoothAdapter;)V

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    return-void

    :cond_1
    :goto_0
    sget-object v1, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Tried to enable bluetooth tethering with null or disabled adapter. null: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-nez v0, :cond_2

    const/4 v3, 0x1

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    invoke-direct {p0, p2, v1}, Lcom/android/server/connectivity/Tethering;->sendTetherResult(Landroid/os/ResultReceiver;I)V

    return-void
.end method

.method private setWifiTethering(Z)I
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->setWifiTethering(ZLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method private setWifiTethering(ZLjava/lang/String;)I
    .locals 6

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->getWifiManager()Landroid/net/wifi/WifiManager;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v5, "setWifiTethering: failed to get WifiManager!"

    invoke-virtual {v4, v5}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    const/4 v4, 0x2

    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_0
    :try_start_2
    invoke-virtual {v3, p2}, Landroid/net/wifi/WifiManager;->transPackageName(Ljava/lang/String;)V

    if-eqz p1, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/net/wifi/WifiManager;->startSoftAp(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    if-nez p1, :cond_3

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->stopSoftAp()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_2
    iput-boolean p1, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetherRequested:Z

    const/4 v4, 0x0

    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v4

    :cond_3
    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v2, 0x5

    return v2

    :catchall_0
    move-exception v3

    :try_start_4
    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :try_start_5
    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :catchall_1
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method private showTetheredNotification(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(IZ)V

    return-void
.end method

.method private startStateMachineUpdaters(Landroid/os/Handler;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCarrierConfigChange:Landroid/net/util/VersionedBroadcastListener;

    invoke-virtual {v0}, Landroid/net/util/VersionedBroadcastListener;->startListening()V

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDefaultSubscriptionChange:Landroid/net/util/VersionedBroadcastListener;

    invoke-virtual {v0}, Landroid/net/util/VersionedBroadcastListener;->startListening()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    move-object v0, v1

    const-string v1, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0, v3, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    const-class v1, Landroid/os/UserManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManagerInternal;

    if-eqz v1, :cond_0

    new-instance v2, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;

    invoke-direct {v2, p0}, Lcom/android/server/connectivity/Tethering$TetheringUserRestrictionListener;-><init>(Lcom/android/server/connectivity/Tethering;)V

    invoke-virtual {v1, v2}, Landroid/os/UserManagerInternal;->addUserRestrictionsListener(Landroid/os/UserManagerInternal$UserRestrictionsListener;)V

    :cond_0
    return-void
.end method

.method private stopTrackingInterfaceLocked(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/connectivity/Tethering$TetherState;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "attempting to remove unknown iface ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "), ignoring"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, v0, Lcom/android/server/connectivity/Tethering$TetherState;->ipServer:Landroid/net/ip/IpServer;

    invoke-virtual {v1}, Landroid/net/ip/IpServer;->stop()V

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removing TetheringInterfaceStateMachine for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private tether(Ljava/lang/String;I)I
    .locals 6

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    const/4 v2, 0x1

    if-nez v1, :cond_0

    sget-object v3, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Tried to Tether an unknown iface: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return v2

    :cond_0
    iget v3, v1, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    if-eq v3, v2, :cond_1

    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Tether an unavailable iface: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    monitor-exit v0

    return v2

    :cond_1
    iget-object v2, v1, Lcom/android/server/connectivity/Tethering$TetherState;->ipServer:Landroid/net/ip/IpServer;

    const v3, 0x50066

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mCallerPkg:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, p2, v5, v4}, Landroid/net/ip/IpServer;->sendMessage(IIILjava/lang/Object;)V

    monitor-exit v0

    return v5

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private tetherMatchingInterfaces(II)V
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mNMService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->listInterfaces()[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    nop

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v0, v3

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I

    move-result v5

    if-ne v5, p2, :cond_0

    move-object v1, v4

    goto :goto_1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    if-nez v1, :cond_2

    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "could not find iface of type "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    invoke-direct {p0, v1, p1}, Lcom/android/server/connectivity/Tethering;->changeInterfaceState(Ljava/lang/String;I)V

    return-void

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string v3, "Error listing Interfaces"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method private updateConfiguration()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    invoke-virtual {v0}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getDefaultDataSubscriptionId()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration(I)V

    return-void
.end method

.method private updateConfiguration(I)V
    .locals 3

    new-instance v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    invoke-direct {v0, v1, v2, p1}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;-><init>(Landroid/content/Context;Landroid/net/util/SharedLog;I)V

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-boolean v1, v1, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->isDunRequired:Z

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->updateMobileRequiresDun(Z)V

    return-void
.end method

.method private upstreamWanted()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCallerPkg:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "com.oneplus.filemanager"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    const-string v1, "filemanager enable tether, ignore upstreamWanted"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mForwardedDownstreams:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/connectivity/Tethering;->mWifiTetherRequested:Z

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method protected clearTetheredNotification()V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    if-eqz v1, :cond_0

    const/4 v2, 0x0

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2, v1, v3}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    :cond_0
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8

    new-instance v0, Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/util/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    invoke-static {v1, v2, v0}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    const-string v1, "Tethering:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v1, "Configuration:"

    invoke-virtual {v0, v1}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    invoke-virtual {v1, v0}, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "Entitlement:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-virtual {v2, v0}, Lcom/android/server/connectivity/tethering/EntitlementManager;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    const-string v3, "Tether state:"

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const/4 v3, 0x0

    :goto_0
    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/connectivity/Tethering$TetherState;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " - "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    iget v6, v5, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    if-eqz v6, :cond_4

    const/4 v7, 0x1

    if-eq v6, v7, :cond_3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    const-string v6, "UnknownState"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v6, "LocalHotspotState"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    const-string v6, "TetheredState"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string v6, "AvailableState"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    const-string v6, "UnavailableState"

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->print(Ljava/lang/String;)V

    nop

    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " - lastError = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v5, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Upstream wanted: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->upstreamWanted()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Current upstream interface(s): "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mCurrentUpstreamIfaceSet:Landroid/net/util/InterfaceSet;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "Hardware offload:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mOffloadController:Lcom/android/server/connectivity/tethering/OffloadController;

    invoke-virtual {v2, v0}, Lcom/android/server/connectivity/tethering/OffloadController;->dump(Lcom/android/internal/util/IndentingPrintWriter;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "Log:"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    const-string v2, "--short"

    invoke-static {p3, v2}, Lcom/android/server/connectivity/Tethering;->argsContain([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "<log removed for brevity>"

    invoke-virtual {v0, v2}, Lcom/android/internal/util/IndentingPrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    invoke-virtual {v2, p1, v0, p3}, Landroid/net/util/SharedLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :goto_2
    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    invoke-virtual {v0}, Lcom/android/internal/util/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/util/IndentingPrintWriter;

    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public getErroredIfaces()[Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Tethering$TetherState;

    iget v4, v3, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getLastTetherError(Ljava/lang/String;)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    if-nez v1, :cond_0

    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to getLastTetherError on an unknown iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    monitor-exit v0

    return v2

    :cond_0
    iget v2, v1, Lcom/android/server/connectivity/Tethering$TetherState;->lastError:I

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getLatestTetheringEntitlementResult(ILandroid/os/ResultReceiver;Z)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/connectivity/tethering/EntitlementManager;->getLatestTetheringEntitlementResult(ILandroid/os/ResultReceiver;Z)V

    :cond_0
    return-void
.end method

.method public getTetherableBluetoothRegexs()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableBluetoothRegexs:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->copy([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetherableIfaces()[Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Tethering$TetherState;

    iget v4, v3, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getTetherableUsbRegexs()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableUsbRegexs:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->copy([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetherableWifiRegexs()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableWifiRegexs:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/connectivity/Tethering;->copy([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTetheredDhcpRanges()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v0, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->legacyDhcpRanges:[Ljava/lang/String;

    return-object v0
.end method

.method public getTetheredIfaces()[Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    const/4 v2, 0x0

    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/connectivity/Tethering$TetherState;

    iget v4, v3, Lcom/android/server/connectivity/Tethering$TetherState;->lastState:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public getTetheringConfiguration()Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    return-object v0
.end method

.method public hasTetherableConfiguration()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    iget-object v1, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableUsbRegexs:[Ljava/lang/String;

    array-length v1, v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableWifiRegexs:[Ljava/lang/String;

    array-length v1, v1

    if-nez v1, :cond_1

    iget-object v1, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->tetherableBluetoothRegexs:[Ljava/lang/String;

    array-length v1, v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v3

    :goto_1
    iget-object v4, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->preferredUpstreamIfaceTypes:Ljava/util/Collection;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    iget-boolean v4, v0, Lcom/android/server/connectivity/tethering/TetheringConfiguration;->chooseUpstreamAutomatically:Z

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v4, v2

    goto :goto_3

    :cond_3
    :goto_2
    move v4, v3

    :goto_3
    if-eqz v1, :cond_4

    if-eqz v4, :cond_4

    move v2, v3

    :cond_4
    return v2
.end method

.method public interfaceAdded(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->maybeTrackNewInterfaceLocked(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public interfaceLinkStateChanged(Ljava/lang/String;Z)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/connectivity/Tethering;->interfaceStatusChanged(Ljava/lang/String;Z)V

    return-void
.end method

.method public interfaceRemoved(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->stopTrackingInterfaceLocked(Ljava/lang/String;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public interfaceStatusChanged(Ljava/lang/String;Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    if-eqz p2, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->maybeTrackNewInterfaceLocked(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->ifaceNameToType(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/Tethering;->stopTrackingInterfaceLocked(Ljava/lang/String;)V

    :cond_1
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public synthetic lambda$new$0$Tethering(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v1, "OBSERVED UiEnitlementFailed"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    return-void
.end method

.method public synthetic lambda$new$1$Tethering()Lcom/android/server/connectivity/tethering/TetheringConfiguration;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->maybeDefaultDataSubChanged()V

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    return-object v0
.end method

.method public synthetic lambda$new$2$Tethering(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v1, "OBSERVED carrier config change"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->updateConfiguration()V

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->reevaluateSimCardProvisioning(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V

    return-void
.end method

.method public synthetic lambda$new$3$Tethering(Landroid/content/Intent;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v1, "OBSERVED default data subscription change"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/connectivity/Tethering;->maybeDefaultDataSubChanged()V

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->getCarrierConfig(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)Landroid/os/PersistableBundle;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mConfig:Lcom/android/server/connectivity/tethering/TetheringConfiguration;

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->reevaluateSimCardProvisioning(Lcom/android/server/connectivity/tethering/TetheringConfiguration;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string v1, "IGNORED reevaluate provisioning due to no carrier config loaded"

    invoke-virtual {v0, v1}, Landroid/net/util/SharedLog;->log(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public synthetic lambda$registerTetheringEventCallback$4$Tethering(Landroid/net/ITetheringEventCallback;)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetherUpstream:Landroid/net/Network;

    invoke-interface {p1, v0}, Landroid/net/ITetheringEventCallback;->onUpstreamChanged(Landroid/net/Network;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheringEventCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    return-void
.end method

.method public synthetic lambda$unregisterTetheringEventCallback$5$Tethering(Landroid/net/ITetheringEventCallback;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mTetheringEventCallbacks:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    return-void
.end method

.method public registerTetheringEventCallback(Landroid/net/ITetheringEventCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/connectivity/-$$Lambda$Tethering$CL7AR28AECaRXzwrU9_xiYIE5GE;

    invoke-direct {v1, p0, p1}, Lcom/android/server/connectivity/-$$Lambda$Tethering$CL7AR28AECaRXzwrU9_xiYIE5GE;-><init>(Lcom/android/server/connectivity/Tethering;Landroid/net/ITetheringEventCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public setUsbTethering(Z)I
    .locals 4

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "usb"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mLog:Landroid/net/util/SharedLog;

    const-string/jumbo v2, "setUsbTethering: failed to get UsbManager!"

    invoke-virtual {v1, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    const/4 v1, 0x2

    return v1

    :cond_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v1

    if-eqz p1, :cond_1

    const-wide/16 v2, 0x20

    goto :goto_0

    :cond_1
    const-wide/16 v2, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {v0, v2, v3}, Landroid/hardware/usb/UsbManager;->setCurrentFunctions(J)V

    monitor-exit v1

    const/4 v1, 0x0

    return v1

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public showSoftApClientsNotification(I)V
    .locals 1

    iput p1, p0, Lcom/android/server/connectivity/Tethering;->mConnectedClients:I

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mUsbTethered:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/connectivity/Tethering;->mBluetoothTethered:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const v0, 0x33954ba

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0xe

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/Tethering;->showTetheredNotification(I)V

    :goto_1
    return-void
.end method

.method protected showTetheredNotification(IZ)V
    .locals 17
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    move-object/from16 v1, p0

    move/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "notification"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/app/NotificationManager;

    if-nez v3, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v4, 0x0

    const/16 v5, 0xf

    if-eq v2, v5, :cond_3

    const/16 v6, 0x10

    if-eq v2, v6, :cond_2

    const v6, 0x33954ba

    if-eq v2, v6, :cond_1

    const v4, 0x108082e

    move v6, v0

    goto :goto_0

    :cond_1
    const v4, 0x1080830

    const/4 v0, 0x0

    move v6, v0

    goto :goto_0

    :cond_2
    const v4, 0x108082d

    move v6, v0

    goto :goto_0

    :cond_3
    const v4, 0x108082f

    move v6, v0

    :goto_0
    iget v0, v1, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    const v7, 0x1080830

    const/4 v8, 0x0

    const/4 v9, 0x0

    if-eqz v0, :cond_5

    if-ne v0, v4, :cond_4

    if-eq v4, v7, :cond_4

    return-void

    :cond_4
    iget v0, v1, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v3, v8, v0, v10}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    iput v9, v1, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    :cond_5
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    move-object v15, v0

    const-string v0, "com.android.settings"

    const-string v10, "com.android.settings.TetherSettings"

    invoke-virtual {v15, v0, v10}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {v15, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v10, v1, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const/4 v11, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    sget-object v0, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    move-object v12, v15

    move-object/from16 v16, v15

    move-object v15, v0

    invoke-static/range {v10 .. v15}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v10

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    const/4 v0, 0x1

    if-eqz p2, :cond_b

    invoke-static {}, Lcom/oneplus/android/wifi/OpWifiCustomizeReader;->isTmobileSku()Z

    move-result v12

    if-eqz v12, :cond_7

    const/16 v12, 0xe

    if-ne v2, v12, :cond_6

    const v12, 0x50d0097

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    goto :goto_1

    :cond_6
    const v12, 0x50d009a

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    goto :goto_1

    :cond_7
    const v12, 0x10406fa

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    :goto_1
    if-ne v4, v7, :cond_a

    iget v7, v1, Lcom/android/server/connectivity/Tethering;->mConnectedClients:I

    if-nez v7, :cond_8

    const v7, 0x50d0098

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_2

    :cond_8
    if-ne v7, v0, :cond_9

    const v7, 0x50d0099

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v13, v0, [Ljava/lang/Object;

    iget v14, v1, Lcom/android/server/connectivity/Tethering;->mConnectedClients:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v9

    invoke-static {v7, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_9
    const v7, 0x50d0096

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    new-array v13, v0, [Ljava/lang/Object;

    iget v14, v1, Lcom/android/server/connectivity/Tethering;->mConnectedClients:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v9

    invoke-static {v7, v13}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    goto :goto_2

    :cond_a
    const v7, 0x10406f9

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    goto :goto_2

    :cond_b
    const v7, 0x1040209

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v12

    const v7, 0x1040208

    invoke-virtual {v11, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    :goto_2
    invoke-static {}, Lcom/oneplus/android/wifi/OpWifiCustomizeReader;->isTmobileSku()Z

    move-result v13

    if-eqz v13, :cond_c

    if-eq v2, v5, :cond_c

    const v4, 0x5060054

    :cond_c
    new-instance v5, Landroid/app/NotificationChannel;

    iget-object v13, v1, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const v14, 0x50d0059

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x3

    const-string v15, "HOTSPOT_TETHERING_STATUS"

    invoke-direct {v5, v15, v13, v14}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v5, v0}, Landroid/app/NotificationChannel;->setBlockableSystem(Z)V

    invoke-virtual {v5, v9}, Landroid/app/NotificationChannel;->enableVibration(Z)V

    invoke-virtual {v5, v8, v8}, Landroid/app/NotificationChannel;->setSound(Landroid/net/Uri;Landroid/media/AudioAttributes;)V

    invoke-virtual {v5, v9}, Landroid/app/NotificationChannel;->enableLights(Z)V

    invoke-virtual {v3, v5}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    const/4 v13, 0x0

    iget-object v14, v1, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v14

    :try_start_0
    iget-object v15, v1, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    if-nez v15, :cond_d

    new-instance v15, Landroid/app/Notification$Builder;

    iget-object v8, v1, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const-string v9, "HOTSPOT_TETHERING_STATUS"

    invoke-direct {v15, v8, v9}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v15, v1, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    iget-object v8, v1, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-wide/16 v0, 0x0

    :try_start_1
    invoke-virtual {v8, v0, v1}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v1, p0

    :try_start_2
    iget-object v8, v1, Lcom/android/server/connectivity/Tethering;->mContext:Landroid/content/Context;

    const v15, 0x106001c

    invoke-virtual {v8, v15}, Landroid/content/Context;->getColor(I)I

    move-result v8

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v8, 0x1

    invoke-virtual {v0, v8}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string/jumbo v9, "status"

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setCategory(Ljava/lang/String;)Landroid/app/Notification$Builder;

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object/from16 v1, p0

    goto :goto_6

    :cond_d
    move v8, v0

    :goto_3
    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v12}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v10}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v9, "com.android.server.connectivity.tethering"

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setGroup(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v9, 0x0

    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :try_start_3
    iget-object v0, v1, Lcom/android/server/connectivity/Tethering;->mTetheredNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    move-object v13, v0

    iget-object v0, v13, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v15, "hide_icon"

    if-nez v6, :cond_e

    goto :goto_4

    :cond_e
    move v8, v9

    :goto_4
    invoke-virtual {v0, v15, v8}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catch_0
    move-exception v0

    :try_start_4
    sget-object v8, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "TetheredNotificationBuilder build e:"

    invoke-virtual {v9, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    monitor-exit v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v13, :cond_f

    iput v4, v1, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    iget v0, v1, Lcom/android/server/connectivity/Tethering;->mLastNotificationId:I

    sget-object v8, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    invoke-virtual {v3, v9, v0, v13, v8}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    :cond_f
    return-void

    :catchall_1
    move-exception v0

    :goto_6
    :try_start_5
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    throw v0
.end method

.method public startTethering(ILandroid/os/ResultReceiver;ZLjava/lang/String;)V
    .locals 3

    if-nez p1, :cond_0

    sget-object v0, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startTethering caller:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p4, p0, Lcom/android/server/connectivity/Tethering;->mCallerPkg:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/connectivity/Tethering;->mCallerPkg:Ljava/lang/String;

    :goto_0
    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/connectivity/tethering/EntitlementManager;->startProvisioningIfNeeded(IZ)V

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p2, p4}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;Ljava/lang/String;)V

    return-void
.end method

.method public stopTethering(I)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/connectivity/Tethering;->enableTetheringInternal(IZLandroid/os/ResultReceiver;)V

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-virtual {v0, p1}, Lcom/android/server/connectivity/tethering/EntitlementManager;->stopProvisioningIfNeeded(I)V

    return-void
.end method

.method public systemReady()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mUpstreamNetworkMonitor:Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mDeps:Lcom/android/server/connectivity/tethering/TetheringDependencies;

    invoke-virtual {v1}, Lcom/android/server/connectivity/tethering/TetheringDependencies;->getDefaultNetworkRequest()Landroid/net/NetworkRequest;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/Tethering;->mEntitlementMgr:Lcom/android/server/connectivity/tethering/EntitlementManager;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;->startTrackDefaultNetwork(Landroid/net/NetworkRequest;Lcom/android/server/connectivity/tethering/EntitlementManager;)V

    return-void
.end method

.method public tether(Ljava/lang/String;)I
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/server/connectivity/Tethering;->tether(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public unregisterTetheringEventCallback(Landroid/net/ITetheringEventCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/connectivity/-$$Lambda$Tethering$XBoGgF8AkKeshbpj45SRWFjtpIQ;

    invoke-direct {v1, p0, p1}, Lcom/android/server/connectivity/-$$Lambda$Tethering$XBoGgF8AkKeshbpj45SRWFjtpIQ;-><init>(Lcom/android/server/connectivity/Tethering;Landroid/net/ITetheringEventCallback;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public untether(Ljava/lang/String;)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/connectivity/Tethering;->mPublicSync:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/connectivity/Tethering;->mTetherStates:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/connectivity/Tethering$TetherState;

    if-nez v1, :cond_0

    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to Untether an unknown iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x1

    monitor-exit v0

    return v2

    :cond_0
    invoke-virtual {v1}, Lcom/android/server/connectivity/Tethering$TetherState;->isCurrentlyServing()Z

    move-result v2

    if-nez v2, :cond_1

    sget-object v2, Lcom/android/server/connectivity/Tethering;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Tried to untether an inactive iface :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", ignoring"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x4

    monitor-exit v0

    return v2

    :cond_1
    iget-object v2, v1, Lcom/android/server/connectivity/Tethering$TetherState;->ipServer:Landroid/net/ip/IpServer;

    const v3, 0x50067

    invoke-virtual {v2, v3}, Landroid/net/ip/IpServer;->sendMessage(I)V

    const/4 v2, 0x0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public untetherAll()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/server/connectivity/Tethering;->stopTethering(I)V

    return-void
.end method
