.class public final Lcom/oneplus/accountsdk/a/a/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/oneplus/accountsdk/a/a/a;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/oneplus/accountsdk/a/a/a;
    .locals 1

    sget-object v0, Lcom/oneplus/accountsdk/a/a/a;->a:Lcom/oneplus/accountsdk/a/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/accountsdk/a/a/a;

    invoke-direct {v0}, Lcom/oneplus/accountsdk/a/a/a;-><init>()V

    sput-object v0, Lcom/oneplus/accountsdk/a/a/a;->a:Lcom/oneplus/accountsdk/a/a/a;

    :cond_0
    sget-object v0, Lcom/oneplus/accountsdk/a/a/a;->a:Lcom/oneplus/accountsdk/a/a/a;

    return-object v0
.end method
