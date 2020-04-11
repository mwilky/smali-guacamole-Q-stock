.class public final synthetic Lcom/android/settings/network/telephony/-$$Lambda$NetworkScanHelper$NetworkScanSyncTask$S4S8B3lK5MrUdNHJtqazaW_GHXQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$NetworkScanHelper$NetworkScanSyncTask$S4S8B3lK5MrUdNHJtqazaW_GHXQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/network/telephony/-$$Lambda$NetworkScanHelper$NetworkScanSyncTask$S4S8B3lK5MrUdNHJtqazaW_GHXQ;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/-$$Lambda$NetworkScanHelper$NetworkScanSyncTask$S4S8B3lK5MrUdNHJtqazaW_GHXQ;-><init>()V

    sput-object v0, Lcom/android/settings/network/telephony/-$$Lambda$NetworkScanHelper$NetworkScanSyncTask$S4S8B3lK5MrUdNHJtqazaW_GHXQ;->INSTANCE:Lcom/android/settings/network/telephony/-$$Lambda$NetworkScanHelper$NetworkScanSyncTask$S4S8B3lK5MrUdNHJtqazaW_GHXQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/android/internal/telephony/OperatorInfo;

    invoke-static {p1}, Lcom/android/settings/network/telephony/NetworkScanHelper$NetworkScanSyncTask;->lambda$run$0(Lcom/android/internal/telephony/OperatorInfo;)Landroid/telephony/CellInfo;

    move-result-object p1

    return-object p1
.end method
