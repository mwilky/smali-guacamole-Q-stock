.class public Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;
.super Ljava/lang/Object;
.source "DefaultPermissionGrantPolicyInjector.java"


# static fields
.field private static final CARRIER_1_ADAPT_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CARRIER_1_RSU_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CARRIER_2_CE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CARRIER_2_ECID_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CARRIER_2_MS_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CARRIER_2_VVM_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final CLOUD_SERVICE_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final INSTANT_APP_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOCATION_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final MARKET_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SPEECHASSIST_PERMISSIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DefaultPermissionGrantPolicyInjector"

.field private static mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

.field private static mDefaultPermissionGrantPolicyInjector:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_1_ADAPT_PERMISSIONS:Ljava/util/Set;

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_1_ADAPT_PERMISSIONS:Ljava/util/Set;

    const-string v1, "android.permission.CALL_PHONE"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_1_ADAPT_PERMISSIONS:Ljava/util/Set;

    const-string v2, "android.permission.READ_PHONE_STATE"

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_1_ADAPT_PERMISSIONS:Ljava/util/Set;

    const-string v3, "android.permission.RECEIVE_SMS"

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    const-string v4, "android.permission.PROCESS_OUTGOING_CALLS"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    const-string v5, "android.permission.READ_CALL_LOG"

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    const-string v6, "android.permission.USE_SIP"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    const-string v6, "android.permission.WRITE_CALL_LOG"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    const-string v6, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    const-string v7, "android.permission.ACCESS_FINE_LOCATION"

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    const-string v8, "android.permission.READ_SMS"

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_1_RSU_PERMISSIONS:Ljava/util/Set;

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_1_RSU_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_2_CE_PERMISSIONS:Ljava/util/Set;

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_2_CE_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_2_MS_PERMISSIONS:Ljava/util/Set;

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_2_MS_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_2_MS_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_2_MS_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_2_MS_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_2_ECID_PERMISSIONS:Ljava/util/Set;

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_2_ECID_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_2_ECID_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_2_ECID_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_2_ECID_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_2_ECID_PERMISSIONS:Ljava/util/Set;

    const-string v4, "android.permission.RECEIVE_MMS"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_2_ECID_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_2_ECID_PERMISSIONS:Ljava/util/Set;

    const-string v4, "android.permission.SEND_SMS"

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_2_ECID_PERMISSIONS:Ljava/util/Set;

    const-string v9, "android.permission.READ_CONTACTS"

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_2_ECID_PERMISSIONS:Ljava/util/Set;

    const-string v10, "android.permission.WRITE_CONTACTS"

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_2_ECID_PERMISSIONS:Ljava/util/Set;

    const-string v11, "android.permission.GET_ACCOUNTS"

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_2_VVM_PERMISSIONS:Ljava/util/Set;

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_2_VVM_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_2_VVM_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_2_VVM_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_2_VVM_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_2_VVM_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->MARKET_PERMISSIONS:Ljava/util/Set;

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->MARKET_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->MARKET_PERMISSIONS:Ljava/util/Set;

    const-string v11, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->MARKET_PERMISSIONS:Ljava/util/Set;

    const-string v12, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CLOUD_SERVICE_PERMISSIONS:Ljava/util/Set;

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CLOUD_SERVICE_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CLOUD_SERVICE_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CLOUD_SERVICE_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CLOUD_SERVICE_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->INSTANT_APP_PERMISSIONS:Ljava/util/Set;

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->INSTANT_APP_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->INSTANT_APP_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->INSTANT_APP_PERMISSIONS:Ljava/util/Set;

    const-string v13, "android.permission.WRITE_CALENDAR"

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->INSTANT_APP_PERMISSIONS:Ljava/util/Set;

    const-string v14, "android.permission.READ_CALENDAR"

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->INSTANT_APP_PERMISSIONS:Ljava/util/Set;

    const-string v15, "android.permission.CAMERA"

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->INSTANT_APP_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->INSTANT_APP_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->INSTANT_APP_PERMISSIONS:Ljava/util/Set;

    const-string v15, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->INSTANT_APP_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->INSTANT_APP_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->INSTANT_APP_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->INSTANT_APP_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->INSTANT_APP_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->LOCATION_PERMISSIONS:Ljava/util/Set;

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->LOCATION_PERMISSIONS:Ljava/util/Set;

    const-string v15, "android.permission.ACCESS_BACKGROUND_LOCATION"

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->LOCATION_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->SPEECHASSIST_PERMISSIONS:Ljava/util/Set;

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->SPEECHASSIST_PERMISSIONS:Ljava/util/Set;

    const-string v15, "android.permission.RECORD_AUDIO"

    invoke-interface {v0, v15}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->SPEECHASSIST_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->SPEECHASSIST_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v12}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->SPEECHASSIST_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v11}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->SPEECHASSIST_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->SPEECHASSIST_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->SPEECHASSIST_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->SPEECHASSIST_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v10}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->SPEECHASSIST_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->SPEECHASSIST_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->SPEECHASSIST_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v14}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->SPEECHASSIST_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->SPEECHASSIST_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->SPEECHASSIST_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->SPEECHASSIST_PERMISSIONS:Ljava/util/Set;

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;
    .locals 1

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->mDefaultPermissionGrantPolicyInjector:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;

    invoke-direct {v0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;-><init>()V

    sput-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->mDefaultPermissionGrantPolicyInjector:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;

    :cond_0
    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->mDefaultPermissionGrantPolicyInjector:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;

    return-object v0
.end method

.method public static grantDefaultPermissionToCloudServiceApp([I)V
    .locals 6

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CLOUD_SERVICE_PERMISSIONS:Ljava/util/Set;

    aput-object v5, v4, v1

    const-string v5, "com.heytap.cloud"

    invoke-static {v5, v3, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static grantDefaultPermissionToInstantApp([I)V
    .locals 6

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->INSTANT_APP_PERMISSIONS:Ljava/util/Set;

    aput-object v5, v4, v1

    const-string v5, "com.nearme.instant.platform"

    invoke-static {v5, v3, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static grantDefaultPermissionToLocationApp([I)V
    .locals 6

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->LOCATION_PERMISSIONS:Ljava/util/Set;

    aput-object v5, v4, v1

    const-string v5, "com.amap.android.location"

    invoke-static {v5, v3, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static grantDefaultPermissionToMarketAndGameCenterApp([I)V
    .locals 7

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->MARKET_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v5, v1

    const-string v6, "com.oppo.market"

    invoke-static {v6, v3, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    new-array v5, v4, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->MARKET_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v5, v1

    const-string v6, "com.heytap.market"

    invoke-static {v6, v3, v5}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    new-array v4, v4, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->MARKET_PERMISSIONS:Ljava/util/Set;

    aput-object v5, v4, v1

    const-string v5, "com.nearme.gamecenter"

    invoke-static {v5, v3, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static grantDefaultPermissionToSpeechAssist([I)V
    .locals 6

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget v3, p0, v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/util/Set;

    sget-object v5, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->SPEECHASSIST_PERMISSIONS:Ljava/util/Set;

    aput-object v5, v4, v1

    const-string v5, "com.heytap.speechassist"

    invoke-static {v5, v3, v4}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static grantDefaultPermissionToSystemApps([I)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->grantDefaultPermissionToMarketAndGameCenterApp([I)V

    invoke-static {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->grantDefaultPermissionToLocationApp([I)V

    invoke-static {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->grantDefaultPermissionToInstantApp([I)V

    invoke-static {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->grantDefaultPermissionToCloudServiceApp([I)V

    invoke-static {p0}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->grantDefaultPermissionToSpeechAssist([I)V

    return-void
.end method

.method public static varargs grantPermissionsToSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I[",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    if-nez v0, :cond_0

    const-string v0, "DefaultPermissionGrantPolicyInjector"

    const-string/jumbo v1, "mDefaultPermissionGrantPolicy is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemNonFixedPermissions(Ljava/lang/String;I[Ljava/util/Set;)V

    return-void
.end method

.method public static initInstance(Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;)V
    .locals 0

    sput-object p0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    return-void
.end method

.method public static revokeDefaultPermissionsFromBrowserApps([I)V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    if-nez v0, :cond_0

    const-string v0, "DefaultPermissionGrantPolicyInjector"

    const-string/jumbo v1, "mDefaultPermissionGrantPolicy is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "com.nearme.browser"

    const-string v2, "com.heytap.browser"

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    array-length v2, p0

    :goto_0
    if-ge v1, v2, :cond_1

    aget v3, p0, v1

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-virtual {v4, v0, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->revokeDefaultPermissionsFromBrowserApps([Ljava/lang/String;I)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public grantDefaultPermissionsToUssVVM(Landroid/content/Context;I)V
    .locals 14

    const-string v1, "DefaultPermissionGrantPolicyInjector"

    const-string v2, "com.sprint.vvm"

    const-string v3, "F8:60:14:53:9F:48:97:A8:1F:26:4F:41:1C:EA:45:EE:ED:D9:85:94"

    const-string v4, ""

    const/4 v5, 0x0

    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v7, 0x40

    invoke-virtual {v0, v2, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    if-eqz v7, :cond_2

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    array-length v7, v7

    if-lez v7, :cond_2

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    aget-object v7, v7, v5

    invoke-virtual {v7}, Landroid/content/pm/Signature;->toByteArray()[B

    move-result-object v7

    const-string v8, "SHA1"

    invoke-static {v8}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v9

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    move v11, v5

    :goto_0
    array-length v12, v9

    if-ge v11, v12, :cond_1

    aget-byte v12, v9, v11

    and-int/lit16 v12, v12, 0xff

    invoke-static {v12}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v13

    if-ne v13, v6, :cond_0

    const-string v13, "0"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {v10, v12}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v13, ":"

    invoke-virtual {v10, v13}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    nop

    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    sub-int/2addr v12, v6

    invoke-virtual {v11, v5, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v12

    :cond_2
    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V

    goto :goto_2

    :catch_1
    move-exception v0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "grantDefaultPermissionsToUssVVM, not found package: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_1

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "grantDefaultPermissionsToUssVVM, realVVMSHA1 = "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    new-array v1, v6, [Ljava/util/Set;

    sget-object v6, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_2_VVM_PERMISSIONS:Ljava/util/Set;

    aput-object v6, v1, v5

    move/from16 v5, p2

    invoke-virtual {v0, v2, v5, v1}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantPermissionsIgnoringSystemPackage(Ljava/lang/String;I[Ljava/util/Set;)V

    goto :goto_3

    :cond_3
    move/from16 v5, p2

    :goto_3
    return-void
.end method

.method public setCarrierPackagePermissions(I)V
    .locals 6

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040145

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_1_ADAPT_PERMISSIONS:Ljava/util/Set;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissions(Ljava/lang/String;I[Ljava/util/Set;)V

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1040146

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_1_MYACCOUNT_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemFixedPermissions(Ljava/lang/String;I[Ljava/util/Set;)V

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1040147

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_1_RSU_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemNonFixedPermissions(Ljava/lang/String;I[Ljava/util/Set;)V

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1040148

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_1_RSU_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemNonFixedPermissions(Ljava/lang/String;I[Ljava/util/Set;)V

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x1040149

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_2_CE_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemNonFixedPermissions(Ljava/lang/String;I[Ljava/util/Set;)V

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x104014a

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_2_MS_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemNonFixedPermissions(Ljava/lang/String;I[Ljava/util/Set;)V

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x104014b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v3, v2, [Ljava/util/Set;

    sget-object v4, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_2_MS_PERMISSIONS:Ljava/util/Set;

    aput-object v4, v3, v5

    invoke-virtual {v0, v1, p1, v3}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemNonFixedPermissions(Ljava/lang/String;I[Ljava/util/Set;)V

    sget-object v0, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->mDefaultPermissionGrantPolicy:Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x104014c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v2, [Ljava/util/Set;

    sget-object v3, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicyInjector;->CARRIER_2_ECID_PERMISSIONS:Ljava/util/Set;

    aput-object v3, v2, v5

    invoke-virtual {v0, v1, p1, v2}, Lcom/android/server/pm/permission/DefaultPermissionGrantPolicy;->grantSystemNonFixedPermissions(Ljava/lang/String;I[Ljava/util/Set;)V

    return-void
.end method
