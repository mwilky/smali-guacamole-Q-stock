.class Lcom/android/server/am/OnePlusBGController$igw;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "igw"
.end annotation


# instance fields
.field fm:Z

.field mState:I

.field final mStats:Landroid/util/SparseLongArray;

.field mType:Lcom/android/server/am/OnePlusBGController$ProcType;

.field mUid:I

.field rm:J

.field private sm:Lcom/android/server/am/OnePlusBGController$cno;

.field final synthetic this$0:Lcom/android/server/am/OnePlusBGController;

.field tm:Z

.field um:Z


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusBGController;IZI)V
    .locals 6

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$igw;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseLongArray;

    invoke-direct {v0}, Landroid/util/SparseLongArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusBGController$igw;->mStats:Landroid/util/SparseLongArray;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$igw;->tm:Z

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$igw;->um:Z

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$igw;->fm:Z

    iput p2, p0, Lcom/android/server/am/OnePlusBGController$igw;->mUid:I

    iput p4, p0, Lcom/android/server/am/OnePlusBGController$igw;->mState:I

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$300()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/android/server/am/OnePlusBGController$igw;->mUid:I

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$300()I

    move-result v3

    if-ne v1, v3, :cond_0

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBGController$igw;->fm:Z

    :cond_0
    iput-boolean p3, p0, Lcom/android/server/am/OnePlusBGController$igw;->tm:Z

    new-instance p3, Lcom/android/server/am/OnePlusBGController$cno;

    invoke-direct {p3, p1, p2}, Lcom/android/server/am/OnePlusBGController$cno;-><init>(Lcom/android/server/am/OnePlusBGController;I)V

    iput-object p3, p0, Lcom/android/server/am/OnePlusBGController$igw;->sm:Lcom/android/server/am/OnePlusBGController$cno;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide p2

    iput-wide p2, p0, Lcom/android/server/am/OnePlusBGController$igw;->rm:J

    iget-object p2, p0, Lcom/android/server/am/OnePlusBGController$igw;->mStats:Landroid/util/SparseLongArray;

    const-wide/16 v3, 0x0

    invoke-virtual {p2, p4, v3, v4}, Landroid/util/SparseLongArray;->put(IJ)V

    const/4 p2, 0x6

    if-eq p4, p2, :cond_2

    const/4 p2, 0x5

    if-ne p4, p2, :cond_1

    goto :goto_0

    :cond_1
    move p2, v0

    goto :goto_1

    :cond_2
    :goto_0
    move p2, v2

    :goto_1
    iget-boolean p3, p0, Lcom/android/server/am/OnePlusBGController$igw;->tm:Z

    invoke-static {p1, p3, p4}, Lcom/android/server/am/OnePlusBGController;->zta(Lcom/android/server/am/OnePlusBGController;ZI)Z

    move-result p3

    if-eqz p3, :cond_4

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBGController$igw;->um:Z

    if-eqz p2, :cond_3

    sget-object p2, Lcom/android/server/am/OnePlusBGController$ProcType;->Oia:Lcom/android/server/am/OnePlusBGController$ProcType;

    goto :goto_2

    :cond_3
    sget-object p2, Lcom/android/server/am/OnePlusBGController$ProcType;->B:Lcom/android/server/am/OnePlusBGController$ProcType;

    goto :goto_2

    :cond_4
    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$igw;->um:Z

    sget-object p2, Lcom/android/server/am/OnePlusBGController$ProcType;->F:Lcom/android/server/am/OnePlusBGController$ProcType;

    :goto_2
    iput-object p2, p0, Lcom/android/server/am/OnePlusBGController$igw;->mType:Lcom/android/server/am/OnePlusBGController$ProcType;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Uid "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/server/am/OnePlusBGController$igw;->mUid:I

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p3, " mIsBackGround init to  "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p3, p0, Lcom/android/server/am/OnePlusBGController$igw;->um:Z

    if-eqz p3, :cond_5

    sget-object p3, Lcom/android/server/am/OnePlusBGController$ProcType;->B:Lcom/android/server/am/OnePlusBGController$ProcType;

    goto :goto_3

    :cond_5
    sget-object p3, Lcom/android/server/am/OnePlusBGController$ProcType;->F:Lcom/android/server/am/OnePlusBGController$ProcType;

    :goto_3
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->Bb()Z

    move-result p2

    if-eqz p2, :cond_7

    const v1, 0x101d3

    const-wide/16 v2, 0xbb8

    iget-boolean p2, p0, Lcom/android/server/am/OnePlusBGController$igw;->um:Z

    if-eqz p2, :cond_6

    sget-object p2, Lcom/android/server/am/OnePlusBGController$ProcType;->B:Lcom/android/server/am/OnePlusBGController$ProcType;

    goto :goto_4

    :cond_6
    sget-object p2, Lcom/android/server/am/OnePlusBGController$ProcType;->F:Lcom/android/server/am/OnePlusBGController$ProcType;

    :goto_4
    move-object v5, p2

    move-object v0, p1

    move-object v4, p0

    invoke-static/range {v0 .. v5}, Lcom/android/server/am/OnePlusBGController;->zta(Lcom/android/server/am/OnePlusBGController;IJLcom/android/server/am/OnePlusBGController$igw;Lcom/android/server/am/OnePlusBGController$ProcType;)V

    :cond_7
    return-void
