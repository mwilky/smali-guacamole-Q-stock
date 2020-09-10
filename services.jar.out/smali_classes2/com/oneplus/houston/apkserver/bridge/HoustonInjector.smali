.class public Lcom/oneplus/houston/apkserver/bridge/HoustonInjector;
.super Ljava/lang/Object;
.source "HoustonInjector.java"


# static fields
.field public static mAms:Lcom/android/server/am/ActivityManagerService;

.field public static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static autoAcquireOrRelease(Z)V
    .locals 1

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->autoAcquireOrRelease(Z)V

    return-void
.end method

.method public static initialize(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 1

    sput-object p0, Lcom/oneplus/houston/apkserver/bridge/HoustonInjector;->mAms:Lcom/android/server/am/ActivityManagerService;

    sput-object p1, Lcom/oneplus/houston/apkserver/bridge/HoustonInjector;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonInjector;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->publish(Landroid/content/Context;)V

    return-void
.end method

.method public static moveForeground(I)V
    .locals 1

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->moveForeground(I)V

    return-void
.end method

.method public static preBindApplication(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;II)V
    .locals 1

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->preBindApplication(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;II)V

    return-void
.end method

.method public static removeProcess(ILjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->remove(ILjava/lang/String;)V

    return-void
.end method

.method public static reportActivityDisplayed(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
    .locals 6

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    move-result-object v0

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->reportActivityDisplayed(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method public static setFront(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->setFront(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public static systemReady()V
    .locals 1

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->systemReady()V

    return-void
.end method

.method public static updateScreenState(Z)V
    .locals 1

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->updateScreenState(Z)V

    return-void
.end method
