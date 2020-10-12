.class public Lcom/oneplus/accountbase/network/OPHttpClient;
.super Ljava/lang/Object;


# static fields
.field private static volatile mInstance:Lcom/oneplus/accountbase/network/OPHttpClient;


# instance fields
.field private mHttpClient:Lokhttp3/OkHttpClient;

.field private mPlatform:Lcom/oneplus/accountbase/network/OPHttpPlatform;


# direct methods
.method private constructor <init>()V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    iput-object v0, p0, Lcom/oneplus/accountbase/network/OPHttpClient;->mHttpClient:Lokhttp3/OkHttpClient;

    iget-object v0, p0, Lcom/oneplus/accountbase/network/OPHttpClient;->mHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x14

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v2, v3, v1}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    invoke-static {}, Lcom/oneplus/accountbase/network/OPHttpPlatform;->get()Lcom/oneplus/accountbase/network/OPHttpPlatform;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/accountbase/network/OPHttpClient;->mPlatform:Lcom/oneplus/accountbase/network/OPHttpPlatform;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/accountbase/network/OPHttpClient;Lokhttp3/Call;Ljava/lang/Exception;Lcom/oneplus/accountbase/network/callback/OPHttpCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/accountbase/network/OPHttpClient;->sendFailResultCallback(Lokhttp3/Call;Ljava/lang/Exception;Lcom/oneplus/accountbase/network/callback/OPHttpCallback;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/accountbase/network/OPHttpClient;Lokhttp3/Call;Lokhttp3/Response;Lcom/oneplus/accountbase/network/callback/OPHttpCallback;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/accountbase/network/OPHttpClient;->sendSuccessResultCallback(Lokhttp3/Call;Lokhttp3/Response;Lcom/oneplus/accountbase/network/callback/OPHttpCallback;)V

    return-void
.end method

.method public static getInstance()Lcom/oneplus/accountbase/network/OPHttpClient;
    .locals 2

    sget-object v0, Lcom/oneplus/accountbase/network/OPHttpClient;->mInstance:Lcom/oneplus/accountbase/network/OPHttpClient;

    if-nez v0, :cond_1

    const-class v0, Lcom/oneplus/accountbase/network/OPHttpClient;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oneplus/accountbase/network/OPHttpClient;->mInstance:Lcom/oneplus/accountbase/network/OPHttpClient;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oneplus/accountbase/network/OPHttpClient;

    invoke-direct {v1}, Lcom/oneplus/accountbase/network/OPHttpClient;-><init>()V

    sput-object v1, Lcom/oneplus/accountbase/network/OPHttpClient;->mInstance:Lcom/oneplus/accountbase/network/OPHttpClient;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/oneplus/accountbase/network/OPHttpClient;->mInstance:Lcom/oneplus/accountbase/network/OPHttpClient;

    return-object v0
.end method

.method private sendFailResultCallback(Lokhttp3/Call;Ljava/lang/Exception;Lcom/oneplus/accountbase/network/callback/OPHttpCallback;)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/accountbase/network/OPHttpClient;->mPlatform:Lcom/oneplus/accountbase/network/OPHttpPlatform;

    new-instance v1, Lcom/oneplus/accountbase/network/OPHttpClient$2;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/oneplus/accountbase/network/OPHttpClient$2;-><init>(Lcom/oneplus/accountbase/network/OPHttpClient;Lcom/oneplus/accountbase/network/callback/OPHttpCallback;Lokhttp3/Call;Ljava/lang/Exception;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/accountbase/network/OPHttpPlatform;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method private sendSuccessResultCallback(Lokhttp3/Call;Lokhttp3/Response;Lcom/oneplus/accountbase/network/callback/OPHttpCallback;)V
    .locals 2

    if-nez p3, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/accountbase/network/OPHttpClient;->mPlatform:Lcom/oneplus/accountbase/network/OPHttpPlatform;

    new-instance v1, Lcom/oneplus/accountbase/network/OPHttpClient$3;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/oneplus/accountbase/network/OPHttpClient$3;-><init>(Lcom/oneplus/accountbase/network/OPHttpClient;Lcom/oneplus/accountbase/network/callback/OPHttpCallback;Lokhttp3/Call;Lokhttp3/Response;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/accountbase/network/OPHttpPlatform;->execute(Ljava/lang/Runnable;)V

    return-void
.end method


# virtual methods
.method public execute(Lcom/oneplus/accountbase/network/request/OPHttpRequest;)Lokhttp3/Response;
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/accountbase/network/OPHttpClient;->mHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p1}, Lcom/oneplus/accountbase/network/request/OPHttpRequest;->buildRequsetBody()Lokhttp3/RequestBody;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oneplus/accountbase/network/request/OPHttpRequest;->buildRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public execute(Lcom/oneplus/accountbase/network/request/OPHttpRequest;Lcom/oneplus/accountbase/network/callback/OPHttpCallback;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/accountbase/network/OPHttpClient;->mHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p1}, Lcom/oneplus/accountbase/network/request/OPHttpRequest;->buildRequsetBody()Lokhttp3/RequestBody;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oneplus/accountbase/network/request/OPHttpRequest;->buildRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    new-instance v0, Lcom/oneplus/accountbase/network/OPHttpClient$1;

    invoke-direct {v0, p0, p2}, Lcom/oneplus/accountbase/network/OPHttpClient$1;-><init>(Lcom/oneplus/accountbase/network/OPHttpClient;Lcom/oneplus/accountbase/network/callback/OPHttpCallback;)V

    invoke-interface {p1, v0}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public execute(Lcom/oneplus/accountbase/network/request/OPHttpRequest;Lokhttp3/Callback;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/accountbase/network/OPHttpClient;->mHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p1}, Lcom/oneplus/accountbase/network/request/OPHttpRequest;->buildRequsetBody()Lokhttp3/RequestBody;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oneplus/accountbase/network/request/OPHttpRequest;->buildRequest(Lokhttp3/RequestBody;)Lokhttp3/Request;

    move-result-object p1

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1, p2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-void
.end method

.method public getHttpClient()Lokhttp3/OkHttpClient;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/accountbase/network/OPHttpClient;->mHttpClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method public setHttpClient(Lokhttp3/OkHttpClient;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/accountbase/network/OPHttpClient;->mHttpClient:Lokhttp3/OkHttpClient;

    return-void
.end method
