.class public final Lcom/android/server/autofill/AutofillManagerService;
.super Lcom/android/server/infra/AbstractMasterSystemService;
.source "AutofillManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;,
        Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;,
        Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;,
        Lcom/android/server/autofill/AutofillManagerService$PackageCompatState;,
        Lcom/android/server/autofill/AutofillManagerService$LocalService;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/infra/AbstractMasterSystemService<",
        "Lcom/android/server/autofill/AutofillManagerService;",
        "Lcom/android/server/autofill/AutofillManagerServiceImpl;",
        ">;"
    }
.end annotation


# static fields
.field private static final COMPAT_PACKAGE_DELIMITER:C = ':'

.field private static final COMPAT_PACKAGE_URL_IDS_BLOCK_BEGIN:C = '['

.field private static final COMPAT_PACKAGE_URL_IDS_BLOCK_END:C = ']'

.field private static final COMPAT_PACKAGE_URL_IDS_DELIMITER:C = ','

.field private static final DEFAULT_AUGMENTED_AUTOFILL_REQUEST_TIMEOUT_MILLIS:I = 0x1388

.field static final RECEIVER_BUNDLE_EXTRA_SESSIONS:Ljava/lang/String; = "sessions"

.field private static final TAG:Ljava/lang/String; = "AutofillManagerService"

.field private static final sLock:Ljava/lang/Object;

.field private static sPartitionMaxCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sLock"
        }
    .end annotation
.end field

.field private static sVisibleDatasetsMaxCount:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "sLock"
        }
    .end annotation
.end field


# instance fields
.field private final mAm:Landroid/app/ActivityManagerInternal;

.field final mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

.field final mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

.field mAugmentedServiceIdleUnbindTimeoutMs:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field mAugmentedServiceRequestTimeoutMs:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mLocalService:Lcom/android/server/autofill/AutofillManagerService$LocalService;

.field private final mRequestsHistory:Landroid/util/LocalLog;

.field private mSupportedSmartSuggestionModes:I
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "mLock"
        }
    .end annotation
.end field

.field private final mUi:Lcom/android/server/autofill/ui/AutoFillUI;

.field private final mUiLatencyHistory:Landroid/util/LocalLog;

.field private final mWtfHistory:Landroid/util/LocalLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/autofill/AutofillManagerService;

    sput-object v0, Lcom/android/server/autofill/AutofillManagerService;->sLock:Ljava/lang/Object;

    const/16 v0, 0xa

    sput v0, Lcom/android/server/autofill/AutofillManagerService;->sPartitionMaxCount:I

    const/4 v0, 0x0

    sput v0, Lcom/android/server/autofill/AutofillManagerService;->sVisibleDatasetsMaxCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    new-instance v0, Lcom/android/server/infra/SecureSettingsServiceNameResolver;

    const-string v1, "autofill_service"

    invoke-direct {v0, p1, v1}, Lcom/android/server/infra/SecureSettingsServiceNameResolver;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const-string/jumbo v1, "no_autofill"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/infra/AbstractMasterSystemService;-><init>(Landroid/content/Context;Lcom/android/server/infra/ServiceNameResolver;Ljava/lang/String;)V

    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    new-instance v0, Landroid/util/LocalLog;

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mUiLatencyHistory:Landroid/util/LocalLog;

    new-instance v0, Landroid/util/LocalLog;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Landroid/util/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mWtfHistory:Landroid/util/LocalLog;

    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    invoke-direct {v0}, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$LocalService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/autofill/AutofillManagerService$LocalService;-><init>(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/server/autofill/AutofillManagerService$1;)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLocalService:Lcom/android/server/autofill/AutofillManagerService$LocalService;

    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/AutofillManagerService$1;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    invoke-direct {v0}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;-><init>()V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    new-instance v0, Lcom/android/server/autofill/ui/AutoFillUI;

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/server/autofill/ui/AutoFillUI;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    iput-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAm:Landroid/app/ActivityManagerInternal;

    nop

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v2, Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$AjdnAnVaegTp2pojE30m5yjqZx8;

    invoke-direct {v2, p0}, Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$AjdnAnVaegTp2pojE30m5yjqZx8;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

    const-string v3, "autofill"

    invoke-static {v3, v0, v2}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService;->setLogLevelFromSettings()V

    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService;->setMaxPartitionsFromSettings()V

    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService;->setMaxVisibleDatasetsFromSettings()V

    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService;->setDeviceConfigProperties()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/android/server/FgThread;->getHandler()Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {p1, v2, v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v1, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x104015e

    invoke-direct {v1, v2, v3}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    new-instance v2, Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$6afarI-dhLaYDLGebVyDMPu2nok;

    invoke-direct {v2, p0}, Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$6afarI-dhLaYDLGebVyDMPu2nok;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->setOnTemporaryServiceNameChangedCallback(Lcom/android/server/infra/ServiceNameResolver$NameResolverListener;)V

    iget v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mSupportedSmartSuggestionModes:I

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    iget v4, v4, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p0, v4}, Lcom/android/server/autofill/AutofillManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    iget-object v5, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    iget-object v6, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    invoke-virtual {v6, v4}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->getServiceName(I)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    invoke-virtual {v7, v4}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->isTemporary(I)Z

    move-result v7

    invoke-static {v5, v4, v6, v7}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->access$400(Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;ILjava/lang/String;Z)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->visitServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/server/autofill/AutofillManagerService;)Landroid/app/ActivityManagerInternal;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAm:Landroid/app/ActivityManagerInternal;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/server/autofill/AutofillManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAllowInstantService:Z

    return v0
