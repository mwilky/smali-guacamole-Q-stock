.class final Lcom/android/server/wm/OpPowerConsumpStats$ywr;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpPowerConsumpStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ywr"
.end annotation


# instance fields
.field mCount:I

.field mName:Ljava/lang/String;

.field mTime:J


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unknow"

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mCount:I

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unknow"

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mCount:I

    iget-object v0, p1, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mName:Ljava/lang/String;

    iget-wide v0, p1, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mTime:J

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mTime:J

    iget p1, p1, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mCount:I

    iput p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mCount:I

    return-void
.end method

.method constructor <init>(Ljava/lang/String;JI)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "unknow"

    iput-object v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mName:Ljava/lang/String;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mCount:I

    iput-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mName:Ljava/lang/String;

    iput-wide p2, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mTime:J

    iput p4, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mCount:I

    return-void
.end method

.method private Bb(I)Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{\"seq\":\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, "\",\"name\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mName:Ljava/lang/String;

    if-nez p1, :cond_0

    const-string p1, "unknow"

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "\",\"time\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, "\",\"count\":\""

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\"}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic sis(Lcom/android/server/wm/OpPowerConsumpStats$ywr;Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->you(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    move-result p0

    return p0
.end method

.method private you(JI)V
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mTime:J

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mTime:J

    iget p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mCount:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mCount:I

    return-void
.end method

.method private you(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z
    .locals 4

    if-eqz p1, :cond_0

    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mTime:J

    iget-wide v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mTime:J

    iget v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mCount:I

    iget p1, p1, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mCount:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mCount:I

    :cond_0
    iget-wide v0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mTime:J

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    iget p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mCount:I

    if-gtz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic you(Lcom/android/server/wm/OpPowerConsumpStats$ywr;Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->zta(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z

    move-result p0

    return p0
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats$ywr;I)Ljava/lang/String;
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->Bb(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic zta(Lcom/android/server/wm/OpPowerConsumpStats$ywr;JI)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->you(JI)V

    return-void
.end method

.method private zta(Lcom/android/server/wm/OpPowerConsumpStats$ywr;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mName:Ljava/lang/String;

    iget-object v2, p1, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mName:Ljava/lang/String;

    if-ne v1, v2, :cond_1

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mTime:J

    iget-wide v3, p1, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mTime:J

    cmp-long v1, v1, v3

    if-nez v1, :cond_1

    iget p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mCount:I

    iget p1, p1, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mCount:I

    if-ne p0, p1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    return v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimerEntry{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "name:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ",time:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ",count:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/server/wm/OpPowerConsumpStats$ywr;->mCount:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
