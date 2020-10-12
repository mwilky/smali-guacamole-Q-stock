.class public Lcom/oneplus/accountbase/network/params/PostFormRequsetParams;
.super Lcom/oneplus/accountbase/network/params/BaseRequestParams;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;
    }
.end annotation


# direct methods
.method private constructor <init>(Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;)V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/accountbase/network/params/BaseRequestParams;-><init>()V

    invoke-static {p1}, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;->access$000(Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams;->url:Ljava/lang/String;

    invoke-static {p1}, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;->access$100(Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams;->headers:Ljava/util/Map;

    invoke-static {p1}, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;->access$200(Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;)Ljava/util/Map;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams;->params:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams;-><init>(Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;)V

    return-void
.end method


# virtual methods
.method addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/accountbase/network/params/BaseRequestParams;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams;->headers:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams;->headers:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/accountbase/network/params/BaseRequestParams;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams;->params:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams;->params:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method headers(Ljava/util/Map;)Lcom/oneplus/accountbase/network/params/BaseRequestParams;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/oneplus/accountbase/network/params/BaseRequestParams;"
        }
    .end annotation

    iput-object p1, p0, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams;->headers:Ljava/util/Map;

    return-object p0
.end method

.method params(Ljava/util/Map;)Lcom/oneplus/accountbase/network/params/BaseRequestParams;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/oneplus/accountbase/network/params/BaseRequestParams;"
        }
    .end annotation

    iput-object p1, p0, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams;->params:Ljava/util/Map;

    return-object p0
.end method

.method url(Ljava/lang/String;)Lcom/oneplus/accountbase/network/params/BaseRequestParams;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams;->url:Ljava/lang/String;

    return-object p0
.end method
