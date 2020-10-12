.class public Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/accountsdk/auth/OPAuthInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private appId:Ljava/lang/String;

.field private appKey:Ljava/lang/String;

.field private context:Landroid/content/Context;

.field private needEmail:Z

.field private needPhoneNum:Z

.field private onlyChina:Z

.field private onlyOverSea:Z

.field private refreshtoken:Ljava/lang/String;

.field private token:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;->appId:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;->refreshtoken:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;->appKey:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;->needPhoneNum:Z

    iput-boolean v1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;->needEmail:Z

    iput-boolean v1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;->onlyOverSea:Z

    iput-boolean v1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;->onlyChina:Z

    iput-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;->token:Ljava/lang/String;

    iput-object p1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;->context:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public appId(Ljava/lang/String;)Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;->appId:Ljava/lang/String;

    return-object p0
.end method

.method public appKey(Ljava/lang/String;)Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;->appKey:Ljava/lang/String;

    return-object p0
.end method

.method public build()Lcom/oneplus/accountsdk/auth/OPAuthInfo;
    .locals 2

    new-instance v0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;

    invoke-direct {v0}, Lcom/oneplus/accountsdk/auth/OPAuthInfo;-><init>()V

    iget-object v1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;->appId:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->setAppId(Ljava/lang/String;)V

    :cond_0
    iget-object v1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;->refreshtoken:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->setRefreshtoken(Ljava/lang/String;)V

    :cond_1
    iget-object v1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;->appKey:Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-virtual {v0, v1}, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->setRefreshtoken(Ljava/lang/String;)V

    :cond_2
    iget-object v1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;->token:Ljava/lang/String;

    if-eqz v1, :cond_3

    invoke-virtual {v0, v1}, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->setToken(Ljava/lang/String;)V

    :cond_3
    iget-object v1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->setContext(Landroid/content/Context;)V

    iget-boolean v1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;->needEmail:Z

    invoke-virtual {v0, v1}, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->setNeedEmail(Z)V

    iget-boolean v1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;->needPhoneNum:Z

    invoke-virtual {v0, v1}, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->setNeedPhoneNum(Z)V

    iget-boolean v1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;->onlyChina:Z

    invoke-virtual {v0, v1}, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->setOnlyChina(Z)V

    iget-boolean v1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;->onlyOverSea:Z

    invoke-virtual {v0, v1}, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->setOnlyOverSea(Z)V

    return-object v0
.end method

.method public needEmail(Z)Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;->needEmail:Z

    return-object p0
.end method

.method public needPhone(Z)Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;->needPhoneNum:Z

    return-object p0
.end method

.method public onlyChina(Z)Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;->onlyChina:Z

    return-object p0
.end method

.method public onlyOverSea(Z)Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;->onlyOverSea:Z

    return-object p0
.end method

.method public setAccountToken(Ljava/lang/String;)Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;->token:Ljava/lang/String;

    return-object p0
.end method

.method public setRefreshtoken(Ljava/lang/String;)Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;->refreshtoken:Ljava/lang/String;

    return-object p0
.end method
