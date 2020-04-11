.class public Lcom/android/server/OpVibratorServiceInjector;
.super Ljava/lang/Object;
.source "OpVibratorServiceInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_INJECTOR:Z

.field private static final TAG:Ljava/lang/String;

.field private static sOpVibratorService:Lcom/android/server/IOpVibratorService;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG:Z

    const-class v0, Lcom/android/server/OpVibratorServiceInjector;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static doVibratorOn(JI)V
    .locals 2

    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.doVibratorOn()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/IOpVibratorService;->doVibratorOn(JI)V

    return-void
.end method

.method public static doVibratorPerformEffect(II)J
    .locals 2

    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.doVibratorPerformEffect()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0, p1}, Lcom/android/server/IOpVibratorService;->doVibratorPerformEffect(II)J

    move-result-wide v0

    return-wide v0
.end method

.method public static doVibratorSetAmplitude(I)V
    .locals 2

    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.doVibratorSetAmplitude()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0}, Lcom/android/server/IOpVibratorService;->doVibratorSetAmplitude(I)V

    return-void
.end method

.method public static getDurationMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.getDurationMap()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->getDurationMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getEffectMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.getEffectMap()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->getEffectMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static getIntensityEffectType()I
    .locals 2

    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.getIntensityEffectType()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->getIntensityEffectType()I

    move-result v0

    return v0
.end method

.method public static getIntensityStrengthType()I
    .locals 2

    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.getIntensityStrengthType()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->getIntensityStrengthType()I

    move-result v0

    return v0
.end method

.method public static getOldIntensityEffectType()I
    .locals 2

    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.getOldIntensityEffectType()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->getOldIntensityEffectType()I

    move-result v0

    return v0
.end method

.method public static getRepeatVibrate()Z
    .locals 2

    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.getRepeatVibrate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->getRepeatVibrate()Z

    move-result v0

    return v0
.end method

.method public static getVibrateOnTouchIntensity()I
    .locals 2

    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.getVibrateOnTouchIntensity()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->getVibrateOnTouchIntensity()I

    move-result v0

    return v0
.end method

.method public static getVibratorEffectMap(Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.getVibratorEffectMap()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0}, Lcom/android/server/IOpVibratorService;->getVibratorEffectMap(Ljava/lang/String;)V

    return-void
.end method

.method public static initCaliFile()V
    .locals 2

    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.initCaliFile()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->initCaliFile()V

    return-void
.end method

.method private static initInstance()V
    .locals 1

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_vibratorservice:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOpVibratorService;

    sput-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    :cond_0
    return-void
.end method

.method public static initVibratorEffectMap(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.initVibratorEffectMap()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0, p1}, Lcom/android/server/IOpVibratorService;->initVibratorEffectMap(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static isVibrating()Z
    .locals 2

    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.isVibrating()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->isVibrating()Z

    move-result v0

    return v0
.end method

.method public static motorF0Calibration()V
    .locals 2

    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.motorF0Calibration()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->motorF0Calibration()V

    return-void
.end method

.method public static setIntensityEffectType(I)V
    .locals 2

    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.setIntensityEffectType()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0}, Lcom/android/server/IOpVibratorService;->setIntensityEffectType(I)V

    return-void
.end method

.method public static setIsEffectChanged(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.setIsEffectChanged()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0}, Lcom/android/server/IOpVibratorService;->setIsEffectChanged(Z)V

    return-void
.end method

.method public static setIsVibrating(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.setIsVibrating()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0}, Lcom/android/server/IOpVibratorService;->setIsVibrating(Z)V

    return-void
.end method

.method public static setOldIntensityEffectType(I)V
    .locals 2

    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.setOldIntensityEffectType()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0}, Lcom/android/server/IOpVibratorService;->setOldIntensityEffectType(I)V

    return-void
.end method

.method public static setRepeatVibrate(Z)V
    .locals 2

    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.setRepeatVibrate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0}, Lcom/android/server/IOpVibratorService;->setRepeatVibrate(Z)V

    return-void
.end method

.method public static setVibratorEffect(Lcom/android/server/VibratorService$Vibration;ILjava/lang/Object;)I
    .locals 2

    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.setVibratorEffect()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/IOpVibratorService;->setVibratorEffect(Lcom/android/server/VibratorService$Vibration;ILjava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public static updateVibrator()V
    .locals 2

    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.updateVibrator()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0}, Lcom/android/server/IOpVibratorService;->updateVibrator()V

    return-void
.end method

.method public static vibrate(ILandroid/os/VibrationEffect;Ljava/lang/String;)Landroid/os/VibrationEffect;
    .locals 2

    sget-boolean v0, Lcom/android/server/OpVibratorServiceInjector;->DEBUG_INJECTOR:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->TAG:Ljava/lang/String;

    const-string v1, "call OpVibratorServiceInjector.vibrate()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/OpVibratorServiceInjector;->initInstance()V

    sget-object v0, Lcom/android/server/OpVibratorServiceInjector;->sOpVibratorService:Lcom/android/server/IOpVibratorService;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/IOpVibratorService;->vibrate(ILandroid/os/VibrationEffect;Ljava/lang/String;)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0
.end method