.end method


# virtual methods
.method Ab()Z
    .locals 1

    iget p0, p0, Lcom/android/server/am/OnePlusBGController$igw;->mState:I

    const/4 v0, 0x6

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method dump()V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusBGController$igw;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " background="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusBGController$igw;->xb()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " total="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusBGController$igw;->getTotalTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " IsBackGround= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBGController$igw;->um:Z

    if-eqz v1, :cond_0

    const-string v1, "B"

    goto :goto_0

    :cond_0
    const-string v1, "F"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " type= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$igw;->mType:Lcom/android/server/am/OnePlusBGController$ProcType;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$igw;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v1}, Landroid/util/SparseLongArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$igw;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$igw;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " time="

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$igw;->this$0:Lcom/android/server/am/OnePlusBGController;

    iget p0, p0, Lcom/android/server/am/OnePlusBGController$igw;->mUid:I

    const/4 v1, 0x1

    invoke-static {v0, p0, v1}, Lcom/android/server/am/OnePlusBGController;->zta(Lcom/android/server/am/OnePlusBGController;IZ)Z

    return-void
.end method

.method getState()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/OnePlusBGController$igw;->mState:I

    return p0
.end method

.method getTotalTime()J
    .locals 5

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$igw;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v3}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$igw;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v3

    add-long/2addr v0, v3

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-wide v0
.end method

.method getUid()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/OnePlusBGController$igw;->mUid:I

    return p0
.end method

