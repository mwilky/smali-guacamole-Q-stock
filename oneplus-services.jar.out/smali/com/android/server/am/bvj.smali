.class Lcom/android/server/am/bvj;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/bvj$sis;,
        Lcom/android/server/am/bvj$you;,
        Lcom/android/server/am/bvj$zta;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "EmbryoSupervisor"


# instance fields
.field private Ji:Lcom/android/server/am/gck;

.field private Ki:J

.field private Li:Z

.field private Mi:Z

.field private Ni:Z

.field private Oi:Z

.field private info:Landroid/content/pm/ApplicationInfo;

.field private launchCount:J

.field private mHelper:Lcom/android/server/am/dma;

.field private packageName:Ljava/lang/String;

.field private pid:I

.field private rank:I

.field private startTime:J

.field private userId:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/server/am/dma;->getInstance()Lcom/android/server/am/dma;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/bvj;->mHelper:Lcom/android/server/am/dma;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/bvj;->launchCount:J

    iput-wide v0, p0, Lcom/android/server/am/bvj;->Ki:J

    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/am/bvj;->Li:Z

    iput-boolean v2, p0, Lcom/android/server/am/bvj;->Mi:Z

    iput-wide v0, p0, Lcom/android/server/am/bvj;->startTime:J

    iput-boolean v2, p0, Lcom/android/server/am/bvj;->Ni:Z

    iput-boolean v2, p0, Lcom/android/server/am/bvj;->Oi:Z

    iput-object p1, p0, Lcom/android/server/am/bvj;->packageName:Ljava/lang/String;

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/am/bvj;->Ni:Z

    iput v2, p0, Lcom/android/server/am/bvj;->pid:I

    iput p2, p0, Lcom/android/server/am/bvj;->userId:I

    return-void
.end method