.end method

.method static synthetic access$2500(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;II)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Landroid/os/Parcelable;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;Landroid/os/Parcelable;)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/ui/AutoFillUI;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    return-object v0
.end method

.method static synthetic access$3000(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;Z)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/internal/os/IResultReceiver;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5000(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5200(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5500(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5600(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5700(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$5800(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$5900(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6000(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6100(Lcom/android/server/autofill/AutofillManagerService;I)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->isDisabledLocked(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6200(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6300(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6400(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6500(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$6600(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$6700(Lcom/android/server/autofill/AutofillManagerService;Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->dumpLocked(Ljava/lang/String;Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$6800()I
    .locals 1

    sget v0, Lcom/android/server/autofill/AutofillManagerService;->sPartitionMaxCount:I

    return v0
.end method

.method static synthetic access$6900()I
    .locals 1

    sget v0, Lcom/android/server/autofill/AutofillManagerService;->sVisibleDatasetsMaxCount:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    return-object v0
.end method

.method static synthetic access$7100(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService;->getWhitelistedCompatModePackagesFromSettings()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$7200(Lcom/android/server/autofill/AutofillManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mSupportedSmartSuggestionModes:I

    return v0
.end method

.method static synthetic access$7300(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/LocalLog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/LocalLog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mUiLatencyHistory:Landroid/util/LocalLog;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/server/autofill/AutofillManagerService;)Landroid/util/LocalLog;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mWtfHistory:Landroid/util/LocalLog;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v0

    return-object v0
.end method

.method private addCompatibilityModeRequestsLocked(Lcom/android/server/autofill/AutofillManagerServiceImpl;I)V
    .locals 12

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    invoke-virtual {v0, p2}, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->reset(I)V

    nop

    invoke-virtual {p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->getCompatibilityPackagesLocked()Landroid/util/ArrayMap;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_3

    :cond_0
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService;->getWhitelistedCompatModePackages()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_4

    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Ljava/lang/Long;

    if-eqz v11, :cond_3

    iget-object v5, p0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    invoke-interface {v1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v9, v6

    check-cast v9, [Ljava/lang/String;

    move-object v6, v4

    move v10, p2

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->addCompatibilityModeRequest(Ljava/lang/String;J[Ljava/lang/String;I)V

    goto :goto_2

    :cond_2
    :goto_1
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignoring not whitelisted compat package "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "AutofillManagerService"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_4
    return-void

    :cond_5
    :goto_3
    return-void
.end method

.method public static getPartitionMaxCount()I
    .locals 2

    sget-object v0, Lcom/android/server/autofill/AutofillManagerService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/android/server/autofill/AutofillManagerService;->sPartitionMaxCount:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getVisibleDatasetsMaxCount()I
    .locals 2

    sget-object v0, Lcom/android/server/autofill/AutofillManagerService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/android/server/autofill/AutofillManagerService;->sVisibleDatasetsMaxCount:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getWhitelistedCompatModePackages()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService;->getWhitelistedCompatModePackagesFromSettings()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->getWhitelistedCompatModePackages(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static getWhitelistedCompatModePackages(Ljava/lang/String;)Ljava/util/Map;
    .locals 12
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    new-instance v2, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v3, 0x3a

    invoke-direct {v2, v3}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-virtual {v2, p0}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-virtual {v2}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x5b

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_1

    move-object v5, v3

    const/4 v6, 0x0

    goto/16 :goto_2

    :cond_1
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v3, v5}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const-string v6, "AutofillManagerService"

    const/16 v7, 0x5d

    if-eq v5, v7, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ignoring entry \'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\' on \'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "\'because it does not end on \'"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v7, "\'"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    add-int/lit8 v8, v4, 0x1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v3, v8, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    sget-boolean v9, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v9, :cond_3

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "pkg:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ": block:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": urls:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, ":"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v6, v9}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance v6, Landroid/text/TextUtils$SimpleStringSplitter;

    const/16 v9, 0x2c

    invoke-direct {v6, v9}, Landroid/text/TextUtils$SimpleStringSplitter;-><init>(C)V

    invoke-virtual {v6, v8}, Landroid/text/TextUtils$SimpleStringSplitter;->setString(Ljava/lang/String;)V

    :goto_1
    invoke-virtual {v6}, Landroid/text/TextUtils$SimpleStringSplitter;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_4

    invoke-virtual {v6}, Landroid/text/TextUtils$SimpleStringSplitter;->next()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v7, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    move-object v6, v7

    :goto_2
    if-nez v6, :cond_5

    invoke-virtual {v0, v5, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    new-array v7, v7, [Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    invoke-virtual {v0, v5, v7}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_3
    goto/16 :goto_0

    :cond_6
    return-object v0
.end method

.method private getWhitelistedCompatModePackagesFromSettings()Ljava/lang/String;
    .locals 2

    nop

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autofill_compat_mode_allowed_packages"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$destroySessions$2(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->destroySessionsLocked()V

    return-void
.end method

.method static synthetic lambda$listSessions$3(Ljava/util/ArrayList;Lcom/android/server/autofill/AutofillManagerServiceImpl;)V
    .locals 0

    invoke-virtual {p1, p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->listSessionsLocked(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic lambda$reset$4(Lcom/android/server/autofill/AutofillManagerServiceImpl;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->destroyLocked()V

    return-void
.end method

.method private onAugmentedServiceNameChanged(ILjava/lang/String;Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    invoke-static {v0, p1, p2, p3}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->access$400(Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;ILjava/lang/String;Z)V

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->updateRemoteAugmentedAutofillService()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private onDeviceConfigChange(Ljava/util/Set;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const v4, -0x5c32f116

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-eq v3, v4, :cond_3

    const v4, -0x3adc2628

    if-eq v3, v4, :cond_2

    const v4, 0x65df5c5a

    if-eq v3, v4, :cond_1

    :cond_0
    goto :goto_1

    :cond_1
    const-string/jumbo v3, "smart_suggestion_supported_modes"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    const-string v3, "augmented_service_request_timeout"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v5

    goto :goto_1

    :cond_3
    const-string v3, "augmented_service_idle_unbind_timeout"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v2, v6

    :goto_1
    if-eqz v2, :cond_4

    if-eq v2, v6, :cond_4

    if-eq v2, v5, :cond_4

    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring change on "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService;->setDeviceConfigProperties()V

    nop

    :goto_2
    goto :goto_0

    :cond_5
    return-void
.end method

.method private send(Lcom/android/internal/os/IResultReceiver;I)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, p2, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error async reporting result to client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private send(Lcom/android/internal/os/IResultReceiver;II)V
    .locals 3

    :try_start_0
    invoke-static {p3}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(I)Landroid/os/Bundle;

    move-result-object v0

    invoke-interface {p1, p2, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error async reporting result to client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private send(Lcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    invoke-interface {p1, v0, p2}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error async reporting result to client: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private send(Lcom/android/internal/os/IResultReceiver;Landroid/os/Parcelable;)V
    .locals 1

    invoke-static {p2}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Landroid/os/Parcelable;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;)V

    return-void
.end method

.method private send(Lcom/android/internal/os/IResultReceiver;Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;)V

    return-void
.end method

.method private send(Lcom/android/internal/os/IResultReceiver;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;I)V

    return-void
.end method

.method private send(Lcom/android/internal/os/IResultReceiver;[Ljava/lang/String;)V
    .locals 1

    invoke-static {p2}, Lcom/android/internal/util/SyncResultReceiver;->bundleFor([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/autofill/AutofillManagerService;->send(Lcom/android/internal/os/IResultReceiver;Landroid/os/Bundle;)V

    return-void
.end method

.method private setDeviceConfigProperties()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "autofill"

    const-string v2, "augmented_service_idle_unbind_timeout"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceIdleUnbindTimeoutMs:I

    const-string v1, "autofill"

    const-string v2, "augmented_service_request_timeout"

    const/16 v3, 0x1388

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceRequestTimeoutMs:I

    const-string v1, "autofill"

    const-string/jumbo v2, "smart_suggestion_supported_modes"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mSupportedSmartSuggestionModes:I

    iget-boolean v1, p0, Lcom/android/server/autofill/AutofillManagerService;->verbose:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mTag:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setDeviceConfigProperties(): augmentedIdleTimeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceIdleUnbindTimeoutMs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", augmentedRequestTimeout="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedServiceRequestTimeoutMs:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", smartSuggestionMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/autofill/AutofillManagerService;->mSupportedSmartSuggestionModes:I

    invoke-static {v3}, Landroid/view/autofill/AutofillManager;->getSmartSuggestionModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private setLogLevelFromSettings()V
    .locals 5

    nop

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget v1, Landroid/view/autofill/AutofillManager;->DEFAULT_LOGGING_LEVEL:I

    const-string v2, "autofill_logging_level"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    const/4 v3, 0x4

    if-ne v0, v3, :cond_0

    const/4 v3, 0x1

    move v2, v3

    move v1, v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLogLevelFromSettings(): invalid level: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AutofillManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    if-nez v1, :cond_3

    sget-boolean v3, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v3, :cond_4

    :cond_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setLogLevelFromSettings(): level="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", debug="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", verbose="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "AutofillManagerService"

    invoke-static {v4, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-direct {p0, v1, v2}, Lcom/android/server/autofill/AutofillManagerService;->setLoggingLevelsLocked(ZZ)V

    monitor-exit v3

    return-void

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method private setLoggingLevelsLocked(ZZ)V
    .locals 0

    sput-boolean p1, Lcom/android/server/autofill/Helper;->sDebug:Z

    sput-boolean p1, Landroid/view/autofill/Helper;->sDebug:Z

    iput-boolean p1, p0, Lcom/android/server/autofill/AutofillManagerService;->debug:Z

    sput-boolean p2, Lcom/android/server/autofill/Helper;->sVerbose:Z

    sput-boolean p2, Landroid/view/autofill/Helper;->sVerbose:Z

    iput-boolean p2, p0, Lcom/android/server/autofill/AutofillManagerService;->verbose:Z

    return-void
.end method

.method private setMaxPartitionsFromSettings()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autofill_max_partitions_size"

    const/16 v2, 0xa

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMaxPartitionsFromSettings(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/android/server/autofill/AutofillManagerService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput v0, Lcom/android/server/autofill/AutofillManagerService;->sPartitionMaxCount:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setMaxVisibleDatasetsFromSettings()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autofill_max_visible_datasets"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMaxVisibleDatasetsFromSettings(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AutofillManagerService"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v1, Lcom/android/server/autofill/AutofillManagerService;->sLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    sput v0, Lcom/android/server/autofill/AutofillManagerService;->sVisibleDatasetsMaxCount:I

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method


# virtual methods
.method calculateScore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/RemoteCallback;)V
    .locals 9

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    new-instance v0, Lcom/android/server/autofill/FieldClassificationStrategy;

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Lcom/android/server/autofill/FieldClassificationStrategy;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x1

    new-array v2, v1, [Landroid/view/autofill/AutofillValue;

    invoke-static {p2}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-array v3, v1, [Ljava/lang/String;

    aput-object p3, v3, v4

    const/4 v1, 0x0

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p4

    move-object v5, p1

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/autofill/FieldClassificationStrategy;->calculateScores(Landroid/os/RemoteCallback;Ljava/util/List;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/util/ArrayMap;Landroid/util/ArrayMap;)V

    return-void
.end method

.method destroySessions(ILcom/android/internal/os/IResultReceiver;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "destroySessions() for userId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, -0x1

    if-eq p1, v1, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->destroySessionsLocked()V

    :cond_0
    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$J4rMQC_cWRd6Td3UdzyhcfhT9xc;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$J4rMQC_cWRd6Td3UdzyhcfhT9xc;

    invoke-virtual {p0, v1}, Lcom/android/server/autofill/AutofillManagerService;->visitServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V

    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x0

    :try_start_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-interface {p2, v0, v1}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_1
    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method protected enforceCallingPermissionForManagement()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.MANAGE_AUTO_FILL"

    const-string v2, "AutofillManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method getFullScreenMode()Ljava/lang/Boolean;
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    sget-object v0, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    return-object v0
.end method

.method getLogLevel()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sVerbose:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    monitor-exit v0

    return v1

    :cond_0
    sget-boolean v1, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    monitor-exit v0

    return v1

    :cond_1
    const/4 v1, 0x0

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getMaxPartitions()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/android/server/autofill/AutofillManagerService;->sPartitionMaxCount:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getMaxVisibleDatasets()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    sget-object v0, Lcom/android/server/autofill/AutofillManagerService;->sLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget v1, Lcom/android/server/autofill/AutofillManagerService;->sVisibleDatasetsMaxCount:I

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getServiceSettingsProperty()Ljava/lang/String;
    .locals 1

    const-string v0, "autofill_service"

    return-object v0
.end method

.method getSupportedSmartSuggestionModesLocked()I
    .locals 1

    iget v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mSupportedSmartSuggestionModes:I

    return v0
.end method

.method isDefaultAugmentedServiceEnabled(I)Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    invoke-virtual {v0, p1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->isDefaultServiceEnabled(I)Z

    move-result v0

    return v0
.end method

.method isInstantServiceAllowed()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAllowInstantService:Z

    return v0
.end method

.method public synthetic lambda$new$0$AutofillManagerService(Landroid/provider/DeviceConfig$Properties;)V
    .locals 1

    invoke-virtual {p1}, Landroid/provider/DeviceConfig$Properties;->getKeyset()Ljava/util/Set;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/autofill/AutofillManagerService;->onDeviceConfigChange(Ljava/util/Set;)V

    return-void
.end method

.method public synthetic lambda$new$1$AutofillManagerService(ILjava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/autofill/AutofillManagerService;->onAugmentedServiceNameChanged(ILjava/lang/String;Z)V

    return-void
.end method

.method listSessions(ILcom/android/internal/os/IResultReceiver;)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "listSessions() for userId "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v2

    const/4 v3, -0x1

    if-eq p1, v3, :cond_1

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->peekServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v3

    check-cast v3, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    if-eqz v3, :cond_0

    invoke-virtual {v3, v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->listSessionsLocked(Ljava/util/ArrayList;)V

    :cond_0
    goto :goto_0

    :catchall_0
    move-exception v3

    goto :goto_2

    :cond_1
    new-instance v3, Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$froT1eG0jUnRoVv7cbUMLtO1bho;

    invoke-direct {v3, v1}, Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$froT1eG0jUnRoVv7cbUMLtO1bho;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v3}, Lcom/android/server/autofill/AutofillManagerService;->visitServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V

    :goto_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string/jumbo v2, "sessions"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    const/4 v2, 0x0

    :try_start_1
    invoke-interface {p2, v2, v0}, Lcom/android/internal/os/IResultReceiver;->send(ILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    :goto_1
    return-void

    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3
.end method

.method logRequestLocked(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mRequestsHistory:Landroid/util/LocalLog;

    invoke-virtual {v0, p1}, Landroid/util/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected newServiceLocked(IZ)Lcom/android/server/autofill/AutofillManagerServiceImpl;
    .locals 10

    new-instance v9, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/autofill/AutofillManagerService;->mUiLatencyHistory:Landroid/util/LocalLog;

    iget-object v4, p0, Lcom/android/server/autofill/AutofillManagerService;->mWtfHistory:Landroid/util/LocalLog;

    iget-object v6, p0, Lcom/android/server/autofill/AutofillManagerService;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    iget-object v7, p0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    move-object v0, v9

    move-object v1, p0

    move v5, p1

    move v8, p2

    invoke-direct/range {v0 .. v8}, Lcom/android/server/autofill/AutofillManagerServiceImpl;-><init>(Lcom/android/server/autofill/AutofillManagerService;Ljava/lang/Object;Landroid/util/LocalLog;Landroid/util/LocalLog;ILcom/android/server/autofill/ui/AutoFillUI;Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;Z)V

    return-object v9
.end method

.method protected bridge synthetic newServiceLocked(IZ)Lcom/android/server/infra/AbstractPerUserSystemService;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->newServiceLocked(IZ)Lcom/android/server/autofill/AutofillManagerServiceImpl;

    move-result-object p1

    return-object p1
.end method

.method protected onServiceEnabledLocked(Lcom/android/server/autofill/AutofillManagerServiceImpl;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->addCompatibilityModeRequestsLocked(Lcom/android/server/autofill/AutofillManagerServiceImpl;I)V

    return-void
.end method

.method protected bridge synthetic onServiceEnabledLocked(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .locals 0

    check-cast p1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->onServiceEnabledLocked(Lcom/android/server/autofill/AutofillManagerServiceImpl;I)V

    return-void
.end method

.method protected onServiceRemoved(Lcom/android/server/autofill/AutofillManagerServiceImpl;I)V
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->destroyLocked()V

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAutofillCompatState:Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    invoke-virtual {v0, p2}, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->removeCompatibilityModeRequests(I)V

    return-void
.end method

.method protected bridge synthetic onServiceRemoved(Lcom/android/server/infra/AbstractPerUserSystemService;I)V
    .locals 0

    check-cast p1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    invoke-virtual {p0, p1, p2}, Lcom/android/server/autofill/AutofillManagerService;->onServiceRemoved(Lcom/android/server/autofill/AutofillManagerServiceImpl;I)V

    return-void
.end method

.method protected onSettingsChanged(ILjava/lang/String;)V
    .locals 4

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x1

    sparse-switch v0, :sswitch_data_0

    :cond_0
    goto :goto_0

    :sswitch_0
    const-string v0, "autofill_compat_mode_allowed_packages"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_1
    const-string v0, "autofill_max_partitions_size"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto :goto_1

    :sswitch_2
    const-string v0, "autofill_logging_level"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_1

    :sswitch_3
    const-string v0, "autofill_max_visible_datasets"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :goto_0
    const/4 v0, -0x1

    :goto_1
    if-eqz v0, :cond_4

    if-eq v0, v3, :cond_3

    if-eq v0, v2, :cond_2

    if-eq v0, v1, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected property ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "); updating cache instead"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->updateCachedServiceLocked(I)V

    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_2
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService;->setMaxVisibleDatasetsFromSettings()V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService;->setMaxPartitionsFromSettings()V

    goto :goto_2

    :cond_4
    invoke-direct {p0}, Lcom/android/server/autofill/AutofillManagerService;->setLogLevelFromSettings()V

    nop

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6e3577f0 -> :sswitch_3
        -0x4d71a329 -> :sswitch_2
        -0x3e858531 -> :sswitch_1
        0x638fc930 -> :sswitch_0
    .end sparse-switch
.end method

.method public onStart()V
    .locals 2

    new-instance v0, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;

    invoke-direct {v0, p0}, Lcom/android/server/autofill/AutofillManagerService$AutoFillManagerServiceStub;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

    const-string v1, "autofill"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/autofill/AutofillManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v0, Landroid/view/autofill/AutofillManagerInternal;

    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService;->mLocalService:Lcom/android/server/autofill/AutofillManagerService$LocalService;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/autofill/AutofillManagerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public onSwitchUser(I)V
    .locals 2

    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "AutofillManagerService"

    const-string v1, "Hiding UI when user switched"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mUi:Lcom/android/server/autofill/ui/AutoFillUI;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAll(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    return-void
.end method

.method protected registerForExtraSettingsChanges(Landroid/content/ContentResolver;Landroid/database/ContentObserver;)V
    .locals 3

    const-string v0, "autofill_compat_mode_allowed_packages"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "autofill_logging_level"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "autofill_max_partitions_size"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "autofill_max_visible_datasets"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method reset()V
    .locals 2

    const-string v0, "AutofillManagerService"

    const-string/jumbo v1, "reset()"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$PR6iUwKxXatnzjgBDLARdxaGV3A;->INSTANCE:Lcom/android/server/autofill/-$$Lambda$AutofillManagerService$PR6iUwKxXatnzjgBDLARdxaGV3A;

    invoke-virtual {p0, v1}, Lcom/android/server/autofill/AutofillManagerService;->visitServicesLocked(Lcom/android/server/infra/AbstractMasterSystemService$Visitor;)V

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->clearCacheLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resetTemporaryAugmentedAutofillService(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    invoke-virtual {v0, p1}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->resetTemporaryService(I)V

    return-void
.end method

.method setDefaultAugmentedServiceEnabled(IZ)Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDefaultAugmentedServiceEnabled() for userId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/server/autofill/AutofillManagerService;->getServiceForUserLocked(I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    invoke-virtual {v2, p1, p2}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->setDefaultServiceEnabled(IZ)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->updateRemoteAugmentedAutofillService()V

    const/4 v3, 0x1

    monitor-exit v0

    return v3

    :cond_0
    iget-boolean v3, p0, Lcom/android/server/autofill/AutofillManagerService;->debug:Z

    if-eqz v3, :cond_1

    const-string v3, "AutofillManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setDefaultAugmentedServiceEnabled(): already "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v0

    const/4 v0, 0x0

    return v0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method setFullScreenMode(Ljava/lang/Boolean;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    sput-object p1, Lcom/android/server/autofill/Helper;->sFullScreenMode:Ljava/lang/Boolean;

    return-void
.end method

.method setLogLevel(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setLogLevel(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "autofill_logging_level"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method setMaxPartitions(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMaxPartitions(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "autofill_max_partitions_size"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method setMaxVisibleDatasets(I)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setMaxVisibleDatasets(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AutofillManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "autofill_max_visible_datasets"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method setTemporaryAugmentedAutofillService(ILjava/lang/String;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTemporaryAugmentedAutofillService("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "ms"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/autofill/AutofillManagerService;->enforceCallingPermissionForManagement()V

    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x1d4c0

    if-gt p3, v0, :cond_0

    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillResolver:Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/server/infra/FrameworkResourcesServiceNameResolver;->setTemporaryService(ILjava/lang/String;I)V

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max duration is 120000 (called with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