.method igw(IZ)V
    .locals 10

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget v2, p0, Lcom/android/server/am/OnePlusBGController$igw;->mState:I

    const/4 v3, 0x0

    const-wide/16 v4, 0x0

    const/16 v6, 0x15

    if-ne v2, v6, :cond_0

    iget-object p2, p0, Lcom/android/server/am/OnePlusBGController$igw;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {p2, p1, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    iput-boolean v3, p0, Lcom/android/server/am/OnePlusBGController$igw;->um:Z

    sget-object p2, Lcom/android/server/am/OnePlusBGController$ProcType;->F:Lcom/android/server/am/OnePlusBGController$ProcType;

    iput-object p2, p0, Lcom/android/server/am/OnePlusBGController$igw;->mType:Lcom/android/server/am/OnePlusBGController$ProcType;

    goto/16 :goto_2

    :cond_0
    iget-wide v6, p0, Lcom/android/server/am/OnePlusBGController$igw;->rm:J

    sub-long v6, v0, v6

    iget-object v8, p0, Lcom/android/server/am/OnePlusBGController$igw;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v8, v2}, Landroid/util/SparseLongArray;->get(I)J

    move-result-wide v8

    add-long/2addr v8, v6

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$igw;->mStats:Landroid/util/SparseLongArray;

    iget v6, p0, Lcom/android/server/am/OnePlusBGController$igw;->mState:I

    invoke-virtual {v2, v6, v8, v9}, Landroid/util/SparseLongArray;->put(IJ)V

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$igw;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseLongArray;->indexOfKey(I)I

    move-result v2

    if-gez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$igw;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v2, p1, v4, v5}, Landroid/util/SparseLongArray;->put(IJ)V

    :cond_1
    if-eqz p2, :cond_2

    goto/16 :goto_2

    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusBGController$igw;->vdw(I)Z

    move-result p2

    if-eqz p2, :cond_a

    iget-boolean p2, p0, Lcom/android/server/am/OnePlusBGController$igw;->um:Z

    const/4 v2, 0x1

    xor-int/2addr p2, v2

    iput-boolean p2, p0, Lcom/android/server/am/OnePlusBGController$igw;->um:Z

    iget-boolean p2, p0, Lcom/android/server/am/OnePlusBGController$igw;->um:Z

    if-eqz p2, :cond_3

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "##snapshot of traffic #base :"

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/OnePlusBGController$igw;->mUid:I

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/android/server/am/OnePlusBGController$igw;->sm:Lcom/android/server/am/OnePlusBGController$cno;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p2, Lcom/android/server/am/OnePlusBGController$cno;->mTimeStamp:J

    iget-object p2, p0, Lcom/android/server/am/OnePlusBGController$igw;->sm:Lcom/android/server/am/OnePlusBGController$cno;

    iget v4, p0, Lcom/android/server/am/OnePlusBGController$igw;->mUid:I

    invoke-static {v4}, Landroid/net/TrafficStats;->getUidTxBytes(I)J

    move-result-wide v4

    iput-wide v4, p2, Lcom/android/server/am/OnePlusBGController$cno;->Zl:J

    iget-object p2, p0, Lcom/android/server/am/OnePlusBGController$igw;->sm:Lcom/android/server/am/OnePlusBGController$cno;

    iget v4, p0, Lcom/android/server/am/OnePlusBGController$igw;->mUid:I

    invoke-static {v4}, Landroid/net/TrafficStats;->getUidRxBytes(I)J

    move-result-wide v4

    iput-wide v4, p2, Lcom/android/server/am/OnePlusBGController$cno;->_l:J

    :cond_3
    const/4 p2, 0x6

    if-eq p1, p2, :cond_5

    const/4 p2, 0x5

    if-ne p1, p2, :cond_4

    goto :goto_0

    :cond_4
    move v2, v3

    :cond_5
    :goto_0
    iget-boolean p2, p0, Lcom/android/server/am/OnePlusBGController$igw;->um:Z

    if-eqz p2, :cond_7

    if-eqz v2, :cond_6

    sget-object p2, Lcom/android/server/am/OnePlusBGController$ProcType;->Oia:Lcom/android/server/am/OnePlusBGController$ProcType;

    goto :goto_1

    :cond_6
    sget-object p2, Lcom/android/server/am/OnePlusBGController$ProcType;->B:Lcom/android/server/am/OnePlusBGController$ProcType;

    goto :goto_1

    :cond_7
    if-eqz v2, :cond_8

    sget-object p2, Lcom/android/server/am/OnePlusBGController$ProcType;->Pia:Lcom/android/server/am/OnePlusBGController$ProcType;

    goto :goto_1

    :cond_8
    sget-object p2, Lcom/android/server/am/OnePlusBGController$ProcType;->F:Lcom/android/server/am/OnePlusBGController$ProcType;

    :goto_1
    iput-object p2, p0, Lcom/android/server/am/OnePlusBGController$igw;->mType:Lcom/android/server/am/OnePlusBGController$ProcType;

    iget-object p2, p0, Lcom/android/server/am/OnePlusBGController$igw;->mType:Lcom/android/server/am/OnePlusBGController$ProcType;

    sget-object v2, Lcom/android/server/am/OnePlusBGController$ProcType;->Pia:Lcom/android/server/am/OnePlusBGController$ProcType;

    if-ne p2, v2, :cond_9

    const-string p2, "oops!! why exist mType == ProcType.F_RECONFIRM"

    invoke-static {p2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :cond_9
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Uid "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusBGController$igw;->mUid:I

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mIsBackGround update to "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/OnePlusBGController$igw;->um:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$igw;->mType:Lcom/android/server/am/OnePlusBGController$ProcType;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->Bb()Z

    move-result p2

    if-eqz p2, :cond_a

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$igw;->this$0:Lcom/android/server/am/OnePlusBGController;

    const v3, 0x101d3

    const-wide/16 v4, 0xbb8

    iget-object v7, p0, Lcom/android/server/am/OnePlusBGController$igw;->mType:Lcom/android/server/am/OnePlusBGController$ProcType;

    move-object v6, p0

    invoke-static/range {v2 .. v7}, Lcom/android/server/am/OnePlusBGController;->zta(Lcom/android/server/am/OnePlusBGController;IJLcom/android/server/am/OnePlusBGController$igw;Lcom/android/server/am/OnePlusBGController$ProcType;)V

    :cond_a
    :goto_2
    iput p1, p0, Lcom/android/server/am/OnePlusBGController$igw;->mState:I

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$igw;->rm:J

    return-void
.end method

.method lqr(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBGController$igw;->tm:Z

    return-void
.end method

.method vdw(I)Z
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$igw;->um:Z

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$igw;->this$0:Lcom/android/server/am/OnePlusBGController;

    iget-boolean p0, p0, Lcom/android/server/am/OnePlusBGController$igw;->tm:Z

    invoke-static {v1, p0, p1}, Lcom/android/server/am/OnePlusBGController;->zta(Lcom/android/server/am/OnePlusBGController;ZI)Z

    move-result p0

    if-eq v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method xb()J
    .locals 6

    const-wide/16 v0, 0x0

    const/4 v2, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$igw;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v3}, Landroid/util/SparseLongArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$igw;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->keyAt(I)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController$igw;->this$0:Lcom/android/server/am/OnePlusBGController;

    iget-boolean v5, p0, Lcom/android/server/am/OnePlusBGController$igw;->tm:Z

    invoke-static {v4, v5, v3}, Lcom/android/server/am/OnePlusBGController;->zta(Lcom/android/server/am/OnePlusBGController;ZI)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$igw;->mStats:Landroid/util/SparseLongArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseLongArray;->valueAt(I)J

    move-result-wide v3

    add-long/2addr v0, v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method yb()Lcom/android/server/am/OnePlusBGController$cno;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$igw;->sm:Lcom/android/server/am/OnePlusBGController$cno;

    return-object p0
.end method

.method zb()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/OnePlusBGController$igw;->um:Z

    return p0
.end method