.method private im()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/bvj;->mHelper:Lcom/android/server/am/dma;

    iget-object v1, p0, Lcom/android/server/am/bvj;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/am/dma;->vdw(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/bvj;->Oi:Z

    iget-object v0, p0, Lcom/android/server/am/bvj;->mHelper:Lcom/android/server/am/dma;

    iget-object v1, p0, Lcom/android/server/am/bvj;->packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/bvj;->userId:I

    const/16 v3, 0x400

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/server/am/dma;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/bvj;->info:Landroid/content/pm/ApplicationInfo;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/bvj;->Ni:Z

    return-void
.end method

.method static synthetic sis(Lcom/android/server/am/bvj;)I
    .locals 0

    iget p0, p0, Lcom/android/server/am/bvj;->rank:I

    return p0
.end method

.method static synthetic you(Lcom/android/server/am/bvj;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/bvj;->launchCount:J

    return-wide v0
.end method

.method static synthetic zta(Lcom/android/server/am/bvj;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/bvj;->Ki:J

    return-wide v0
.end method


# virtual methods
.method public Ka()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/bvj;->Ki:J

    return-wide v0
.end method

.method public La()Z
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/bvj;->Ji:Lcom/android/server/am/gck;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/gck;->isAlive()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public Ma()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/bvj;->Ni:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/bvj;->im()V

    :cond_0
    iget-boolean p0, p0, Lcom/android/server/am/bvj;->Oi:Z

    return p0
.end method

.method public Na()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/bvj;->Li:Z

    return p0
.end method

.method public Oa()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/bvj;->Mi:Z

    return p0
.end method

.method public Pa()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/bvj;->Mi:Z

    return-void
.end method

.method public Qa()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/bvj;->Ni:Z

    return-void
.end method

.method public binderDied()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Embryo child process died. "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/bvj;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/bvj;->pid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "EmbryoSupervisor"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/bvj;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget v1, p0, Lcom/android/server/am/bvj;->pid:I

    invoke-static {v0, v1}, Lcom/android/server/am/OpBGFrozenInjector;->embryoProcDied(II)V

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/bvj;->Ji:Lcom/android/server/am/gck;

    invoke-virtual {v0, p0}, Lcom/android/server/am/gck;->you(Landroid/os/IBinder$DeathRecipient;)V

    iget-object v0, p0, Lcom/android/server/am/bvj;->Ji:Lcom/android/server/am/gck;

    invoke-virtual {v0}, Lcom/android/server/am/gck;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/bvj;->Ji:Lcom/android/server/am/gck;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bio(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/bvj;->Ki:J

    return-void
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/bvj;->pid:I

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/bvj;->Ji:Lcom/android/server/am/gck;

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/bvj;->Ji:Lcom/android/server/am/gck;

    invoke-virtual {v0, p0}, Lcom/android/server/am/gck;->you(Landroid/os/IBinder$DeathRecipient;)V

    iget-object v0, p0, Lcom/android/server/am/bvj;->Ji:Lcom/android/server/am/gck;

    invoke-virtual {v0}, Lcom/android/server/am/gck;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/bvj;->Ji:Lcom/android/server/am/gck;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public detach()Lcom/android/server/am/gck;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/bvj;->Ji:Lcom/android/server/am/gck;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/server/am/gck;->you(Landroid/os/IBinder$DeathRecipient;)V

    iput-object v1, p0, Lcom/android/server/am/bvj;->Ji:Lcom/android/server/am/gck;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/bvj;->pid:I

    return-object v0
.end method

.method public dump()V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/am/bvj;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", fg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/bvj;->Ki:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", count="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/server/am/bvj;->launchCount:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "EmbryoSupervisor"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public getCount()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/bvj;->launchCount:J

    return-wide v0
.end method

.method public getInfo()Landroid/content/pm/ApplicationInfo;
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/bvj;->Ni:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/bvj;->im()V

    :cond_0
    iget-object p0, p0, Lcom/android/server/am/bvj;->info:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/bvj;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getRank()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/bvj;->rank:I

    return p0
.end method

.method public rtg(Landroid/content/pm/ApplicationInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/bvj;->info:Landroid/content/pm/ApplicationInfo;

    return-void
.end method

.method public setRank(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/bvj;->rank:I

    return-void
.end method

.method public start()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/bvj;->startTime:J

    iget-wide v0, p0, Lcom/android/server/am/bvj;->launchCount:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/bvj;->launchCount:J

    return-void
.end method

.method public stop()V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/am/bvj;->startTime:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/bvj;->Ki:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/android/server/am/bvj;->Ki:J

    return-void
.end method

.method public tsu(Landroid/content/pm/ApplicationInfo;)Z
    .locals 2

    iget v0, p1, Landroid/content/pm/ApplicationInfo;->versionCode:I

    iget-object p0, p0, Lcom/android/server/am/bvj;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, p0, Landroid/content/pm/ApplicationInfo;->versionCode:I

    if-ne v0, v1, :cond_0

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public zgw(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/am/bvj;->Li:Z

    iget-boolean p1, p0, Lcom/android/server/am/bvj;->Li:Z

    if-nez p1, :cond_0

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/am/bvj;->Mi:Z

    :cond_0
    return-void
.end method

.method public zta(Lcom/android/server/am/gck;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/bvj;->Ji:Lcom/android/server/am/gck;

    if-eqz v0, :cond_0

    const-string v0, "EmbryoSupervisor"

    const-string v1, "set embryo twice?"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/bvj;->Ji:Lcom/android/server/am/gck;

    invoke-virtual {v0, p0}, Lcom/android/server/am/gck;->you(Landroid/os/IBinder$DeathRecipient;)V

    iget-object v0, p0, Lcom/android/server/am/bvj;->Ji:Lcom/android/server/am/gck;

    invoke-virtual {v0}, Lcom/android/server/am/gck;->destroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/bvj;->Ji:Lcom/android/server/am/gck;

    :cond_0
    iput-object p1, p0, Lcom/android/server/am/bvj;->Ji:Lcom/android/server/am/gck;

    iget-object p1, p0, Lcom/android/server/am/bvj;->Ji:Lcom/android/server/am/gck;

    invoke-virtual {p1, p0}, Lcom/android/server/am/gck;->zta(Landroid/os/IBinder$DeathRecipient;)V

    iget-object p1, p0, Lcom/android/server/am/bvj;->Ji:Lcom/android/server/am/gck;

    invoke-virtual {p1}, Lcom/android/server/am/gck;->getPid()I

    move-result p1

    iput p1, p0, Lcom/android/server/am/bvj;->pid:I

    return-void
.end method

.method public zta(Ljava/io/PrintWriter;Lcom/android/server/am/B$you;)V
    .locals 2

    iget v0, p0, Lcom/android/server/am/bvj;->pid:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/os/Debug$MemoryInfo;

    invoke-direct {v0}, Landroid/os/Debug$MemoryInfo;-><init>()V

    iget v1, p0, Lcom/android/server/am/bvj;->pid:I

    invoke-static {v1, v0}, Landroid/os/Debug;->getMemoryInfo(ILandroid/os/Debug$MemoryInfo;)V

    invoke-virtual {p2, v0}, Lcom/android/server/am/B$you;->zta(Landroid/os/Debug$MemoryInfo;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "pid="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/bvj;->pid:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", user="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/am/bvj;->userId:I

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", name="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/bvj;->packageName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", pss="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalPss()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", uss="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/Debug$MemoryInfo;->getTotalUss()I

    move-result p0

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
