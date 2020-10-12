.class public Lcom/oneplus/accountsdk/utils/OnePlusServerConfigUtils;
.super Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "oneplussdk"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getClientId()Ljava/lang/String;
    .locals 1

    const-string v0, "ab8f6129c0c64f9eb2fea5fc1a4c77d5"

    return-object v0
.end method

.method public static getClientSecret()Ljava/lang/String;
    .locals 1

    const-string v0, "8d6e073edc3c415d82bcc9f048b63fef"

    return-object v0
.end method

.method private static native getPrivateKey()Ljava/lang/String;
.end method

.method private static native getPrivateKeyOverSea()Ljava/lang/String;
.end method

.method public static getServerUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "https://gateway.oneplus.net/v2/"

    return-object v0
.end method

.method public static getSignPrivateKey()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/accountsdk/auth/d;->a:Lcom/oneplus/accountsdk/auth/d;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/accountsdk/auth/d;->a:Lcom/oneplus/accountsdk/auth/d;

    invoke-virtual {v0}, Lcom/oneplus/accountsdk/auth/d;->a()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-static {}, Lcom/oneplus/accountsdk/auth/d;->b()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-static {}, Lcom/oneplus/accountsdk/utils/OnePlusServerConfigUtils;->getPrivateKeyOverSea()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    invoke-static {}, Lcom/oneplus/accountsdk/utils/OnePlusServerConfigUtils;->getPrivateKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
