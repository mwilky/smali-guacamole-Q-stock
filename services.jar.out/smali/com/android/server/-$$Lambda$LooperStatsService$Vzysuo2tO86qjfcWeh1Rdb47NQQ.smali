.class public final synthetic Lcom/android/server/-$$Lambda$LooperStatsService$Vzysuo2tO86qjfcWeh1Rdb47NQQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/-$$Lambda$LooperStatsService$Vzysuo2tO86qjfcWeh1Rdb47NQQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/-$$Lambda$LooperStatsService$Vzysuo2tO86qjfcWeh1Rdb47NQQ;

    invoke-direct {v0}, Lcom/android/server/-$$Lambda$LooperStatsService$Vzysuo2tO86qjfcWeh1Rdb47NQQ;-><init>()V

    sput-object v0, Lcom/android/server/-$$Lambda$LooperStatsService$Vzysuo2tO86qjfcWeh1Rdb47NQQ;->INSTANCE:Lcom/android/server/-$$Lambda$LooperStatsService$Vzysuo2tO86qjfcWeh1Rdb47NQQ;

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

    check-cast p1, Lcom/android/internal/os/LooperStats$ExportedEntry;

    invoke-static {p1}, Lcom/android/server/LooperStatsService;->lambda$dump$1(Lcom/android/internal/os/LooperStats$ExportedEntry;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
