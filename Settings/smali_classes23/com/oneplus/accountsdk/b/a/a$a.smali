.class public final Lcom/oneplus/accountsdk/b/a/a$a;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Authenticator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/accountsdk/b/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "a"
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final authenticate(Lokhttp3/Route;Lokhttp3/Response;)Lokhttp3/Request;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-static {p2}, Lcom/oneplus/accountsdk/b/a/a;->a(Lokhttp3/Response;)I

    move-result p1

    const/4 v0, 0x2

    if-lt p1, v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {}, Lcom/oneplus/accountsdk/b/a/b;->a()Lcom/oneplus/accountsdk/b/a/b;

    new-instance p1, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;

    invoke-direct {p1}, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;-><init>()V

    sget-object v0, Lcom/oneplus/accountsdk/utils/OPAuthConstants;->GET_ACCESS_TOKEN_URL:Ljava/lang/String;

    invoke-virtual {p1, v0}, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;->url(Ljava/lang/String;)Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;

    invoke-static {}, Lcom/oneplus/accountsdk/utils/OnePlusServerConfigUtils;->getClientId()Ljava/lang/String;

    move-result-object v0

    const-string v1, "client_id"

    invoke-virtual {p1, v1, v0}, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;

    const-string v0, "grant_type"

    const-string v1, "client_credentials"

    invoke-virtual {p1, v0, v1}, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;

    invoke-static {}, Lcom/oneplus/accountsdk/utils/OnePlusServerConfigUtils;->getClientSecret()Ljava/lang/String;

    move-result-object v0

    const-string v1, "client_secret"

    invoke-virtual {p1, v1, v0}, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;->addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;

    invoke-static {}, Lcom/oneplus/accountbase/network/OPHttpClient;->getInstance()Lcom/oneplus/accountbase/network/OPHttpClient;

    move-result-object v0

    new-instance v1, Lcom/oneplus/accountbase/network/request/PostFormRequest;

    invoke-virtual {p1}, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;->build()Lcom/oneplus/accountbase/network/params/PostFormRequsetParams;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/oneplus/accountbase/network/request/PostFormRequest;-><init>(Lcom/oneplus/accountbase/network/params/PostFormRequsetParams;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/accountbase/network/OPHttpClient;->execute(Lcom/oneplus/accountbase/network/request/OPHttpRequest;)Lokhttp3/Response;

    move-result-object p1

    new-instance v0, Lcom/oneplus/accountsdk/entity/AuthToken;

    invoke-direct {v0}, Lcom/oneplus/accountsdk/entity/AuthToken;-><init>()V

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/oneplus/accountsdk/entity/AuthToken;->forJson(Ljava/lang/String;)Lcom/oneplus/accountsdk/entity/AuthToken;

    move-result-object v0

    :cond_1
    invoke-static {}, Lcom/oneplus/accountsdk/a/a/a;->a()Lcom/oneplus/accountsdk/a/a/a;

    invoke-virtual {v0}, Lcom/oneplus/accountsdk/entity/AuthToken;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_2

    const-string v1, "AppSharePrefHelper"

    const-string v2, "accessToken is null"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v1, Lcom/oneplus/accountsdk/b;->a:Landroid/content/Context;

    const-string v2, "access_token"

    invoke-static {v1, v2, p1}, Lcom/oneplus/accountbase/PrefUtils;->applyString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/accountsdk/entity/AuthToken;->getAccessToken()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object p2

    invoke-virtual {p2}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v0

    instance-of v0, v0, Lokhttp3/FormBody;

    if-eqz v0, :cond_6

    new-instance v0, Lokhttp3/FormBody$Builder;

    invoke-direct {v0}, Lokhttp3/FormBody$Builder;-><init>()V

    invoke-virtual {p2}, Lokhttp3/Request;->body()Lokhttp3/RequestBody;

    move-result-object v1

    check-cast v1, Lokhttp3/FormBody;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p2}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "oauth/token"

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string p1, "121312312"

    :cond_3
    invoke-virtual {v0, v2, p1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    invoke-interface {v3, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v1}, Lokhttp3/FormBody;->size()I

    move-result v4

    const-string v5, "sign"

    const-string v6, "UTF-8"

    if-ge p1, v4, :cond_5

    invoke-virtual {v1, p1}, Lokhttp3/FormBody;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v1, p1}, Lokhttp3/FormBody;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_4

    invoke-virtual {v1, p1}, Lokhttp3/FormBody;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p1}, Lokhttp3/FormBody;->encodedValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    invoke-virtual {v1, p1}, Lokhttp3/FormBody;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, p1}, Lokhttp3/FormBody;->encodedValue(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_5
    invoke-static {v3}, Lcom/oneplus/accountbase/alitasign/AlitaSignature;->getSignContent(Ljava/util/Map;)Ljava/lang/String;

    move-result-object p1

    sget-object v1, Lcom/oneplus/accountsdk/b/a/a;->a:Ljava/lang/String;

    invoke-static {p1, v1, v6}, Lcom/oneplus/accountbase/alitasign/AlitaSignature;->rsa256Sign(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v5, p1}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    invoke-virtual {p2}, Lokhttp3/Request;->newBuilder()Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object p2

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p2

    :cond_6
    return-object p2
.end method
