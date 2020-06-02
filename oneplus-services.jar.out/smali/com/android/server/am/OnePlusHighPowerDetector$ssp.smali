.class Lcom/android/server/am/OnePlusHighPowerDetector$ssp;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusHighPowerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ssp"
.end annotation


# instance fields
.field private mCount:I

.field private mProcess:Ljava/lang/String;

.field private sm:I

.field final synthetic this$0:Lcom/android/server/am/OnePlusHighPowerDetector;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusHighPowerDetector;Ljava/lang/String;II)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->mProcess:Ljava/lang/String;

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->mCount:I

    iput p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->sm:I

    iput-object p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->mProcess:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->mCount:I

    iput p4, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->sm:I

    return-void
.end method


# virtual methods
.method public Xb()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->sm:I

    return p0
.end method

.method public getCount()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->mCount:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SpecailNativeProcessInfo{mProcess="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->mProcess:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", mBatteryDrop="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$ssp;->sm:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
