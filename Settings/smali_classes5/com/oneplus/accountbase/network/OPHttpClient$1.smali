.class Lcom/oneplus/accountbase/network/OPHttpClient$1;
.super Ljava/lang/Object;

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/accountbase/network/OPHttpClient;->execute(Lcom/oneplus/accountbase/network/request/OPHttpRequest;Lcom/oneplus/accountbase/network/callback/OPHttpCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/accountbase/network/OPHttpClient;

.field final synthetic val$callback:Lcom/oneplus/accountbase/network/callback/OPHttpCallback;


# direct methods
.method constructor <init>(Lcom/oneplus/accountbase/network/OPHttpClient;Lcom/oneplus/accountbase/network/callback/OPHttpCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/accountbase/network/OPHttpClient$1;->this$0:Lcom/oneplus/accountbase/network/OPHttpClient;

    iput-object p2, p0, Lcom/oneplus/accountbase/network/OPHttpClient$1;->val$callback:Lcom/oneplus/accountbase/network/callback/OPHttpCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 2
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/IOException;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/oneplus/accountbase/network/OPHttpClient$1;->this$0:Lcom/oneplus/accountbase/network/OPHttpClient;

    iget-object v1, p0, Lcom/oneplus/accountbase/network/OPHttpClient$1;->val$callback:Lcom/oneplus/accountbase/network/callback/OPHttpCallback;

    invoke-static {v0, p1, p2, v1}, Lcom/oneplus/accountbase/network/OPHttpClient;->access$000(Lcom/oneplus/accountbase/network/OPHttpClient;Lokhttp3/Call;Ljava/lang/Exception;Lcom/oneplus/accountbase/network/callback/OPHttpCallback;)V

    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 2
    .param p1    # Lokhttp3/Call;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .param p2    # Lokhttp3/Response;
        .annotation build Lorg/jetbrains/annotations/NotNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/accountbase/network/OPHttpClient$1;->this$0:Lcom/oneplus/accountbase/network/OPHttpClient;

    iget-object v1, p0, Lcom/oneplus/accountbase/network/OPHttpClient$1;->val$callback:Lcom/oneplus/accountbase/network/callback/OPHttpCallback;

    invoke-static {v0, p1, p2, v1}, Lcom/oneplus/accountbase/network/OPHttpClient;->access$100(Lcom/oneplus/accountbase/network/OPHttpClient;Lokhttp3/Call;Lokhttp3/Response;Lcom/oneplus/accountbase/network/callback/OPHttpCallback;)V

    return-void
.end method
