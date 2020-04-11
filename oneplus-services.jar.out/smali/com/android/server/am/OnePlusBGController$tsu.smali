.class Lcom/android/server/am/OnePlusBGController$tsu;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "tsu"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusBGController;


# direct methods
.method private constructor <init>(Lcom/android/server/am/OnePlusBGController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/hmo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusBGController$tsu;-><init>(Lcom/android/server/am/OnePlusBGController;)V

    return-void
.end method


# virtual methods
.method public resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 4

    if-nez p1, :cond_0

    const-string p0, "[OnlineConfig] config is null!"

    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "Bg_HighCriteria"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->this$0:Lcom/android/server/am/OnePlusBGController;

    const-string v2, "Bg_HighCriteria"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusBGController;->zta(Lcom/android/server/am/OnePlusBGController;F)F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Bg_HighCriteria: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$tsu;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->ssp(Lcom/android/server/am/OnePlusBGController;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :cond_1
    const-string v1, "Bg_HighCriteria_For_Notorious"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->this$0:Lcom/android/server/am/OnePlusBGController;

    const-string v2, "Bg_HighCriteria_For_Notorious"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusBGController;->you(Lcom/android/server/am/OnePlusBGController;F)F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Bg_HighCriteria_For_Notorious: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$tsu;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->cno(Lcom/android/server/am/OnePlusBGController;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :cond_2
    const-string v1, "Bg_GeneCriteria"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->this$0:Lcom/android/server/am/OnePlusBGController;

    const-string v2, "Bg_GeneCriteria"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusBGController;->sis(Lcom/android/server/am/OnePlusBGController;F)F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Bg_GeneCriteria: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$tsu;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->kth(Lcom/android/server/am/OnePlusBGController;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :cond_3
    const-string v1, "Bg_GeneCriteria_For_Notorious"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->this$0:Lcom/android/server/am/OnePlusBGController;

    const-string v2, "Bg_GeneCriteria_For_Notorious"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusBGController;->tsu(Lcom/android/server/am/OnePlusBGController;F)F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Bg_GeneCriteria_For_Notorious: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$tsu;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->bio(Lcom/android/server/am/OnePlusBGController;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :cond_4
    const-string v1, "Bg_LowCriteria"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->this$0:Lcom/android/server/am/OnePlusBGController;

    const-string v2, "Bg_LowCriteria"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusBGController;->rtg(Lcom/android/server/am/OnePlusBGController;F)F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Bg_LowCriteria: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$tsu;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->igw(Lcom/android/server/am/OnePlusBGController;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :cond_5
    const-string v1, "Bg_LowCriteria_For_Notorious"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->this$0:Lcom/android/server/am/OnePlusBGController;

    const-string v2, "Bg_LowCriteria_For_Notorious"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusBGController;->ssp(Lcom/android/server/am/OnePlusBGController;F)F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Bg_LowCriteria_For_Notorious: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$tsu;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->wtn(Lcom/android/server/am/OnePlusBGController;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :cond_6
    const-string v1, "Bg_ReliefBonusmAh"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->this$0:Lcom/android/server/am/OnePlusBGController;

    const-string v2, "Bg_ReliefBonusmAh"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusBGController;->cno(Lcom/android/server/am/OnePlusBGController;F)F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Bg_ReliefmAh: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$tsu;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->gck(Lcom/android/server/am/OnePlusBGController;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :cond_7
    const-string v1, "Bg_GMSCriteria"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->this$0:Lcom/android/server/am/OnePlusBGController;

    const-string v2, "Bg_GMSCriteria"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusBGController;->kth(Lcom/android/server/am/OnePlusBGController;F)F

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] Bg_GMSCriteria: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$tsu;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->dma(Lcom/android/server/am/OnePlusBGController;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :cond_8
    const-string v1, "Fg_BlackPkgList"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "value"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->ywr(Lcom/android/server/am/OnePlusBGController;)Ljava/util/HashSet;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$tsu;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->ywr(Lcom/android/server/am/OnePlusBGController;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v0, v2, :cond_9

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$tsu;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->ywr(Lcom/android/server/am/OnePlusBGController;)Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_9
    iget-object p1, p0, Lcom/android/server/am/OnePlusBGController$tsu;->this$0:Lcom/android/server/am/OnePlusBGController;

    iget-object p0, p0, Lcom/android/server/am/OnePlusBGController$tsu;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->ywr(Lcom/android/server/am/OnePlusBGController;)Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/android/server/am/OnePlusBGController;->you(Ljava/util/HashSet;)V

    monitor-exit v1

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :cond_a
    :goto_1
    return-void
.end method

.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusBGController$tsu;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method
