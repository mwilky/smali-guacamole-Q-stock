.class Lcom/oneplus/accountbase/network/OPHttpPlatform$Android;
.super Lcom/oneplus/accountbase/network/OPHttpPlatform;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/accountbase/network/OPHttpPlatform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Android"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/accountbase/network/OPHttpPlatform$Android$MainThreadExecutor;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/accountbase/network/OPHttpPlatform;-><init>()V

    return-void
.end method


# virtual methods
.method public defaultCallbackExecutor()Ljava/util/concurrent/Executor;
    .locals 1

    new-instance v0, Lcom/oneplus/accountbase/network/OPHttpPlatform$Android$MainThreadExecutor;

    invoke-direct {v0}, Lcom/oneplus/accountbase/network/OPHttpPlatform$Android$MainThreadExecutor;-><init>()V

    return-object v0
.end method
