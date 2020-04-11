.class public Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;
.super Ljava/lang/Object;
.source "OnePlusSceneCallBlockServiceInjector.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OnePlusSceneCallBlockManagerInjector"

.field private static sOnePlusSceneCallBlockService:Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static init()V
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->sOnePlusSceneCallBlockService:Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_scene_call_block:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;

    sput-object v0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->sOnePlusSceneCallBlockService:Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;

    :cond_0
    return-void
.end method

.method public static isCallBlockedWithUid(Ljava/lang/String;ILandroid/content/Intent;Landroid/content/pm/ResolveInfo;IZ)Z
    .locals 7

    invoke-static {}, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->init()V

    sget-object v0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->sOnePlusSceneCallBlockService:Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;->isCallBlockedWithUid(Ljava/lang/String;ILandroid/content/Intent;Landroid/content/pm/ResolveInfo;IZ)Z

    move-result v0

    return v0
.end method

.method public static isMutedByCallBlocker(Ljava/lang/String;Landroid/media/AudioAttributes;)Z
    .locals 1

    invoke-static {}, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->init()V

    sget-object v0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->sOnePlusSceneCallBlockService:Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;->isMutedByCallBlocker(Ljava/lang/String;Landroid/media/AudioAttributes;)Z

    move-result v0

    return v0
.end method

.method public static isNotificationMutedByCallBlocker(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)Z
    .locals 1

    invoke-static {}, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->init()V

    sget-object v0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->sOnePlusSceneCallBlockService:Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;->isNotificationMutedByCallBlocker(Ljava/lang/String;ILandroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method public static isNotificationMutedByESport(Landroid/service/notification/StatusBarNotification;)Z
    .locals 1

    invoke-static {}, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->init()V

    sget-object v0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->sOnePlusSceneCallBlockService:Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;->isNotificationMutedByESport(Landroid/service/notification/StatusBarNotification;)Z

    move-result v0

    return v0
.end method

.method public static isStreamMutedByCallBlocker(Ljava/lang/String;I)Z
    .locals 1

    invoke-static {}, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->init()V

    sget-object v0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->sOnePlusSceneCallBlockService:Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;->isStreamMutedByCallBlocker(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isUsageMutedByCallBlocker(Ljava/lang/String;I)Z
    .locals 1

    invoke-static {}, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->init()V

    sget-object v0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->sOnePlusSceneCallBlockService:Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;->isUsageMutedByCallBlocker(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static isVibratorUsageMutedByCallBlocker(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->init()V

    sget-object v0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->sOnePlusSceneCallBlockService:Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;

    invoke-interface {v0, p0, p1, p2}, Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;->isVibratorUsageMutedByCallBlocker(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static needUpdate(Landroid/content/Intent;)Z
    .locals 1

    invoke-static {}, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->init()V

    sget-object v0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->sOnePlusSceneCallBlockService:Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;->needUpdate(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public static updatePis()V
    .locals 1

    invoke-static {}, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->init()V

    sget-object v0, Lcom/oneplus/android/server/scene/OnePlusSceneCallBlockServiceInjector;->sOnePlusSceneCallBlockService:Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;

    invoke-interface {v0}, Lcom/oneplus/android/server/scene/IOnePlusSceneCallBlockService;->updatePis()V

    return-void
.end method
