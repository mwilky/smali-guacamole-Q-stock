.class public Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/accountbase/network/params/PostFormRequsetParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;)Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;->url:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;->headers:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;->params:Ljava/util/Map;

    return-object p0
.end method


# virtual methods
.method public addHeaders(Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;->headers:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;->headers:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;->headers:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;->params:Ljava/util/Map;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;->params:Ljava/util/Map;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;->params:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public build()Lcom/oneplus/accountbase/network/params/PostFormRequsetParams;
    .locals 2

    new-instance v0, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams;-><init>(Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$1;)V

    return-object v0
.end method

.method public headers(Ljava/util/Map;)Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;->headers:Ljava/util/Map;

    return-object p0
.end method

.method public params(Ljava/util/Map;)Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;"
        }
    .end annotation

    iput-object p1, p0, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;->params:Ljava/util/Map;

    return-object p0
.end method

.method public url(Ljava/lang/String;)Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/accountbase/network/params/PostFormRequsetParams$Builder;->url:Ljava/lang/String;

    return-object p0
.end method
