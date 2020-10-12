.class public Lcom/oneplus/accountbase/network/request/PostFormRequest;
.super Lcom/oneplus/accountbase/network/request/OPHttpRequest;


# direct methods
.method public constructor <init>(Lcom/oneplus/accountbase/network/params/PostFormRequsetParams;)V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/accountbase/network/request/OPHttpRequest;-><init>()V

    iget-object v0, p1, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams;->url:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/accountbase/network/request/PostFormRequest;->url:Ljava/lang/String;

    iget-object v0, p1, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams;->headers:Ljava/util/Map;

    iput-object v0, p0, Lcom/oneplus/accountbase/network/request/PostFormRequest;->headers:Ljava/util/Map;

    iget-object p1, p1, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams;->params:Ljava/util/Map;

    iput-object p1, p0, Lcom/oneplus/accountbase/network/request/PostFormRequest;->params:Ljava/util/Map;

    iget-object p1, p0, Lcom/oneplus/accountbase/network/request/PostFormRequest;->url:Ljava/lang/String;

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "url can\'t be null, Please check"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public buildRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;
    .locals 3

    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    iget-object v1, p0, Lcom/oneplus/accountbase/network/request/PostFormRequest;->url:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/accountbase/network/request/PostFormRequest;->headers:Ljava/util/Map;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/accountbase/network/request/PostFormRequest;->headers:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v2, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method public buildRequsetBody()Lokhttp3/RequestBody;
    .locals 4

    new-instance v0, Lokhttp3/FormBody$Builder;

    invoke-direct {v0}, Lokhttp3/FormBody$Builder;-><init>()V

    iget-object v1, p0, Lcom/oneplus/accountbase/network/request/PostFormRequest;->params:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/accountbase/network/request/PostFormRequest;->params:Ljava/util/Map;

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

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v3, v2}, Lokhttp3/FormBody$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/FormBody$Builder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lokhttp3/FormBody$Builder;->build()Lokhttp3/FormBody;

    move-result-object v0

    return-object v0
.end method
