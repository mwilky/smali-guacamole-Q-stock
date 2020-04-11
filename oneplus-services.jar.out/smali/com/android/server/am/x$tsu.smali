.class final Lcom/android/server/am/x$tsu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/x;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "tsu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/x;


# direct methods
.method private constructor <init>(Lcom/android/server/am/x;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/x$tsu;->this$0:Lcom/android/server/am/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/x;Lcom/android/server/am/t;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/x$tsu;-><init>(Lcom/android/server/am/x;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    :try_start_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/data/system/embryo"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v1, v3, v2}, Landroid/os/FileUtils;->readTextFile(Ljava/io/File;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    const/4 v4, 0x1

    move v5, v4

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/server/am/x$tsu;->this$0:Lcom/android/server/am/x;

    invoke-static {v7}, Lcom/android/server/am/x;->kth(Lcom/android/server/am/x;)Lcom/android/server/am/dma;

    move-result-object v7

    invoke-virtual {v7, v6, v0}, Lcom/android/server/am/dma;->isPackageAvailable(Ljava/lang/String;I)Z

    move-result v7

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    iget-object v7, p0, Lcom/android/server/am/x$tsu;->this$0:Lcom/android/server/am/x;

    invoke-virtual {v7, v6, v0}, Lcom/android/server/am/x;->tsu(Ljava/lang/String;I)Lcom/android/server/am/bvj;

    move-result-object v7

    if-nez v7, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {v2, v6}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v6

    const-string v8, "fg"

    invoke-virtual {v6, v8}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/android/server/am/bvj;->bio(J)V

    iget-object v6, p0, Lcom/android/server/am/x$tsu;->this$0:Lcom/android/server/am/x;

    invoke-static {v6}, Lcom/android/server/am/x;->kth(Lcom/android/server/am/x;)Lcom/android/server/am/dma;

    move-result-object v6

    invoke-virtual {v7}, Lcom/android/server/am/bvj;->getInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    invoke-virtual {v6, v8}, Lcom/android/server/am/dma;->you(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v7}, Lcom/android/server/am/bvj;->La()Z

    move-result v6

    if-nez v6, :cond_3

    goto :goto_0

    :cond_3
    add-int/lit8 v3, v3, 0x1

    invoke-static {}, Lcom/android/server/am/x;->access$700()I

    move-result v6

    if-ge v3, v6, :cond_0

    iget-object v6, p0, Lcom/android/server/am/x$tsu;->this$0:Lcom/android/server/am/x;

    add-int/lit8 v5, v5, 0x1

    invoke-virtual {v6, v7, v5, v4}, Lcom/android/server/am/x;->zta(Lcom/android/server/am/bvj;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "Embryo_Uterus"

    const-string v1, "Embryo initiate failed"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_4
    return-void
.end method
