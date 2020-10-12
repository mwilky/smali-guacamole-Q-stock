.class public final Lcom/oneplus/accountsdk/b/a/a;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/accountsdk/b/a/a$a;,
        Lcom/oneplus/accountsdk/b/a/a$b;
    }
.end annotation


# static fields
.field public static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/oneplus/accountsdk/utils/OnePlusServerConfigUtils;->getSignPrivateKey()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/accountsdk/b/a/a;->a:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Lokhttp3/Response;)I
    .locals 1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lokhttp3/Response;->priorResponse()Lokhttp3/Response;

    move-result-object p0

    if-eqz p0, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return v0
.end method
