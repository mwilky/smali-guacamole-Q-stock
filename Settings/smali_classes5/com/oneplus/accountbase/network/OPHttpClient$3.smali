.class Lcom/oneplus/accountbase/network/OPHttpClient$3;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/accountbase/network/OPHttpClient;->sendSuccessResultCallback(Lokhttp3/Call;Lokhttp3/Response;Lcom/oneplus/accountbase/network/callback/OPHttpCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/accountbase/network/OPHttpClient;

.field final synthetic val$call:Lokhttp3/Call;

.field final synthetic val$callback:Lcom/oneplus/accountbase/network/callback/OPHttpCallback;

.field final synthetic val$response:Lokhttp3/Response;


# direct methods
.method constructor <init>(Lcom/oneplus/accountbase/network/OPHttpClient;Lcom/oneplus/accountbase/network/callback/OPHttpCallback;Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/accountbase/network/OPHttpClient$3;->this$0:Lcom/oneplus/accountbase/network/OPHttpClient;

    iput-object p2, p0, Lcom/oneplus/accountbase/network/OPHttpClient$3;->val$callback:Lcom/oneplus/accountbase/network/callback/OPHttpCallback;

    iput-object p3, p0, Lcom/oneplus/accountbase/network/OPHttpClient$3;->val$call:Lokhttp3/Call;

    iput-object p4, p0, Lcom/oneplus/accountbase/network/OPHttpClient$3;->val$response:Lokhttp3/Response;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/accountbase/network/OPHttpClient$3;->val$callback:Lcom/oneplus/accountbase/network/callback/OPHttpCallback;

    iget-object v1, p0, Lcom/oneplus/accountbase/network/OPHttpClient$3;->val$call:Lokhttp3/Call;

    iget-object v2, p0, Lcom/oneplus/accountbase/network/OPHttpClient$3;->val$response:Lokhttp3/Response;

    invoke-interface {v0, v1, v2}, Lcom/oneplus/accountbase/network/callback/OPHttpCallback;->onResponse(Lokhttp3/Call;Lokhttp3/Response;)V

    return-void
.end method
