.class Lcom/oneplus/core/gamevibrate/GameVibrateManager$1;
.super Landroid/util/Singleton;
.source "GameVibrateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/core/gamevibrate/GameVibrateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Singleton<",
        "Lcom/oneplus/core/gamevibrate/IGameVibrateService;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/util/Singleton;-><init>()V

    return-void
.end method


# virtual methods
.method protected create()Lcom/oneplus/core/gamevibrate/IGameVibrateService;
    .locals 4

    const-string v0, "game_vibrate_service"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    const-string v1, "GameVibrateManager"

    if-nez v0, :cond_0

    const-string v2, "can\'t get service binder: GameVibrateManager"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return-object v1

    :cond_0
    invoke-static {v0}, Lcom/oneplus/core/gamevibrate/IGameVibrateService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/core/gamevibrate/IGameVibrateService;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v3, "can\'t get service interface: GameVibrateManager"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-object v2
.end method

.method protected bridge synthetic create()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/core/gamevibrate/GameVibrateManager$1;->create()Lcom/oneplus/core/gamevibrate/IGameVibrateService;

    move-result-object v0

    return-object v0
.end method
