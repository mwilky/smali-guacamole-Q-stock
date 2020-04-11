.class Lcom/android/server/am/gck;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final TAG:Ljava/lang/String; = "Embryo"


# instance fields
.field private final info:Landroid/content/pm/ApplicationInfo;

.field private final packageName:Ljava/lang/String;

.field private pid:I

.field private thread:Landroid/app/IApplicationThread;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/gck;->pid:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/gck;->thread:Landroid/app/IApplicationThread;

    iput-object p1, p0, Lcom/android/server/am/gck;->packageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/am/gck;->info:Landroid/content/pm/ApplicationInfo;

    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    iget v0, p0, Lcom/android/server/am/gck;->pid:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Landroid/os/Process;->killProcessQuiet(I)V

    :cond_0
    iput v1, p0, Lcom/android/server/am/gck;->pid:I

    return-void
.end method

.method public getInfo()Landroid/content/pm/ApplicationInfo;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/gck;->info:Landroid/content/pm/ApplicationInfo;

    return-object p0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/gck;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method public getPid()I
    .locals 0

    iget p0, p0, Lcom/android/server/am/gck;->pid:I

    return p0
.end method

.method public getThread()Landroid/app/IApplicationThread;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/gck;->thread:Landroid/app/IApplicationThread;

    return-object p0
.end method

.method public getUid()I
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/gck;->info:Landroid/content/pm/ApplicationInfo;

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    return p0
.end method

.method public isAlive()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget v1, p0, Lcom/android/server/am/gck;->pid:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/am/gck;->thread:Landroid/app/IApplicationThread;

    if-eqz v1, :cond_0

    iget-object p0, p0, Lcom/android/server/am/gck;->thread:Landroid/app/IApplicationThread;

    invoke-interface {p0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    invoke-interface {p0}, Landroid/os/IBinder;->isBinderAlive()Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :catch_0
    :cond_0
    return v0
.end method

.method public setPid(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/am/gck;->pid:I

    return-void
.end method

.method public setThread(Landroid/app/IApplicationThread;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/gck;->thread:Landroid/app/IApplicationThread;

    return-void
.end method

.method public you(Landroid/os/IBinder$DeathRecipient;)V
    .locals 1

    iget-object p0, p0, Lcom/android/server/am/gck;->thread:Landroid/app/IApplicationThread;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    return-void
.end method

.method public zta(Landroid/os/IBinder$DeathRecipient;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/gck;->thread:Landroid/app/IApplicationThread;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "linkToDeath failed. "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/gck;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "Embryo"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
