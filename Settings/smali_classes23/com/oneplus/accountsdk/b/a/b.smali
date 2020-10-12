.class public final Lcom/oneplus/accountsdk/b/a/b;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/oneplus/accountsdk/b/a/b;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/oneplus/accountsdk/b/a/b;
    .locals 5

    sget-object v0, Lcom/oneplus/accountsdk/b/a/b;->a:Lcom/oneplus/accountsdk/b/a/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/accountsdk/b/a/b;

    invoke-direct {v0}, Lcom/oneplus/accountsdk/b/a/b;-><init>()V

    sput-object v0, Lcom/oneplus/accountsdk/b/a/b;->a:Lcom/oneplus/accountsdk/b/a/b;

    invoke-static {}, Lcom/oneplus/accountbase/network/OPHttpClient;->getInstance()Lcom/oneplus/accountbase/network/OPHttpClient;

    move-result-object v0

    new-instance v1, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v1}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    new-instance v2, Lcom/oneplus/accountsdk/b/a/a$a;

    invoke-direct {v2}, Lcom/oneplus/accountsdk/b/a/a$a;-><init>()V

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->authenticator(Lokhttp3/Authenticator;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    new-instance v2, Lcom/oneplus/accountsdk/b/b/a;

    invoke-direct {v2}, Lcom/oneplus/accountsdk/b/b/a;-><init>()V

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    new-instance v2, Lcom/oneplus/accountsdk/b/a/a$b;

    invoke-direct {v2}, Lcom/oneplus/accountsdk/b/a/a$b;-><init>()V

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->addInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x14

    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->readTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v3, v4, v2}, Lokhttp3/OkHttpClient$Builder;->writeTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    new-instance v2, Lcom/oneplus/accountsdk/b/a/b$1;

    invoke-direct {v2}, Lcom/oneplus/accountsdk/b/a/b$1;-><init>()V

    invoke-virtual {v1, v2}, Lokhttp3/OkHttpClient$Builder;->hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/accountbase/network/OPHttpClient;->setHttpClient(Lokhttp3/OkHttpClient;)V

    :cond_0
    sget-object v0, Lcom/oneplus/accountsdk/b/a/b;->a:Lcom/oneplus/accountsdk/b/a/b;

    return-object v0
.end method
