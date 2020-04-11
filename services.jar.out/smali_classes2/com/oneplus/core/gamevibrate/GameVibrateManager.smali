.class public Lcom/oneplus/core/gamevibrate/GameVibrateManager;
.super Ljava/lang/Object;
.source "GameVibrateManager.java"

# interfaces
.implements Lcom/oneplus/core/gamevibrate/IGameVibrateManager;
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# static fields
.field private static final CREATOR:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/oneplus/core/gamevibrate/IGameVibrateService;",
            ">;"
        }
    .end annotation
.end field

.field private static final DEBUG_ONEPLUS:Z

.field public static final ONEPLUS_GAME_VIBRATE_SERVICE:Ljava/lang/String; = "game_vibrate_service"

.field private static final TAG:Ljava/lang/String; = "GameVibrateManager"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->DEBUG_ONEPLUS:Z

    new-instance v0, Lcom/oneplus/core/gamevibrate/GameVibrateManager$1;

    invoke-direct {v0}, Lcom/oneplus/core/gamevibrate/GameVibrateManager$1;-><init>()V

    sput-object v0, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->CREATOR:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getService()Lcom/oneplus/core/gamevibrate/IGameVibrateService;
    .locals 1

    sget-object v0, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->CREATOR:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/core/gamevibrate/IGameVibrateService;

    return-object v0
.end method


# virtual methods
.method public getGameStartFlag()Z
    .locals 3

    invoke-static {}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->getService()Lcom/oneplus/core/gamevibrate/IGameVibrateService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/oneplus/core/gamevibrate/IGameVibrateService;->getGameStartFlag()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v1, "GameVibrateManager"

    const-string v2, "getGameStartFlag(), GameVibrateService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public getSupportedGame()[Ljava/lang/String;
    .locals 3

    invoke-static {}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->getService()Lcom/oneplus/core/gamevibrate/IGameVibrateService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/oneplus/core/gamevibrate/IGameVibrateService;->getSupportedGame()[Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v1, "GameVibrateManager"

    const-string v2, "getSupportedGame(), GameVibrateService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getZoneInfo()[I
    .locals 3

    invoke-static {}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->getService()Lcom/oneplus/core/gamevibrate/IGameVibrateService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/oneplus/core/gamevibrate/IGameVibrateService;->getZoneInfo()[I

    move-result-object v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v1, "GameVibrateManager"

    const-string v2, "getZoneInfo(), GameVibrateService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public init(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->DEBUG_ONEPLUS:Z

    const-string v1, "GameVibrateManager"

    if-eqz v0, :cond_0

    const-string v0, " init "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->getService()Lcom/oneplus/core/gamevibrate/IGameVibrateService;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0, p1}, Lcom/oneplus/core/gamevibrate/IGameVibrateService;->init(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string v2, "init(), GameVibrateService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public isOnlineConfigEnable()Z
    .locals 3

    invoke-static {}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->getService()Lcom/oneplus/core/gamevibrate/IGameVibrateService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/oneplus/core/gamevibrate/IGameVibrateService;->isOnlineConfigEnable()Z

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v1, "GameVibrateManager"

    const-string v2, "isOnlineConfigEnable(), GameVibrateService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v1, 0x0

    return v1
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 3

    invoke-static {}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->getService()Lcom/oneplus/core/gamevibrate/IGameVibrateService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/oneplus/core/gamevibrate/IGameVibrateService;->onPointerEvent(Landroid/view/MotionEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v1, "GameVibrateManager"

    const-string v2, "onPointerEvent(), GameVibrateService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public release()V
    .locals 3

    sget-boolean v0, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->DEBUG_ONEPLUS:Z

    const-string v1, "GameVibrateManager"

    if-eqz v0, :cond_0

    const-string v0, " release "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->getService()Lcom/oneplus/core/gamevibrate/IGameVibrateService;

    move-result-object v0

    if-eqz v0, :cond_1

    :try_start_0
    invoke-interface {v0}, Lcom/oneplus/core/gamevibrate/IGameVibrateService;->release()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_1
    const-string v2, "release(), GameVibrateService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public saveZoneInfo(ZZ)V
    .locals 3

    invoke-static {}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->getService()Lcom/oneplus/core/gamevibrate/IGameVibrateService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1, p2}, Lcom/oneplus/core/gamevibrate/IGameVibrateService;->saveZoneInfo(ZZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v1, "GameVibrateManager"

    const-string v2, "saveZoneInfo(), GameVibrateService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setScreenSize()V
    .locals 3

    invoke-static {}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->getService()Lcom/oneplus/core/gamevibrate/IGameVibrateService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0}, Lcom/oneplus/core/gamevibrate/IGameVibrateService;->setScreenSize()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v1, "GameVibrateManager"

    const-string v2, "setScreenSize(), GameVibrateService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public setZoneInfo([I)V
    .locals 3

    invoke-static {}, Lcom/oneplus/core/gamevibrate/GameVibrateManager;->getService()Lcom/oneplus/core/gamevibrate/IGameVibrateService;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-interface {v0, p1}, Lcom/oneplus/core/gamevibrate/IGameVibrateService;->setZoneInfo([I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    :cond_0
    const-string v1, "GameVibrateManager"

    const-string v2, "setZoneInfo() GameVibrateService disconnected"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
