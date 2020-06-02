.class public Lcom/oneplus/android/server/power/OpFastChargeInjector;
.super Ljava/lang/Object;
.source "OpFastChargeInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final ENABLED:Z

.field private static final TAG:Ljava/lang/String; = "OpFastChargeInjector"

.field private static opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->DEBUG:Z

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xa1

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->ENABLED:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addIntentExtra(Landroid/content/Intent;)V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/power/IOpFastCharge;->addIntentExtra(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public static chargeVibration()V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/oneplus/android/server/power/IOpFastCharge;->chargeVibration()V

    :cond_1
    return-void
.end method

.method public static getFastChargeStatus()Z
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/oneplus/android/server/power/IOpFastCharge;->getFastChargeStatus()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public static getLastFastChargeStatus()Z
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/oneplus/android/server/power/IOpFastCharge;->getLastFastChargeStatus()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public static init(Landroid/content/Context;)Z
    .locals 3

    sget-boolean v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->DEBUG:Z

    const-string v2, "OpFastChargeInjector"

    if-eqz v0, :cond_1

    const-string v0, "in framework.jar OpFastChargeInjector"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;

    if-nez v0, :cond_2

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_fast_charge:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/android/server/power/IOpFastCharge;

    sput-object v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;

    goto :goto_0

    :cond_2
    const-string v0, "OpFastCharge is null"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    sget-object v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;

    if-eqz v0, :cond_3

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/power/IOpFastCharge;->init(Landroid/content/Context;)V

    :cond_3
    sget-object v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
.end method

.method public static registerObserver(ILandroid/os/Handler;)Z
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0, p1}, Lcom/oneplus/android/server/power/IOpFastCharge;->registerObserver(ILandroid/os/Handler;)V

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method public static update(Landroid/hardware/health/V1_0/HealthInfo;)V
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;

    if-eqz v0, :cond_1

    invoke-interface {v0, p0}, Lcom/oneplus/android/server/power/IOpFastCharge;->update(Landroid/hardware/health/V1_0/HealthInfo;)V

    :cond_1
    return-void
.end method

.method public static updateLastFastChargeStatus()Z
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/oneplus/android/server/power/IOpFastCharge;->updateLastFastChargeStatus()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method

.method public static updateLightsLocked()Z
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/oneplus/android/server/power/OpFastChargeInjector;->opFastCharge:Lcom/oneplus/android/server/power/IOpFastCharge;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/oneplus/android/server/power/IOpFastCharge;->updateLightsLocked()Z

    move-result v0

    return v0

    :cond_1
    return v1
.end method
