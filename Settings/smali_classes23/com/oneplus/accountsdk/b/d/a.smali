.class public final Lcom/oneplus/accountsdk/b/d/a;
.super Ljava/lang/Object;


# direct methods
.method public static a(Ljava/lang/String;)Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;
    .locals 2

    new-instance v0, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;

    invoke-direct {v0}, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;-><init>()V

    const-string v1, "method"

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;

    const-string p0, "format"

    const-string v1, "json"

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;

    const-string p0, "charset"

    const-string v1, "UTF-8"

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;

    const-string p0, "sign_type"

    const-string v1, "RSA2"

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;

    invoke-static {}, Lcom/oneplus/accountsdk/b/d/a;->b()Ljava/lang/String;

    move-result-object p0

    const-string v1, "timestamp"

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;

    const-string p0, "version"

    const-string v1, "1.0"

    invoke-virtual {v0, p0, v1}, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;

    invoke-static {}, Lcom/oneplus/accountsdk/utils/OnePlusServerConfigUtils;->getClientId()Ljava/lang/String;

    move-result-object p0

    const-string v1, "client_id"

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;

    return-object v0
.end method

.method public static a()Lorg/json/JSONObject;
    .locals 3

    const-string v0, "3"

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "client"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "deviceType"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "deviceName"

    invoke-static {}, Lcom/oneplus/accountsdk/utils/OnePlusAuthDeviceIdUtils;->getSystemModel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "app"

    const-string v2, "40"

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "deviceId"

    sget-object v2, Lcom/oneplus/accountsdk/b;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/oneplus/accountsdk/utils/OnePlusAuthDeviceIdUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "lang"

    invoke-static {}, Lcom/oneplus/accountsdk/utils/OnePlusAuthDeviceIdUtils;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "version"

    invoke-static {}, Lcom/oneplus/accountsdk/utils/OnePlusAuthDeviceIdUtils;->getSDKVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    sget-object v0, Lcom/oneplus/accountsdk/b;->a:Landroid/content/Context;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    const-string v2, "packageName"

    if-eqz v0, :cond_0

    :try_start_1
    sget-object v0, Lcom/oneplus/accountsdk/b;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1

    :cond_0
    const-string v0, "com.oneplus.account"
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_1
    return-object v1
.end method

.method private static b()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-mm-dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    const-string v1, "UTC"

    invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
