.class public Lcom/android/server/am/OnePlusBGController$bio;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "bio"
.end annotation


# instance fields
.field private Hm:Z

.field private Jm:Lcom/android/server/am/OnePlusBGController$ProcType;

.field private Km:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

.field private Lm:Z

.field private Mm:Z

.field private Nm:D

.field private Om:D

.field private Pm:I

.field private Qm:D

.field private Rm:D

.field private Sm:Z

.field private mPkgName:Ljava/lang/String;

.field private mUid:I

.field private mVersionCode:I

.field private vm:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/OnePlusBGController$sis;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILjava/lang/String;ILcom/android/server/am/OnePlusBGController$ProcType;D)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->UNKNOWN:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    iput-object v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->Km:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->Lm:Z

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->Mm:Z

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->Hm:Z

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->Sm:Z

    iput p1, p0, Lcom/android/server/am/OnePlusBGController$bio;->mUid:I

    iput-object p2, p0, Lcom/android/server/am/OnePlusBGController$bio;->mPkgName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/am/OnePlusBGController$bio;->mVersionCode:I

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$300()I

    move-result p1

    const/4 p2, -0x1

    if-eq p1, p2, :cond_0

    iget p1, p0, Lcom/android/server/am/OnePlusBGController$bio;->mUid:I

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$300()I

    move-result p2

    if-ne p1, p2, :cond_0

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBGController$bio;->Hm:Z

    :cond_0
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$bio;->vm:Ljava/util/List;

    monitor-enter p0

    const-wide/16 p1, 0x0

    cmpl-double p1, p5, p1

    if-ltz p1, :cond_1

    :try_start_0
    iput-object p4, p0, Lcom/android/server/am/OnePlusBGController$bio;->Jm:Lcom/android/server/am/OnePlusBGController$ProcType;

    iget-object p1, p0, Lcom/android/server/am/OnePlusBGController$bio;->vm:Ljava/util/List;

    new-instance p2, Lcom/android/server/am/OnePlusBGController$sis;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v0, p2

    move-object v1, p4

    move-wide v4, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/OnePlusBGController$sis;-><init>(Lcom/android/server/am/OnePlusBGController$ProcType;JD)V

    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private Ra(I)Z
    .locals 1

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$3700()Landroid/media/AudioManager;

    move-result-object p0

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, ":"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$3700()Landroid/media/AudioManager;

    move-result-object p1

    const-string v0, "get_uid"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic you(Lcom/android/server/am/OnePlusBGController$bio;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/OnePlusBGController$bio;->Hm:Z

    return p0
.end method

.method static synthetic zta(Lcom/android/server/am/OnePlusBGController$bio;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$bio;->mPkgName:Ljava/lang/String;

    return-object p0
.end method


# virtual methods
.method public fto(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusBGController$bio;->Sm:Z

    return-void
.end method

.method public getUid()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->mUid:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public pb()V
    .locals 1

    iget v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->Pm:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->Pm:I

    return-void
.end method

.method public qb()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->vm:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$bio;->vm:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$bio;->vm:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OnePlusBGController$sis;

    invoke-virtual {v1}, Lcom/android/server/am/OnePlusBGController$sis;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public rb()D
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->Om:D

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public sb()D
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->Nm:D

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public tb()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/OnePlusBGController$bio;->Sm:Z

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 11

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->Nm:D

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$bio;->Om:D

    add-double/2addr v2, v0

    const-wide/16 v4, 0x0

    cmpl-double v4, v2, v4

    const/4 v5, 0x0

    if-eqz v4, :cond_0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v4

    div-double/2addr v0, v2

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v0, v6

    double-to-float v0, v0

    new-instance v1, Ljava/math/BigDecimal;

    float-to-double v8, v0

    invoke-direct {v1, v8, v9}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v0, 0x4

    const/4 v8, 0x3

    invoke-virtual {v1, v8, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->floatValue()F

    move-result v1

    iget-wide v9, p0, Lcom/android/server/am/OnePlusBGController$bio;->Om:D

    mul-double/2addr v9, v4

    div-double/2addr v9, v2

    mul-double/2addr v9, v6

    double-to-float v2, v9

    new-instance v3, Ljava/math/BigDecimal;

    float-to-double v4, v2

    invoke-direct {v3, v4, v5}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v3, v8, v0}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v0

    invoke-virtual {v0}, Ljava/math/BigDecimal;->floatValue()F

    move-result v5

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "# SipperInfo ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusBGController$bio;->mUid:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$bio;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OnePlusBGController$bio;->mVersionCode:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "], ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$bio;->Nm:D

    invoke-static {v2, v3}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " %), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/am/OnePlusBGController$bio;->Om:D

    invoke-static {v3, v4}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, " %), [Rnk: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$bio;->Km:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    invoke-virtual {v1}, Lcom/android/server/am/OnePlusBGController$AppBucketRanking;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "] [Abn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusBGController$bio;->Pm:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "] [Ref: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBGController$bio;->Lm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] [FS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBGController$bio;->Mm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] [Spec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusBGController$bio;->Hm:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "] "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/OnePlusBGController$bio;->Nm:D

    iget-wide v3, p0, Lcom/android/server/am/OnePlusBGController$bio;->Om:D

    add-double/2addr v1, v3

    invoke-static {v1, v2}, Lcom/android/internal/os/MyBatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public ub()D
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->Nm:D

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$bio;->Om:D

    add-double/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public vb()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->Lm:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public wb()Z
    .locals 1

    iget p0, p0, Lcom/android/server/am/OnePlusBGController$bio;->Pm:I

    const/4 v0, 0x1

    if-lt p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public xb()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->Mm:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->Lm:Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public zta(Lcom/android/server/am/OnePlusBGController$AppBucketRanking;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$bio;->Km:Lcom/android/server/am/OnePlusBGController$AppBucketRanking;

    return-void
.end method

.method public zta(Lcom/android/server/am/OnePlusBGController$CleanType;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/am/veq;->tm:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v0, v3, :cond_1

    const/4 v5, 0x2

    if-eq v0, v5, :cond_2

    const/4 p1, 0x3

    if-eq v0, p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/android/server/am/OnePlusBGController$bio;->vm:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    goto :goto_0

    :cond_1
    iput v4, p0, Lcom/android/server/am/OnePlusBGController$bio;->Pm:I

    iput-boolean v4, p0, Lcom/android/server/am/OnePlusBGController$bio;->Mm:Z

    iput-boolean v4, p0, Lcom/android/server/am/OnePlusBGController$bio;->Lm:Z

    :cond_2
    sget-object v0, Lcom/android/server/am/OnePlusBGController$CleanType;->ila:Lcom/android/server/am/OnePlusBGController$CleanType;

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusBGController$bio;->wb()Z

    move-result p1

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mark uid "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->mUid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " as ever day-of-force-stopped"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iput-boolean v3, p0, Lcom/android/server/am/OnePlusBGController$bio;->Mm:Z

    :cond_3
    iget-object p1, p0, Lcom/android/server/am/OnePlusBGController$bio;->vm:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v3, :cond_4

    iget-object p1, p0, Lcom/android/server/am/OnePlusBGController$bio;->vm:Ljava/util/List;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->vm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1, v4, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    :cond_4
    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController$bio;->Om:D

    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController$bio;->Nm:D

    :goto_0
    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController$bio;->Rm:D

    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController$bio;->Qm:D

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public zta(Lcom/android/server/am/OnePlusBGController$ProcType;D)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->vm:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->vm:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$bio;->vm:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusBGController$sis;

    const-wide/16 v1, 0x0

    cmpg-double v3, p2, v1

    if-gez v3, :cond_0

    iget-wide p2, v0, Lcom/android/server/am/OnePlusBGController$sis;->wm:D

    :cond_0
    move-wide v4, p2

    sget-object p2, Lcom/android/server/am/OnePlusBGController$ProcType;->nla:Lcom/android/server/am/OnePlusBGController$ProcType;

    if-ne p1, p2, :cond_1

    const-string p2, "oops!! why insert type with ProcType.B_RECONFIRM"

    invoke-static {p2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :cond_1
    if-eqz v0, :cond_8

    iget-object p2, v0, Lcom/android/server/am/OnePlusBGController$sis;->mType:Lcom/android/server/am/OnePlusBGController$ProcType;

    if-eq p2, p1, :cond_5

    iget-wide p2, v0, Lcom/android/server/am/OnePlusBGController$sis;->wm:D

    sub-double p2, v4, p2

    cmpg-double v0, p2, v1

    if-gez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "1.oops, diff is negative:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, ", just cleanUp"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    sget-object p2, Lcom/android/server/am/OnePlusBGController$CleanType;->jla:Lcom/android/server/am/OnePlusBGController$CleanType;

    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/server/am/OnePlusBGController$bio;->zta(Lcom/android/server/am/OnePlusBGController$CleanType;)V

    goto/16 :goto_3

    :cond_2
    sget-object v0, Lcom/android/server/am/OnePlusBGController$ProcType;->B:Lcom/android/server/am/OnePlusBGController$ProcType;

    if-ne p1, v0, :cond_3

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->Qm:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->Qm:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->Nm:D

    :goto_1
    add-double/2addr v0, p2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->Nm:D

    goto/16 :goto_3

    :cond_3
    sget-object v0, Lcom/android/server/am/OnePlusBGController$ProcType;->F:Lcom/android/server/am/OnePlusBGController$ProcType;

    if-ne p1, v0, :cond_8

    iget v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->mUid:I

    invoke-direct {p0, v0}, Lcom/android/server/am/OnePlusBGController$bio;->Ra(I)Z

    move-result v0

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#### Due to audio-active, uid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/OnePlusBGController$bio;->mUid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", add into Fg instead."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->Qm:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->Qm:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->Nm:D

    goto :goto_1

    :cond_4
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->Rm:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->Rm:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->Om:D

    :goto_2
    add-double/2addr v0, p2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->Om:D

    goto :goto_3

    :cond_5
    iget-wide p2, v0, Lcom/android/server/am/OnePlusBGController$sis;->wm:D

    sub-double p2, v4, p2

    cmpg-double v0, p2, v1

    if-gez v0, :cond_6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "2.oops, diff is negative:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, ", just cleanUp"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    sget-object p2, Lcom/android/server/am/OnePlusBGController$CleanType;->jla:Lcom/android/server/am/OnePlusBGController$CleanType;

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/android/server/am/OnePlusBGController$ProcType;->B:Lcom/android/server/am/OnePlusBGController$ProcType;

    if-ne p1, v0, :cond_7

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->Rm:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->Rm:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->Om:D

    goto :goto_2

    :cond_7
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->Qm:D

    add-double/2addr v0, p2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->Qm:D

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$bio;->Nm:D

    goto :goto_1

    :cond_8
    :goto_3
    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$3800()Z

    move-result p2

    if-nez p2, :cond_9

    iget-object p2, p0, Lcom/android/server/am/OnePlusBGController$bio;->vm:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->clear()V

    :cond_9
    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$bio;->Jm:Lcom/android/server/am/OnePlusBGController$ProcType;

    iget-object p2, p0, Lcom/android/server/am/OnePlusBGController$bio;->vm:Ljava/util/List;

    new-instance p3, Lcom/android/server/am/OnePlusBGController$sis;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    move-object v0, p3

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/OnePlusBGController$sis;-><init>(Lcom/android/server/am/OnePlusBGController$ProcType;JD)V

    invoke-interface {p2, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :cond_a
    monitor-exit p0

    return-void

    :goto_4
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :catchall_0
    move-exception p1

    goto :goto_4
.end method
