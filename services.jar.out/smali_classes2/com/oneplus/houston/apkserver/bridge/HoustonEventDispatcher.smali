.class public Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;
.super Ljava/lang/Object;
.source "HoustonEventDispatcher.java"

# interfaces
.implements Lcom/oneplus/houston/common/client/IProcessEventCallback;


# static fields
.field private static final TAG:Ljava/lang/String; = "HoustonEventDispatcher"

.field private static sInstance:Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->sInstance:Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;
    .locals 1

    sget-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->sInstance:Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->init()V

    :cond_0
    sget-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->sInstance:Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;

    return-object v0
.end method

.method public static init()V
    .locals 1

    new-instance v0, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;

    invoke-direct {v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;-><init>()V

    sput-object v0, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->sInstance:Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;IILjava/lang/String;IILjava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/oneplus/houston/common/client/Event;

    invoke-direct {v0}, Lcom/oneplus/houston/common/client/Event;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x1

    const-string v3, "func"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "pkg"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "uid"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "id"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "process"

    invoke-virtual {v1, v2, p4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "pid"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "flags"

    invoke-virtual {v1, v2, p6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "reason"

    invoke-virtual {v1, v2, p7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/Event;->putExtras(Landroid/os/Bundle;)Lcom/oneplus/houston/common/client/Event;

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->scheduleProcessEvent(Lcom/oneplus/houston/common/client/Event;)V

    return-void
.end method

.method public doInit(Lcom/oneplus/houston/common/client/parcel/InitArg;)V
    .locals 0

    return-void
.end method

.method public isConnected()Z
    .locals 1

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->isConnected()Z

    move-result v0

    return v0
.end method

.method public onEvent(Lcom/oneplus/houston/common/client/Event;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "scheduleProcessEvent event:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/houston/common/client/Event;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "HoustonEventDispatcher"

    invoke-static {v1, v0}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->scheduleProcessEvent(Lcom/oneplus/houston/common/client/Event;)V

    return-void
.end method

.method public onReceive(I)V
    .locals 1

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->scheduleProcessEvent(I)V

    return-void
.end method

.method public onReceive(Landroid/content/Intent;)V
    .locals 1

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->scheduleProcessEvent(Landroid/content/Intent;)V

    return-void
.end method

.method public remove(ILjava/lang/String;)V
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/oneplus/houston/common/client/Event;

    invoke-direct {v0}, Lcom/oneplus/houston/common/client/Event;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x2

    const-string v3, "func"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "pid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "reason"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/Event;->putExtras(Landroid/os/Bundle;)Lcom/oneplus/houston/common/client/Event;

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->scheduleProcessEvent(Lcom/oneplus/houston/common/client/Event;)V

    return-void
.end method

.method public setAdj([I[I)V
    .locals 0

    return-void
.end method

.method public setFlags(III)V
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/oneplus/houston/common/client/Event;

    invoke-direct {v0}, Lcom/oneplus/houston/common/client/Event;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x5

    const-string v3, "func"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "pid"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "flags"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "mask"

    invoke-virtual {v1, v2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/Event;->putExtras(Landroid/os/Bundle;)Lcom/oneplus/houston/common/client/Event;

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->scheduleProcessEvent(Lcom/oneplus/houston/common/client/Event;)V

    return-void
.end method

.method public setOom([I[I[Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public setPss(III)V
    .locals 0

    return-void
.end method

.method public updateScreenState(Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/houston/apkserver/bridge/HoustonEventDispatcher;->isConnected()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/oneplus/houston/common/client/Event;

    invoke-direct {v0}, Lcom/oneplus/houston/common/client/Event;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const/4 v2, 0x6

    const-string v3, "func"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v2, "screen"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    invoke-virtual {v0, v1}, Lcom/oneplus/houston/common/client/Event;->putExtras(Landroid/os/Bundle;)Lcom/oneplus/houston/common/client/Event;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " isScreenOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "HoustonEventDispatcher"

    invoke-static {v3, v2}, Lcom/oneplus/houston/common/client/utils/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->getInstance()Lcom/oneplus/houston/apkserver/bridge/HoustonServer;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/oneplus/houston/apkserver/bridge/HoustonServer;->scheduleProcessEvent(Lcom/oneplus/houston/common/client/Event;)V

    return-void
.end method
