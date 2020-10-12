.class public abstract Lcom/oneplus/accountbase/network/params/BaseRequestParams;
.super Ljava/lang/Object;


# instance fields
.field public headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method abstract addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/accountbase/network/params/BaseRequestParams;
.end method

.method abstract addParams(Ljava/lang/String;Ljava/lang/String;)Lcom/oneplus/accountbase/network/params/BaseRequestParams;
.end method

.method abstract headers(Ljava/util/Map;)Lcom/oneplus/accountbase/network/params/BaseRequestParams;
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
.end method

.method abstract params(Ljava/util/Map;)Lcom/oneplus/accountbase/network/params/BaseRequestParams;
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
.end method

.method abstract url(Ljava/lang/String;)Lcom/oneplus/accountbase/network/params/BaseRequestParams;
.end method
