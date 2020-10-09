.class Lcom/android/server/zgw$you;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/zgw;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "you"
.end annotation


# instance fields
.field private Wc:Z

.field private mPackageName:Ljava/lang/String;

.field private mUid:I

.field private rxBytes:J

.field private startTime:J

.field final synthetic this$0:Lcom/android/server/zgw;

.field private txBytes:J


# direct methods
.method public constructor <init>(Lcom/android/server/zgw;ILjava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/zgw$you;->this$0:Lcom/android/server/zgw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/zgw$you;->Wc:Z

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/zgw$you;->startTime:J

    iput p2, p0, Lcom/android/server/zgw$you;->mUid:I

    iput-object p3, p0, Lcom/android/server/zgw$you;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic rtg(Lcom/android/server/zgw$you;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/zgw$you;->startTime:J

    return-wide v0
.end method

.method static synthetic sis(Lcom/android/server/zgw$you;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/zgw$you;->txBytes:J

    return-wide v0
.end method

.method static synthetic ssp(Lcom/android/server/zgw$you;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/zgw$you;->Wc:Z

    return p0
.end method

.method static synthetic tsu(Lcom/android/server/zgw$you;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/zgw$you;->rxBytes:J

    return-wide v0
.end method

.method static synthetic you(Lcom/android/server/zgw$you;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/zgw$you;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/zgw$you;)I
    .locals 0

    iget p0, p0, Lcom/android/server/zgw$you;->mUid:I

    return p0
.end method


# virtual methods
.method public reset()V
    .locals 2

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/zgw$you;->startTime:J

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/zgw$you;->txBytes:J

    iput-wide v0, p0, Lcom/android/server/zgw$you;->rxBytes:J

    return-void
.end method

.method public v()Z
    .locals 11

    iget v0, p0, Lcom/android/server/zgw$you;->mUid:I

    invoke-static {v0}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/zgw$you;->mUid:I

    invoke-static {v2}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/server/zgw$you;->txBytes:J

    sub-long v4, v0, v4

    iget-wide v6, p0, Lcom/android/server/zgw$you;->rxBytes:J

    sub-long v6, v2, v6

    iput-wide v0, p0, Lcom/android/server/zgw$you;->txBytes:J

    iput-wide v2, p0, Lcom/android/server/zgw$you;->rxBytes:J

    iget-object v8, p0, Lcom/android/server/zgw$you;->this$0:Lcom/android/server/zgw;

    add-long v9, v4, v6

    invoke-static {v8, v9, v10}, Lcom/android/server/zgw;->zta(Lcom/android/server/zgw;J)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-boolean v8, p0, Lcom/android/server/zgw$you;->Wc:Z

    if-nez v8, :cond_0

    const/4 v8, 0x1

    iput-boolean v8, p0, Lcom/android/server/zgw$you;->Wc:Z

    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v8

    iget v9, p0, Lcom/android/server/zgw$you;->mUid:I

    invoke-virtual {v8, v9}, Lcom/android/server/am/AppRecordManagerService;->noteStartTraffic(I)V

    :cond_0
    invoke-static {}, Lcom/android/server/zgw;->access$500()Z

    move-result v8

    if-eqz v8, :cond_2

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "updateUidTrafficLocked "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/zgw$you;->mUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/zgw$you;->mPackageName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, ": incTx("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "), incRx("

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, "), nowTx="

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, ", nowRx="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPTraffic"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/zgw$you;->Wc:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/zgw$you;->Wc:Z

    invoke-static {}, Lcom/android/server/am/AppRecordManagerService;->getInstance()Lcom/android/server/am/AppRecordManagerService;

    move-result-object v0

    iget v1, p0, Lcom/android/server/zgw$you;->mUid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppRecordManagerService;->noteStopTraffic(I)V

    :cond_2
    :goto_0
    iget-boolean p0, p0, Lcom/android/server/zgw$you;->Wc:Z

    return p0
.end method
