.class Lcom/android/server/am/n$zta;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "zta"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/n$zta$zta;
    }
.end annotation


# instance fields
.field private Nw:Ljava/lang/String;

.field private final Ow:Ljava/lang/Object;

.field private final Pw:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/n$you;",
            ">;"
        }
    .end annotation
.end field

.field private Qw:I

.field private Rw:I

.field private Sw:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/android/server/am/n$zta$zta;",
            ">;"
        }
    .end annotation
.end field

.field private isPrivileged:Z

.field final synthetic this$0:Lcom/android/server/am/n;


# direct methods
.method constructor <init>(Lcom/android/server/am/n;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/n$zta;->this$0:Lcom/android/server/am/n;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/n$zta;->Ow:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/am/n$zta;->isPrivileged:Z

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/n$zta;->Pw:Ljava/util/List;

    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/am/n$zta;->Qw:I

    iput p1, p0, Lcom/android/server/am/n$zta;->Rw:I

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/n$zta;->Sw:Ljava/util/HashMap;

    return-void
.end method

.method private Gn()Lcom/android/server/am/n$you;
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/n$zta;->Ow:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/am/n$zta;->Rw:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/am/n$zta;->Pw:Ljava/util/List;

    iget p0, p0, Lcom/android/server/am/n$zta;->Rw:I

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/n$you;

    monitor-exit v0

    return-object p0

    :cond_0
    iget v1, p0, Lcom/android/server/am/n$zta;->Qw:I

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/am/n$zta;->Pw:Ljava/util/List;

    iget p0, p0, Lcom/android/server/am/n$zta;->Qw:I

    invoke-interface {v1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/n$you;

    monitor-exit v0

    return-object p0

    :cond_1
    iget-object p0, p0, Lcom/android/server/am/n$zta;->this$0:Lcom/android/server/am/n;

    invoke-static {p0}, Lcom/android/server/am/n;->you(Lcom/android/server/am/n;)Lcom/android/server/am/n$you;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private Hn()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/am/n$zta;->Ow:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/n$zta;->Nw:Ljava/lang/String;

    const-string v2, "OnePlus.ForceDark.Global.Config.DEFAULT"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iput v2, p0, Lcom/android/server/am/n$zta;->Qw:I

    iput v2, p0, Lcom/android/server/am/n$zta;->Rw:I

    monitor-exit v0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/n$zta;->this$0:Lcom/android/server/am/n;

    iget-object v3, p0, Lcom/android/server/am/n$zta;->Nw:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/server/am/n;->you(Lcom/android/server/am/n;Ljava/lang/String;)I

    move-result v1

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/android/server/am/n$zta;->Pw:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, -0x1

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/android/server/am/n$zta;->Pw:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/n$you;

    iget-boolean v6, v4, Lcom/android/server/am/n$you;->Tw:Z

    if-eqz v6, :cond_1

    iput v3, p0, Lcom/android/server/am/n$zta;->Qw:I

    iget v6, p0, Lcom/android/server/am/n$zta;->Rw:I

    if-ne v6, v5, :cond_1

    iput v3, p0, Lcom/android/server/am/n$zta;->Rw:I

    :cond_1
    iget-object v4, v4, Lcom/android/server/am/n$you;->Uw:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput v3, p0, Lcom/android/server/am/n$zta;->Rw:I

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/n$zta;->this$0:Lcom/android/server/am/n;

    const-string v3, "Mark Most Match Cfg: pkg = %s , AppFallBack = %s, AppBest = %s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/server/am/n$zta;->Nw:Ljava/lang/String;

    aput-object v6, v4, v2

    iget v2, p0, Lcom/android/server/am/n$zta;->Qw:I

    if-eq v2, v5, :cond_4

    iget-object v2, p0, Lcom/android/server/am/n$zta;->Pw:Ljava/util/List;

    iget v6, p0, Lcom/android/server/am/n$zta;->Qw:I

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/n$you;

    invoke-virtual {v2}, Lcom/android/server/am/n$you;->debugToString()Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    const-string v2, "Null"

    :goto_2
    const/4 v6, 0x1

    aput-object v2, v4, v6

    const/4 v2, 0x2

    iget v7, p0, Lcom/android/server/am/n$zta;->Rw:I

    if-eq v7, v5, :cond_5

    iget-object v5, p0, Lcom/android/server/am/n$zta;->Pw:Ljava/util/List;

    iget p0, p0, Lcom/android/server/am/n$zta;->Rw:I

    invoke-interface {v5, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/server/am/n$you;

    invoke-virtual {p0}, Lcom/android/server/am/n$you;->debugToString()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :cond_5
    const-string p0, "Null"

    :goto_3
    aput-object p0, v4, v2

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0, v6}, Lcom/android/server/am/n;->zta(Lcom/android/server/am/n;Ljava/lang/String;Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private In()V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/am/n$zta;->ic()Ljava/util/List;

    move-result-object v0

    const-string v1, "AntiBurn"

    const-string v2, "notifyAllAffectedApps"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pkgUid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/am/n$zta;->this$0:Lcom/android/server/am/n;

    invoke-static {v3, p0, v2}, Lcom/android/server/am/n;->zta(Lcom/android/server/am/n;Lcom/android/server/am/n$zta;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private yb(I)Lcom/android/server/am/n$zta$zta;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/n$zta;->Sw:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/n$zta$zta;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/n$zta$zta;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/n$zta$zta;-><init>(Lcom/android/server/am/n$zta;Lcom/android/server/am/OpAntiBurnController$1;)V

    iget-object p0, p0, Lcom/android/server/am/n$zta;->Sw:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method private zta(Lcom/android/server/am/n$you;Lcom/android/server/am/n$you;)V
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    iget p0, p1, Lcom/android/server/am/n$you;->enable:I

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    iget p0, p2, Lcom/android/server/am/n$you;->enable:I

    iput p0, p1, Lcom/android/server/am/n$you;->enable:I

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method Za()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/android/server/am/n$zta;->Nw:Ljava/lang/String;

    return-object p0
.end method

.method public clone()Lcom/android/server/am/n$zta;
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/n$zta;->Ow:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lcom/android/server/am/n$zta;

    iget-object v2, p0, Lcom/android/server/am/n$zta;->this$0:Lcom/android/server/am/n;

    invoke-direct {v1, v2}, Lcom/android/server/am/n$zta;-><init>(Lcom/android/server/am/n;)V

    iget-object v2, p0, Lcom/android/server/am/n$zta;->Nw:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/server/am/n$zta;->Nw:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/android/server/am/n$zta;->isPrivileged:Z

    iput-boolean v2, v1, Lcom/android/server/am/n$zta;->isPrivileged:Z

    iget-object v2, v1, Lcom/android/server/am/n$zta;->Pw:Ljava/util/List;

    iget-object v3, p0, Lcom/android/server/am/n$zta;->Pw:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, v1, Lcom/android/server/am/n$zta;->Sw:Ljava/util/HashMap;

    iget-object v3, p0, Lcom/android/server/am/n$zta;->Sw:Ljava/util/HashMap;

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    iget v2, p0, Lcom/android/server/am/n$zta;->Qw:I

    iput v2, v1, Lcom/android/server/am/n$zta;->Qw:I

    iget p0, p0, Lcom/android/server/am/n$zta;->Rw:I

    iput p0, v1, Lcom/android/server/am/n$zta;->Rw:I

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/android/server/am/n$zta;->clone()Lcom/android/server/am/n$zta;

    move-result-object p0

    return-object p0
.end method

.method fc()Ljava/lang/String;
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/n$zta;->Ow:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/am/n$zta;->Sw:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/am/n$zta;->l(I)Lcom/android/server/am/n$you;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v4

    const-string v5, "Pkg %s, Privileged %s, AppFallBackIdx = %d | AppTargetIdx = %d | Config  %s | CurVerCode = %d "

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/server/am/n$zta;->Nw:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    iget-boolean v8, p0, Lcom/android/server/am/n$zta;->isPrivileged:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    iget v8, p0, Lcom/android/server/am/n$zta;->Qw:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    iget v8, p0, Lcom/android/server/am/n$zta;->Rw:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    invoke-virtual {v3}, Lcom/android/server/am/n$you;->debugToString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v6, v7

    const/4 v3, 0x5

    iget-object v7, p0, Lcom/android/server/am/n$zta;->this$0:Lcom/android/server/am/n;

    iget-object v8, p0, Lcom/android/server/am/n$zta;->Nw:Ljava/lang/String;

    invoke-static {v7, v8}, Lcom/android/server/am/n;->you(Lcom/android/server/am/n;Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v4, v5, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method hc()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/am/n$you;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/n$zta;->Ow:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/n$zta;->Pw:Ljava/util/List;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method ic()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/am/n$zta;->Ow:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    iget-object p0, p0, Lcom/android/server/am/n$zta;->Sw:Ljava/util/HashMap;

    invoke-virtual {p0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method jc()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/server/am/n$zta;->isPrivileged:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method k(I)Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/n$zta;->Ow:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    invoke-virtual {p0, p1}, Lcom/android/server/am/n$zta;->l(I)Lcom/android/server/am/n$you;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    const-string v2, "pkgName"

    iget-object v3, p0, Lcom/android/server/am/n$zta;->Nw:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "privileged"

    iget-boolean p0, p0, Lcom/android/server/am/n$zta;->isPrivileged:Z

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string p0, "enable"

    iget v2, p1, Lcom/android/server/am/n$you;->enable:I

    invoke-virtual {v1, p0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p0, ""

    iget-object v2, p1, Lcom/android/server/am/n$you;->Vw:Ljava/lang/String;

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "specialActions"

    iget-object p1, p1, Lcom/android/server/am/n$you;->Vw:Ljava/lang/String;

    invoke-virtual {v1, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    return-object p0

    :catch_0
    const/4 p0, 0x0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method final l(I)Lcom/android/server/am/n$you;
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/n$zta;->Ow:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/am/n$zta;->yb(I)Lcom/android/server/am/n$zta$zta;

    move-result-object p1

    iget-object v1, p1, Lcom/android/server/am/n$zta$zta;->Kw:Lcom/android/server/am/n$you;

    if-eqz v1, :cond_0

    iget-boolean v1, p1, Lcom/android/server/am/n$zta$zta;->Mw:Z

    if-nez v1, :cond_0

    iget-object p0, p1, Lcom/android/server/am/n$zta$zta;->Kw:Lcom/android/server/am/n$you;

    monitor-exit v0

    return-object p0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/n$zta;->Gn()Lcom/android/server/am/n$you;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/n$you;->kc()Lcom/android/server/am/n$you;

    move-result-object v1

    iput-object v1, p1, Lcom/android/server/am/n$zta$zta;->Kw:Lcom/android/server/am/n$you;

    iget v1, p0, Lcom/android/server/am/n$zta;->Qw:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    iget-object v1, p1, Lcom/android/server/am/n$zta$zta;->Kw:Lcom/android/server/am/n$you;

    iget-object v2, p0, Lcom/android/server/am/n$zta;->Pw:Ljava/util/List;

    iget v3, p0, Lcom/android/server/am/n$zta;->Qw:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/n$you;

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/n$zta;->zta(Lcom/android/server/am/n$you;Lcom/android/server/am/n$you;)V

    :cond_1
    iget-object v1, p1, Lcom/android/server/am/n$zta$zta;->Kw:Lcom/android/server/am/n$you;

    iget-object v2, p0, Lcom/android/server/am/n$zta;->this$0:Lcom/android/server/am/n;

    invoke-static {v2}, Lcom/android/server/am/n;->you(Lcom/android/server/am/n;)Lcom/android/server/am/n$you;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/am/n$zta;->zta(Lcom/android/server/am/n$you;Lcom/android/server/am/n$you;)V

    iget-object p0, p1, Lcom/android/server/am/n$zta$zta;->Kw:Lcom/android/server/am/n$you;

    iget p0, p0, Lcom/android/server/am/n$you;->enable:I

    iget p0, p1, Lcom/android/server/am/n$zta$zta;->Lw:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p0, v2, :cond_2

    iget-object p0, p1, Lcom/android/server/am/n$zta$zta;->Kw:Lcom/android/server/am/n$you;

    iput v2, p0, Lcom/android/server/am/n$you;->enable:I

    goto :goto_0

    :cond_2
    iget p0, p1, Lcom/android/server/am/n$zta$zta;->Lw:I

    if-nez p0, :cond_3

    iget-object p0, p1, Lcom/android/server/am/n$zta$zta;->Kw:Lcom/android/server/am/n$you;

    iput v1, p0, Lcom/android/server/am/n$you;->enable:I

    :cond_3
    :goto_0
    iput-boolean v1, p1, Lcom/android/server/am/n$zta$zta;->Mw:Z

    iget-object p0, p1, Lcom/android/server/am/n$zta$zta;->Kw:Lcom/android/server/am/n$you;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method u(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/n$zta;->Nw:Ljava/lang/String;

    return-void
.end method

.method zta(Lcom/android/server/am/n$zta;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/n$zta;->Ow:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/android/server/am/n$zta;->Pw:Ljava/util/List;

    invoke-virtual {p1}, Lcom/android/server/am/n$zta;->hc()Ljava/util/List;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method zta(Lorg/json/JSONObject;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/n$zta;->Ow:Ljava/lang/Object;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/n$zta;->Pw:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/n$zta;->Pw:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/n$zta;->Qw:I

    iput v2, p0, Lcom/android/server/am/n$zta;->Rw:I

    :cond_1
    const-string v2, "pkgName"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/n$zta;->Nw:Ljava/lang/String;

    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/n$zta;->Nw:Ljava/lang/String;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    invoke-interface {v2, v3, v0, v4}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/server/am/n$zta;->yb(I)Lcom/android/server/am/n$zta$zta;

    const-string v2, "privileged"

    invoke-virtual {p1, v2, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/am/n$zta;->isPrivileged:Z

    const-string v2, "configs"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_3

    move v2, v0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v2, v3, :cond_3

    new-instance v3, Lcom/android/server/am/n$you;

    iget-object v4, p0, Lcom/android/server/am/n$zta;->this$0:Lcom/android/server/am/n;

    invoke-direct {v3, v4}, Lcom/android/server/am/n$you;-><init>(Lcom/android/server/am/n;)V

    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/n$you;->you(Lorg/json/JSONObject;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/am/n$zta;->Pw:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v3, p0, Lcom/android/server/am/n$zta;->this$0:Lcom/android/server/am/n;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parse Ver Item Fail For "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/n$zta;->Nw:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Lcom/android/server/am/n;->zta(Lcom/android/server/am/n;Ljava/lang/String;Z)V

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    const-string p1, "AntiBurn"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pkg:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/n$zta;->Nw:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/am/n$zta;->Hn()V

    invoke-direct {p0}, Lcom/android/server/am/n$zta;->In()V

    monitor-exit v1

    const/4 p0, 0x1

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "parseAppConfig, "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    new-instance p1, Ljava/lang/Exception;

    invoke-direct {p1}, Ljava/lang/Exception;-><init>()V

    const-string v1, "OpAntiBurnController"

    invoke-static {v1, p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method
