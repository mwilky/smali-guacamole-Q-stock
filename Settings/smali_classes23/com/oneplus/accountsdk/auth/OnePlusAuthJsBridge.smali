.class public final Lcom/oneplus/accountsdk/auth/OnePlusAuthJsBridge;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String; = "OPAuthJsBridge"


# instance fields
.field private mConstant:Lcom/oneplus/accountsdk/auth/d;


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/oneplus/accountsdk/auth/d;->a:Lcom/oneplus/accountsdk/auth/d;

    iput-object v0, p0, Lcom/oneplus/accountsdk/auth/OnePlusAuthJsBridge;->mConstant:Lcom/oneplus/accountsdk/auth/d;

    return-void
.end method


# virtual methods
.method public final encrypt(Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    :try_start_0
    invoke-static {p1}, Lcom/oneplus/accountsdk/utils/OnePlusAuthRSAUtils;->rsaEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const-string p1, ""

    return-object p1
.end method

.method public final getAppId()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/OnePlusAuthJsBridge;->mConstant:Lcom/oneplus/accountsdk/auth/d;

    iget-object v0, v0, Lcom/oneplus/accountsdk/auth/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceId()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/OnePlusAuthJsBridge;->mConstant:Lcom/oneplus/accountsdk/auth/d;

    iget-object v0, v0, Lcom/oneplus/accountsdk/auth/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final getDeviceModel()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/OnePlusAuthJsBridge;->mConstant:Lcom/oneplus/accountsdk/auth/d;

    iget-object v0, v0, Lcom/oneplus/accountsdk/auth/d;->d:Ljava/lang/String;

    return-object v0
.end method

.method public final getLanguage()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    invoke-static {}, Lcom/oneplus/accountsdk/utils/OnePlusAuthDeviceIdUtils;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getNowTiemms()Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/OnePlusAuthJsBridge;->mConstant:Lcom/oneplus/accountsdk/auth/d;

    iget-object v0, v0, Lcom/oneplus/accountsdk/auth/d;->e:Ljava/lang/String;

    return-object v0
.end method

.method public final getSDKVersion()Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    const-string v0, "1.2.1"

    return-object v0
.end method

.method public final getSign(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    new-instance v0, Lcom/oneplus/accountsdk/utils/OnePlusAuthSignUtils;

    invoke-direct {v0}, Lcom/oneplus/accountsdk/utils/OnePlusAuthSignUtils;-><init>()V

    invoke-virtual {v0, p1}, Lcom/oneplus/accountsdk/utils/OnePlusAuthSignUtils;->MD5Encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
