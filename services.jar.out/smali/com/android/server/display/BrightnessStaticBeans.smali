.class Lcom/android/server/display/BrightnessStaticBeans;
.super Ljava/lang/Object;
.source "BrightnessStaticBeans.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/BrightnessStaticBeans$DataBean;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "BrightnessStaticBeans"


# instance fields
.field private final KEY_DATA:Ljava/lang/String;

.field private final KEY_DATE:Ljava/lang/String;

.field private final KEY_DURATION:Ljava/lang/String;

.field private final KEY_VERSION:Ljava/lang/String;

.field private final MAX_RECORD_SIZE:I

.field private final SECONDS_IN_ONE_DAY:J

.field private mData:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/display/BrightnessStaticBeans$DataBean;",
            ">;"
        }
    .end annotation
.end field

.field private mVersion:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/display/BrightnessStaticBeans;->mVersion:I

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/BrightnessStaticBeans;->mData:Ljava/util/Map;

    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/display/BrightnessStaticBeans;->MAX_RECORD_SIZE:I

    const-string/jumbo v0, "version"

    iput-object v0, p0, Lcom/android/server/display/BrightnessStaticBeans;->KEY_VERSION:Ljava/lang/String;

    const-string v0, "data"

    iput-object v0, p0, Lcom/android/server/display/BrightnessStaticBeans;->KEY_DATA:Ljava/lang/String;

    const-string v0, "date"

    iput-object v0, p0, Lcom/android/server/display/BrightnessStaticBeans;->KEY_DATE:Ljava/lang/String;

    const-string v0, "duration"

    iput-object v0, p0, Lcom/android/server/display/BrightnessStaticBeans;->KEY_DURATION:Ljava/lang/String;

    const-wide/32 v0, 0x15180

    iput-wide v0, p0, Lcom/android/server/display/BrightnessStaticBeans;->SECONDS_IN_ONE_DAY:J

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 8

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/display/BrightnessStaticBeans;->mVersion:I

    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/BrightnessStaticBeans;->mData:Ljava/util/Map;

    const/16 v0, 0x1e

    iput v0, p0, Lcom/android/server/display/BrightnessStaticBeans;->MAX_RECORD_SIZE:I

    const-string/jumbo v0, "version"

    iput-object v0, p0, Lcom/android/server/display/BrightnessStaticBeans;->KEY_VERSION:Ljava/lang/String;

    const-string v1, "data"

    iput-object v1, p0, Lcom/android/server/display/BrightnessStaticBeans;->KEY_DATA:Ljava/lang/String;

    const-string v2, "date"

    iput-object v2, p0, Lcom/android/server/display/BrightnessStaticBeans;->KEY_DATE:Ljava/lang/String;

    const-string v3, "duration"

    iput-object v3, p0, Lcom/android/server/display/BrightnessStaticBeans;->KEY_DURATION:Ljava/lang/String;

    const-wide/32 v4, 0x15180

    iput-wide v4, p0, Lcom/android/server/display/BrightnessStaticBeans;->SECONDS_IN_ONE_DAY:J

    :try_start_0
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/server/display/BrightnessStaticBeans;->mVersion:I

    invoke-virtual {v4, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v1, v5, :cond_0

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    invoke-virtual {v6, v3}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/display/BrightnessStaticBeans;->addRecord(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to parse json string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BrightnessStaticBeans"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private getJSONString()Lorg/json/JSONStringer;
    .locals 6

    :try_start_0
    new-instance v0, Lorg/json/JSONStringer;

    invoke-direct {v0}, Lorg/json/JSONStringer;-><init>()V

    invoke-virtual {v0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    const-string/jumbo v1, "version"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    iget v1, p0, Lcom/android/server/display/BrightnessStaticBeans;->mVersion:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    const-string v1, "data"

    invoke-virtual {v0, v1}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    invoke-virtual {v0}, Lorg/json/JSONStringer;->array()Lorg/json/JSONStringer;

    iget-object v1, p0, Lcom/android/server/display/BrightnessStaticBeans;->mData:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-virtual {v0}, Lorg/json/JSONStringer;->object()Lorg/json/JSONStringer;

    move-result-object v3

    const-string v4, "date"

    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/BrightnessStaticBeans$DataBean;

    invoke-virtual {v4}, Lcom/android/server/display/BrightnessStaticBeans$DataBean;->getDate()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->value(Ljava/lang/Object;)Lorg/json/JSONStringer;

    move-result-object v3

    const-string v4, "duration"

    invoke-virtual {v3, v4}, Lorg/json/JSONStringer;->key(Ljava/lang/String;)Lorg/json/JSONStringer;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/display/BrightnessStaticBeans$DataBean;

    invoke-virtual {v4}, Lcom/android/server/display/BrightnessStaticBeans$DataBean;->getDuration()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONStringer;->value(J)Lorg/json/JSONStringer;

    move-result-object v3

    invoke-virtual {v3}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;

    nop

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lorg/json/JSONStringer;->endArray()Lorg/json/JSONStringer;

    invoke-virtual {v0}, Lorg/json/JSONStringer;->endObject()Lorg/json/JSONStringer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to create JSON string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "BrightnessStaticBeans"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1
.end method

.method private trimData()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/display/BrightnessStaticBeans;->mData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    const/16 v1, 0x1e

    if-le v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/display/BrightnessStaticBeans;->mData:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    sub-int/2addr v0, v1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iget-object v2, p0, Lcom/android/server/display/BrightnessStaticBeans;->mData:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    add-int/lit8 v4, v0, -0x1

    if-lez v0, :cond_0

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v0, v4

    goto :goto_0

    :cond_0
    move v0, v4

    :cond_1
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Remove item, key = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "BrightnessStaticBeans"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/display/BrightnessStaticBeans;->mData:Ljava/util/Map;

    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_2
    return-void
.end method


# virtual methods
.method public addRecord(JJ)V
    .locals 5

    cmp-long v0, p3, p1

    if-gtz v0, :cond_0

    const-string v0, "BrightnessStaticBeans"

    const-string v1, "Invalid timestamp."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string/jumbo v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    sub-long v1, p3, p1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/display/BrightnessStaticBeans;->addRecord(Ljava/lang/String;J)V

    return-void
.end method

.method public addRecord(Ljava/lang/String;J)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/BrightnessStaticBeans;->mData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/display/BrightnessStaticBeans;->mData:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/BrightnessStaticBeans$DataBean;

    invoke-virtual {v0}, Lcom/android/server/display/BrightnessStaticBeans$DataBean;->getDuration()J

    move-result-wide v1

    add-long/2addr p2, v1

    const-wide/32 v1, 0x15180

    cmp-long v3, p2, v1

    if-lez v3, :cond_0

    goto :goto_0

    :cond_0
    move-wide v1, p2

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/BrightnessStaticBeans$DataBean;->setDuration(J)V

    iget-object v1, p0, Lcom/android/server/display/BrightnessStaticBeans;->mData:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_1
    new-instance v0, Lcom/android/server/display/BrightnessStaticBeans$DataBean;

    invoke-direct {v0, p1, p2, p3}, Lcom/android/server/display/BrightnessStaticBeans$DataBean;-><init>(Ljava/lang/String;J)V

    iget-object v1, p0, Lcom/android/server/display/BrightnessStaticBeans;->mData:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    invoke-direct {p0}, Lcom/android/server/display/BrightnessStaticBeans;->trimData()V

    return-void
.end method

.method public getData()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/display/BrightnessStaticBeans$DataBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/display/BrightnessStaticBeans;->mData:Ljava/util/Map;

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    iget v0, p0, Lcom/android/server/display/BrightnessStaticBeans;->mVersion:I

    return v0
.end method

.method public setVersion(I)V
    .locals 0

    iput p1, p0, Lcom/android/server/display/BrightnessStaticBeans;->mVersion:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/display/BrightnessStaticBeans;->getJSONString()Lorg/json/JSONStringer;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/display/BrightnessStaticBeans;->getJSONString()Lorg/json/JSONStringer;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONStringer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v0, ""

    return-object v0
.end method
