.class public Lcom/android/server/wifi/OpSlaManagerInjector;
.super Ljava/lang/Object;
.source "OpSlaManagerInjector.java"


# static fields
.field private static final ENABLED:Z

.field private static sOpSlaManager:Lcom/android/server/wifi/IOpSlaManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xd0

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wifi/OpSlaManagerInjector;->ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static enableVerboseLogging(I)V
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/OpSlaManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/wifi/OpSlaManagerInjector;->sOpSlaManager:Lcom/android/server/wifi/IOpSlaManager;

    invoke-interface {v0, p0}, Lcom/android/server/wifi/IOpSlaManager;->enableVerboseLogging(I)V

    return-void
.end method

.method public static initInstance(Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/OpSlaManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/wifi/OpSlaManagerInjector;->sOpSlaManager:Lcom/android/server/wifi/IOpSlaManager;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_opsla:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wifi/IOpSlaManager;

    sput-object v0, Lcom/android/server/wifi/OpSlaManagerInjector;->sOpSlaManager:Lcom/android/server/wifi/IOpSlaManager;

    :cond_1
    sget-object v0, Lcom/android/server/wifi/OpSlaManagerInjector;->sOpSlaManager:Lcom/android/server/wifi/IOpSlaManager;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/android/server/wifi/IOpSlaManager;->initInstance(Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public static sendWifiScoreToKernel(I)V
    .locals 1

    sget-boolean v0, Lcom/android/server/wifi/OpSlaManagerInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/wifi/OpSlaManagerInjector;->sOpSlaManager:Lcom/android/server/wifi/IOpSlaManager;

    invoke-interface {v0, p0}, Lcom/android/server/wifi/IOpSlaManager;->sendWifiScoreToKernel(I)V

    return-void
.end method
