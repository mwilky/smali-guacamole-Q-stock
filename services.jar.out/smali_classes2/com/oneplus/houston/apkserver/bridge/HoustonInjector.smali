.class public Lcom/oneplus/houston/apkserver/bridge/HoustonInjector;
.super Ljava/lang/Object;
.source "HoustonInjector.java"


# static fields
.field public static AMS:Lcom/android/server/am/ActivityManagerService; = null

.field public static final TAG:Ljava/lang/String; = "HoustonInjector"

.field public static mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addProcess(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;)V
    .locals 1

    if-gtz p2, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->add(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;)V

    return-void
.end method

.method public static autoAcquireOrRelease(Z)V
    .locals 1

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->autoAcquireOrRelease(Z)V

    return-void
.end method

.method public static coldStart(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;IZ)V
    .locals 1

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->coldStart(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;IZ)V

    return-void
.end method

.method public static initialize(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;)V
    .locals 1

    sput-object p0, Lcom/oneplus/houston/apkserver/bridge/HoustonInjector;->AMS:Lcom/android/server/am/ActivityManagerService;

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

.method public static removeProcess(ILjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->remove(ILjava/lang/String;)V

    return-void
.end method

.method public static reportOnDrawnTime(ILjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->reportOnDrawnTime(ILjava/lang/String;)V

    return-void
.end method

.method public static reportStartTime(IJJLjava/lang/String;)V
    .locals 7

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v0

    move v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->reportStartTime(IJJLjava/lang/String;)V

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

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->updateScreenState(Z)V

    return-void
.end method

.method public static warmStart(ILjava/lang/String;)V
    .locals 1

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonProcessManager;->warmStart(ILjava/lang/String;)V

    return-void
.end method
