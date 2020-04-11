.class Lcom/android/server/am/OnePlusMemoryTracker$sis;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusMemoryTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "sis"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusMemoryTracker;


# direct methods
.method private constructor <init>(Lcom/android/server/am/OnePlusMemoryTracker;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusMemoryTracker$sis;->this$0:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/OnePlusMemoryTracker;Lcom/android/server/am/g;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusMemoryTracker$sis;-><init>(Lcom/android/server/am/OnePlusMemoryTracker;)V

    return-void
.end method


# virtual methods
.method public resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 10

    const-string v0, "command"

    const-string v1, "dropbox_size"

    const-string v2, "line"

    const-string v3, "interval"

    const-string v4, "timeout"

    const-string v5, "dropbox"

    const-string v6, "mdm"

    const-string v7, "enable"

    const-string v8, "OPMT"

    if-nez p1, :cond_1

    invoke-static {}, Lcom/android/server/am/OnePlusMemoryTracker;->access$800()Z

    move-result p0

    if-eqz p0, :cond_0

    const-string p0, "[OnlineConfig] config is null!"

    invoke-static {v8, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-lez v9, :cond_9

    const/4 v9, 0x0

    invoke-virtual {p1, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_2

    iget-object v9, p0, Lcom/android/server/am/OnePlusMemoryTracker$sis;->this$0:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-virtual {p1, v7}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    invoke-static {v9, v7}, Lcom/android/server/am/OnePlusMemoryTracker;->access$1400(Lcom/android/server/am/OnePlusMemoryTracker;Z)V

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "[OnlineConfig] mEnabled: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v9, Lcom/android/server/am/OnePlusMemoryTracker;->IN_USING:Z

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    iget-object v7, p0, Lcom/android/server/am/OnePlusMemoryTracker$sis;->this$0:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-virtual {p1, v6}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v7, v6}, Lcom/android/server/am/OnePlusMemoryTracker;->access$1500(Lcom/android/server/am/OnePlusMemoryTracker;Z)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[OnlineConfig] mdm: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusMemoryTracker;->access$1600()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v8, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget-object v6, p0, Lcom/android/server/am/OnePlusMemoryTracker$sis;->this$0:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-virtual {p1, v5}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    invoke-static {v6, v5}, Lcom/android/server/am/OnePlusMemoryTracker;->access$1700(Lcom/android/server/am/OnePlusMemoryTracker;Z)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[OnlineConfig] dropbox: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusMemoryTracker;->access$1800()Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/am/OnePlusMemoryTracker$sis;->this$0:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-virtual {p1, v4}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v6

    invoke-static {v5, v6, v7}, Lcom/android/server/am/OnePlusMemoryTracker;->access$1900(Lcom/android/server/am/OnePlusMemoryTracker;J)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[OnlineConfig] timeout: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/OnePlusMemoryTracker$sis;->this$0:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-static {v5}, Lcom/android/server/am/OnePlusMemoryTracker;->access$1000(Lcom/android/server/am/OnePlusMemoryTracker;)J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v8, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/am/OnePlusMemoryTracker$sis;->this$0:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    invoke-static {v4, v5, v6}, Lcom/android/server/am/OnePlusMemoryTracker;->access$2000(Lcom/android/server/am/OnePlusMemoryTracker;J)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[OnlineConfig] interval: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OnePlusMemoryTracker$sis;->this$0:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-static {v4}, Lcom/android/server/am/OnePlusMemoryTracker;->access$2100(Lcom/android/server/am/OnePlusMemoryTracker;)J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v4, "[OnlineConfig] line: "

    if-eqz v3, :cond_7

    :try_start_1
    iget-object v3, p0, Lcom/android/server/am/OnePlusMemoryTracker$sis;->this$0:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v3, v2}, Lcom/android/server/am/OnePlusMemoryTracker;->access$2200(Lcom/android/server/am/OnePlusMemoryTracker;I)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusMemoryTracker;->access$500()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v8, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/android/server/am/OnePlusMemoryTracker$sis;->this$0:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v2, v1}, Lcom/android/server/am/OnePlusMemoryTracker;->access$2300(Lcom/android/server/am/OnePlusMemoryTracker;I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusMemoryTracker;->access$600()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/am/OnePlusMemoryTracker$sis;->this$0:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-static {v1, p1}, Lcom/android/server/am/OnePlusMemoryTracker;->access$2400(Lcom/android/server/am/OnePlusMemoryTracker;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/am/OnePlusMemoryTracker$sis;->this$0:Lcom/android/server/am/OnePlusMemoryTracker;

    invoke-static {p0}, Lcom/android/server/am/OnePlusMemoryTracker;->access$2500(Lcom/android/server/am/OnePlusMemoryTracker;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v8, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_0
    return-void
.end method

.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusMemoryTracker$sis;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method
