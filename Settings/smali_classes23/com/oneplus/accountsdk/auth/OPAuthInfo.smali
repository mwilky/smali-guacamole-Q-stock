.class public Lcom/oneplus/accountsdk/auth/OPAuthInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/accountsdk/auth/OPAuthInfo$Builder;
    }
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
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->appId:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->refreshtoken:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->appKey:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->needPhoneNum:Z

    iput-boolean v1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->needEmail:Z

    iput-boolean v1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->onlyOverSea:Z

    iput-boolean v1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->onlyChina:Z

    iput-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->token:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->appId:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->context:Landroid/content/Context;

    iput-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->refreshtoken:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->appKey:Ljava/lang/String;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->needPhoneNum:Z

    iput-boolean v1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->needEmail:Z

    iput-boolean v1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->onlyOverSea:Z

    iput-boolean v1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->onlyChina:Z

    iput-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->token:Ljava/lang/String;

    iput-object p1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->appId:Ljava/lang/String;

    iput-object p2, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->context:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/accountsdk/auth/OPAuthInfo;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->refreshtoken:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAppId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->appId:Ljava/lang/String;

    return-object v0
.end method

.method public getAppKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->appKey:Ljava/lang/String;

    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getOnlyChina()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->onlyChina:Z

    return v0
.end method

.method public getOnlyOverSea()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->onlyOverSea:Z

    return v0
.end method

.method public getRefreshtoken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->refreshtoken:Ljava/lang/String;

    return-object v0
.end method

.method public getToken()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->token:Ljava/lang/String;

    return-object v0
.end method

.method public isNeedEmail()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->needEmail:Z

    return v0
.end method

.method public isNeedPhoneNum()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->needPhoneNum:Z

    return v0
.end method

.method public setAppId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->appId:Ljava/lang/String;

    return-void
.end method

.method public setAppKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->appKey:Ljava/lang/String;

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->context:Landroid/content/Context;

    return-void
.end method

.method public setNeedEmail(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->needEmail:Z

    return-void
.end method

.method public setNeedPhoneNum(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->needPhoneNum:Z

    return-void
.end method

.method public setOnlyChina(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->onlyChina:Z

    return-void
.end method

.method public setOnlyOverSea(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->onlyOverSea:Z

    return-void
.end method

.method public setRefreshtoken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->refreshtoken:Ljava/lang/String;

    return-void
.end method

.method public setToken(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->token:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OPAuthInfo{appId=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->appId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", context="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->context:Landroid/content/Context;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", refreshtoken=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->refreshtoken:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v2, ", appKey=\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->appKey:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v1, ", needPhoneNum="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->needPhoneNum:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", needEmail="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/accountsdk/auth/OPAuthInfo;->needEmail:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
