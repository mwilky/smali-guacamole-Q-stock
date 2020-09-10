.class public Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "sis"
.end annotation


# instance fields
.field public OH:J

.field public PH:J

.field public QH:J

.field public RH:I

.field public SH:I

.field public mCount:I

.field public mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->OH:J

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->PH:J

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->QH:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->mCount:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->RH:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->SH:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->OH:J

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->PH:J

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->QH:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->mCount:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->RH:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->SH:I

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->mName:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->QH:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->OH:J

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->PH:J

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->QH:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->mCount:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->RH:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->SH:I

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->mName:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->QH:J

    iput p4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->mCount:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJII)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->OH:J

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->PH:J

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->QH:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->mCount:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->RH:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->SH:I

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->mName:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->PH:J

    iput-wide p4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->OH:J

    iput p6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->SH:I

    iput p7, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->RH:I

    iget-wide p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->OH:J

    iget-wide p3, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->PH:J

    sub-long/2addr p1, p3

    iput-wide p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->QH:J

    iget p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->RH:I

    iget p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->SH:I

    sub-int/2addr p1, p2

    iput p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->mCount:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;JJJ)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->OH:J

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->PH:J

    iput-wide v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->QH:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->mCount:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->RH:I

    iput v0, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->SH:I

    iput-object p1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->mName:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->QH:J

    iput-wide p4, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->PH:J

    iput-wide p6, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->OH:J

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# kwl ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->PH:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->OH:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/power/OnePlusStandbyAnalyzer$sis;->QH:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
