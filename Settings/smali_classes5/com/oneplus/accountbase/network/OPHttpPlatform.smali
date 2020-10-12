.class public Lcom/oneplus/accountbase/network/OPHttpPlatform;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/accountbase/network/OPHttpPlatform$Android;
    }
.end annotation


# static fields
.field private static final PLATFORM:Lcom/oneplus/accountbase/network/OPHttpPlatform;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/oneplus/accountbase/network/OPHttpPlatform;->findPlatform()Lcom/oneplus/accountbase/network/OPHttpPlatform;

    move-result-object v0

    sput-object v0, Lcom/oneplus/accountbase/network/OPHttpPlatform;->PLATFORM:Lcom/oneplus/accountbase/network/OPHttpPlatform;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static findPlatform()Lcom/oneplus/accountbase/network/OPHttpPlatform;
    .locals 1

    :try_start_0
    const-string v0, "android.os.Build"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-eqz v0, :cond_0

    new-instance v0, Lcom/oneplus/accountbase/network/OPHttpPlatform$Android;

    invoke-direct {v0}, Lcom/oneplus/accountbase/network/OPHttpPlatform$Android;-><init>()V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    new-instance v0, Lcom/oneplus/accountbase/network/OPHttpPlatform;

    invoke-direct {v0}, Lcom/oneplus/accountbase/network/OPHttpPlatform;-><init>()V

    return-object v0
.end method

.method public static get()Lcom/oneplus/accountbase/network/OPHttpPlatform;
    .locals 1

    sget-object v0, Lcom/oneplus/accountbase/network/OPHttpPlatform;->PLATFORM:Lcom/oneplus/accountbase/network/OPHttpPlatform;

    return-object v0
.end method


# virtual methods
.method public defaultCallbackExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    return-object v0
.end method

.method public execute(Ljava/lang/Runnable;)V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/accountbase/network/OPHttpPlatform;->defaultCallbackExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
