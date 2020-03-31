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
.method public addFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V
    .locals 0

    invoke-static {}, Lcom/oneplus/core/oimc/OIMCServiceManager;->getService()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/oneplus/core/oimc/IOIMCService;->addFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "OIMCServiceManager"

    const-string p1, "OIMCService disconnected"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public getRemoteFuncStatus(Ljava/lang/String;)I
    .locals 0

    invoke-static {}, Lcom/oneplus/core/oimc/OIMCServiceManager;->getService()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/oneplus/core/oimc/IOIMCService;->getRemoteFuncStatus(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "OIMCServiceManager"

    const-string p1, "OIMCService disconnected"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public notifyModeChange(Ljava/lang/String;II)V
    .locals 0

    invoke-static {}, Lcom/oneplus/core/oimc/OIMCServiceManager;->getService()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1, p2, p3}, Lcom/oneplus/core/oimc/IOIMCService;->notifyModeChange(Ljava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "OIMCServiceManager"

    const-string p1, "OIMCService disconnected"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public removeFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V
    .locals 0

    invoke-static {}, Lcom/oneplus/core/oimc/OIMCServiceManager;->getService()Lcom/oneplus/core/oimc/IOIMCService;

    move-result-object p0

    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p0, p1}, Lcom/oneplus/core/oimc/IOIMCService;->removeFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string p0, "OIMCServiceManager"

    const-string p1, "OIMCService disconnected"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
