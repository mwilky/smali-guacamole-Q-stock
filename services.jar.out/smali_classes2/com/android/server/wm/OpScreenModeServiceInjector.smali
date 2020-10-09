.class public Lcom/android/server/wm/OpScreenModeServiceInjector;
.super Ljava/lang/Object;
.source "OpScreenModeServiceInjector.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final ENABLED:Z

.field private static final FEATURE_EXTREME_ENABLE:Z

.field private static final TAG:Ljava/lang/String; = "OpScreenModeServiceInjector"

.field private static opScreenMode:Lcom/android/server/wm/IOpScreenModeService;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x75

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/wm/OpScreenModeServiceInjector;->ENABLED:Z

    new-array v0, v0, [I

    const/16 v1, 0xff

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->FEATURE_EXTREME_ENABLE:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustDensityForUser(II)I
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return p0

    :cond_0
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenmode_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpScreenModeService;

    sput-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    :cond_1
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpScreenModeService;->adjustDensityForUser(II)I

    move-result v0

    return v0

    :cond_2
    return p0
.end method

.method public static doScreenRotation()V
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->ENABLED:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->FEATURE_EXTREME_ENABLE:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenmode_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpScreenModeService;

    sput-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    :cond_1
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-eqz v0, :cond_2

    invoke-interface {v0}, Lcom/android/server/wm/IOpScreenModeService;->doScreenRotation()V

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method public static getPreferredModeId(Lcom/android/server/wm/WindowState;I)I
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->ENABLED:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenmode_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpScreenModeService;

    sput-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    :cond_1
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpScreenModeService;->getPreferredModeId(Lcom/android/server/wm/WindowState;I)I

    move-result v0

    return v0

    :cond_2
    return v1
.end method

.method public static init(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenmode_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpScreenModeService;

    sput-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    :cond_1
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpScreenModeService;->init(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;)V

    :cond_2
    return-void
.end method

.method public static onRecordingConfigChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenmode_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpScreenModeService;

    sput-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    :cond_1
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpScreenModeService;->onRecordingConfigChanged(Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public static onSetDensityForUser(II)V
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenmode_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpScreenModeService;

    sput-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    :cond_1
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpScreenModeService;->onSetDensityForUser(II)V

    :cond_2
    return-void
.end method

.method public static setRefreshRate(Landroid/os/IBinder;I)V
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenmode_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpScreenModeService;

    sput-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    :cond_1
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpScreenModeService;->setRefreshRate(Landroid/os/IBinder;I)V

    :cond_2
    return-void
.end method

.method public static updateGlobalModeId(I)I
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return p0

    :cond_0
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenmode_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpScreenModeService;

    sput-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    :cond_1
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpScreenModeService;->updateGlobalModeId(I)I

    move-result v0

    return v0

    :cond_2
    return p0
.end method

.method public static updateInputMethod(Z)V
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->ENABLED:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screenmode_service:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpScreenModeService;

    sput-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    :cond_1
    sget-object v0, Lcom/android/server/wm/OpScreenModeServiceInjector;->opScreenMode:Lcom/android/server/wm/IOpScreenModeService;

    if-eqz v0, :cond_2

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpScreenModeService;->updateInputMethod(Z)V

    :cond_2
    return-void
.end method
