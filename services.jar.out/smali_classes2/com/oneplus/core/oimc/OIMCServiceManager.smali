.class public Lcom/oneplus/core/oimc/OIMCServiceManager;
.super Ljava/lang/Object;
.source "OIMCServiceManager.java"

# interfaces
.implements Lcom/oneplus/core/oimc/IOIMCServiceManager;


# static fields
.field private static final CREATOR:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/oneplus/core/oimc/IOIMCService;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG_ONEPLUS:Z

.field public static final ONEPLUS_OIMC_SERVICE:Ljava/lang/String; = "oimc_service"

.field private static final TAG:Ljava/lang/String; = "OIMCServiceManager"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/core/oimc/OIMCServiceManager;->DEBUG_ONEPLUS:Z

    new-instance v0, Lcom/oneplus/core/oimc/OIMCServiceManager$1;

    invoke-direct {v0}, Lcom/oneplus/core/oimc/OIMCServiceManager$1;-><init>()V

    sput-object v0, Lcom/oneplus/core/oimc/OIMCServiceManager;->CREATOR:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getService()Lcom/oneplus/core/oimc/IOIMCService;
    .locals 1

    sget-object v0, Lcom/oneplus/core/oimc/OIMCServiceManager;->CREATOR:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/core/oimc/IOIMCService;

    return-object v0
.end method


# virtual methods
.method public addFuncRule(Lcom/oneplus/core/oimc/OIMCRule;I)V
    .locals 3

    invoke-static {}, Lcom/oneplus/core/oimc/OIMCServiceManager;->getService()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oneplus/core/oimc/IOIMCService;->addFuncRule(Lcom/oneplus/core/oimc/OIMCRule;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v1, "OIMCServiceManager"

    const-string v2, "OIMCService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public addFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V
    .locals 3

    invoke-static {}, Lcom/oneplus/core/oimc/OIMCServiceManager;->getService()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/oneplus/core/oimc/IOIMCService;->addFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v1, "OIMCServiceManager"

    const-string v2, "OIMCService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public getRemoteFuncConfig(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/oneplus/core/oimc/OIMCServiceManager;->getService()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/oneplus/core/oimc/IOIMCService;->getRemoteFuncConfig(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v1, "OIMCServiceManager"

    const-string v2, "OIMCService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getRemoteFuncStatus(Ljava/lang/String;)I
    .locals 3

    invoke-static {}, Lcom/oneplus/core/oimc/OIMCServiceManager;->getService()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/oneplus/core/oimc/IOIMCService;->getRemoteFuncStatus(Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v1, "OIMCServiceManager"

    const-string v2, "OIMCService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public notifyModeChange(Ljava/lang/String;II)V
    .locals 3

    invoke-static {}, Lcom/oneplus/core/oimc/OIMCServiceManager;->getService()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2, p3}, Lcom/oneplus/core/oimc/IOIMCService;->notifyModeChange(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v1, "OIMCServiceManager"

    const-string v2, "OIMCService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public registerRemoteAction(Ljava/lang/String;Lcom/oneplus/core/oimc/IOIMCRemoteAction;)V
    .locals 3

    invoke-static {}, Lcom/oneplus/core/oimc/OIMCServiceManager;->getService()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oneplus/core/oimc/IOIMCService;->registerRemoteAction(Ljava/lang/String;Lcom/oneplus/core/oimc/IOIMCRemoteAction;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v1, "OIMCServiceManager"

    const-string v2, "OIMCService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public removeFuncRule(Lcom/oneplus/core/oimc/OIMCRule;I)V
    .locals 3

    invoke-static {}, Lcom/oneplus/core/oimc/OIMCServiceManager;->getService()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oneplus/core/oimc/IOIMCService;->removeFuncRule(Lcom/oneplus/core/oimc/OIMCRule;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v1, "OIMCServiceManager"

    const-string v2, "OIMCService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public removeFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V
    .locals 3

    invoke-static {}, Lcom/oneplus/core/oimc/OIMCServiceManager;->getService()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/oneplus/core/oimc/IOIMCService;->removeFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v1, "OIMCServiceManager"

    const-string v2, "OIMCService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public runRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V
    .locals 3

    invoke-static {}, Lcom/oneplus/core/oimc/OIMCServiceManager;->getService()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/oneplus/core/oimc/IOIMCService;->runRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v1, "OIMCServiceManager"

    const-string v2, "OIMCService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public unRegisterRemoteAction(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/oneplus/core/oimc/OIMCServiceManager;->getService()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/oneplus/core/oimc/IOIMCService;->unRegisterRemoteAction(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v1, "OIMCServiceManager"

    const-string v2, "OIMCService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
