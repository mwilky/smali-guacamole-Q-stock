.class public Lcom/android/server/BatteryServiceInjector;
.super Ljava/lang/Object;
.source "BatteryServiceInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_INJECTOR:Z

.field private static final TAG:Ljava/lang/String; = "BatteryServiceInjector"

.field private static mDeepSleepState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/BatteryServiceInjector;->DEBUG:Z

    const-string v0, "BatteryServiceInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/BatteryServiceInjector;->DEBUG_INJECTOR:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/BatteryServiceInjector;->mDeepSleepState:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ignoreUpdate(Landroid/hardware/health/V1_0/HealthInfo;IIIII)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/BatteryServiceInjector;->mDeepSleepState:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    iget v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryVoltage:I

    if-ne v0, p1, :cond_2

    iget v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryTemperature:I

    if-ne v0, p2, :cond_2

    iget v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingCurrent:I

    if-ne v0, p3, :cond_2

    iget v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->maxChargingVoltage:I

    if-ne v0, p4, :cond_2

    iget v0, p0, Landroid/hardware/health/V1_0/HealthInfo;->batteryChargeCounter:I

    if-eq v0, p5, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static setDeepSleepMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/server/BatteryServiceInjector;->mDeepSleepState:Z

    return-void
.end method
