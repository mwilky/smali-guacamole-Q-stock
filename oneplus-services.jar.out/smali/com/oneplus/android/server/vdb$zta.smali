.class Lcom/oneplus/android/server/vdb$zta;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/android/server/vdb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "zta"
.end annotation


# instance fields
.field private final dX:Ljava/lang/String;

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/oneplus/android/server/vdb;


# direct methods
.method private constructor <init>(Lcom/oneplus/android/server/vdb;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/vdb$zta;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/oneplus/android/server/vdb$zta;->dX:Ljava/lang/String;

    iput-object p3, p0, Lcom/oneplus/android/server/vdb$zta;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/android/server/vdb;Ljava/lang/String;Landroid/os/IBinder;Lcom/oneplus/android/server/gck;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/android/server/vdb$zta;-><init>(Lcom/oneplus/android/server/vdb;Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/vdb$zta;)Landroid/os/IBinder;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/vdb$zta;->mToken:Landroid/os/IBinder;

    return-object p0
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/oneplus/android/server/vdb$zta;->dX:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " has died"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpMotorManagerService"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/vdb$zta;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v0}, Lcom/oneplus/android/server/vdb;->les(Lcom/oneplus/android/server/vdb;)Landroid/os/IBinder;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/oneplus/android/server/vdb$zta;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v1}, Lcom/oneplus/android/server/vdb;->vdw(Lcom/oneplus/android/server/vdb;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/oneplus/android/server/vdb;->access$6100()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/android/server/vdb$zta;->dX:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "OpMotorManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/oneplus/android/server/vdb$zta;->dX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has not removed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/oneplus/android/server/vdb;->access$6100()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/android/server/vdb$zta;->dX:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/oneplus/android/server/vdb$zta;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v1}, Lcom/oneplus/android/server/vdb;->qeg(Lcom/oneplus/android/server/vdb;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/android/server/vdb$zta;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v1}, Lcom/oneplus/android/server/vdb;->ivd(Lcom/oneplus/android/server/vdb;)I

    :cond_0
    iget-object v1, p0, Lcom/oneplus/android/server/vdb$zta;->this$0:Lcom/oneplus/android/server/vdb;

    invoke-static {v1}, Lcom/oneplus/android/server/vdb;->qeg(Lcom/oneplus/android/server/vdb;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/android/server/vdb$zta;->this$0:Lcom/oneplus/android/server/vdb;

    iget-object p0, p0, Lcom/oneplus/android/server/vdb$zta;->dX:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v1, p0, v2}, Lcom/oneplus/android/server/vdb;->you(Lcom/oneplus/android/server/vdb;Ljava/lang/String;Landroid/os/IBinder;)I

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
