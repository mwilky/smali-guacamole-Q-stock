.class Lcom/android/server/am/Uterus$5;
.super Lcom/oneplus/embryo/IEmbryoController$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/x;


# direct methods
.method constructor <init>(Lcom/android/server/am/x;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/Uterus$5;->this$0:Lcom/android/server/am/x;

    invoke-direct {p0}, Lcom/oneplus/embryo/IEmbryoController$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public notifyPreloadStatus(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get preload status from "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", success="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Embryo_Uterus"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/Uterus$5;->this$0:Lcom/android/server/am/x;

    invoke-static {v0}, Lcom/android/server/am/x;->you(Lcom/android/server/am/x;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/Uterus$5;->this$0:Lcom/android/server/am/x;

    invoke-static {v1}, Lcom/android/server/am/x;->you(Lcom/android/server/am/x;)Ljava/util/Map;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/server/am/gck;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-nez p1, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lcom/android/server/am/gck;->destroy()V

    return-void

    :cond_1
    iget-object p2, p0, Lcom/android/server/am/Uterus$5;->this$0:Lcom/android/server/am/x;

    invoke-virtual {p1}, Lcom/android/server/am/gck;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/am/gck;->getUid()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Lcom/android/server/am/x;->sis(Ljava/lang/String;I)Lcom/android/server/am/bvj;

    move-result-object p2

    if-nez p2, :cond_2

    return-void

    :cond_2
    monitor-enter p2

    :try_start_1
    invoke-virtual {p2, p1}, Lcom/android/server/am/bvj;->zta(Lcom/android/server/am/gck;)V

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Lcom/android/server/am/bvj;->zgw(Z)V

    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    iget-object p1, p0, Lcom/android/server/am/Uterus$5;->this$0:Lcom/android/server/am/x;

    invoke-static {p1}, Lcom/android/server/am/x;->ssp(Lcom/android/server/am/x;)Ljava/util/List;

    move-result-object p1

    monitor-enter p1

    :try_start_2
    iget-object v0, p0, Lcom/android/server/am/Uterus$5;->this$0:Lcom/android/server/am/x;

    invoke-static {v0}, Lcom/android/server/am/x;->ssp(Lcom/android/server/am/x;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object p0, p0, Lcom/android/server/am/Uterus$5;->this$0:Lcom/android/server/am/x;

    invoke-static {p0}, Lcom/android/server/am/x;->ssp(Lcom/android/server/am/x;)Ljava/util/List;

    move-result-object p0

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :catchall_2
    move-exception p0

    :try_start_4
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw p0
.end method
