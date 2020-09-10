.class public Lcom/android/server/am/OpFontControlInjector;
.super Ljava/lang/Object;
.source "OpFontControlInjector.java"


# static fields
.field private static sController:Lcom/android/server/am/IOpFontController;

.field private static sFontFeatureEnable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OpFontControlInjector;->sController:Lcom/android/server/am/IOpFontController;

    sget-boolean v0, Lcom/oneplus/theme/OpFontHelperInjector;->sFeatureEnable:Z

    sput-boolean v0, Lcom/android/server/am/OpFontControlInjector;->sFontFeatureEnable:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static changeFontForUser(II)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpFontControlInjector;->ensureValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OpFontControlInjector;->sController:Lcom/android/server/am/IOpFontController;

    invoke-interface {v0, p0, p1}, Lcom/android/server/am/IOpFontController;->changeFontForUser(II)V

    :cond_0
    return-void
.end method

.method public static dumpInfos()V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpFontControlInjector;->ensureValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OpFontControlInjector;->sController:Lcom/android/server/am/IOpFontController;

    invoke-interface {v0}, Lcom/android/server/am/IOpFontController;->dumpInfos()V

    :cond_0
    return-void
.end method

.method private static ensureValid()Z
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OpFontControlInjector;->sFontFeatureEnable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/android/server/am/OpFontControlInjector;->sController:Lcom/android/server/am/IOpFontController;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_font_controller:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/IOpFontController;

    sput-object v0, Lcom/android/server/am/OpFontControlInjector;->sController:Lcom/android/server/am/IOpFontController;

    :cond_1
    sget-object v0, Lcom/android/server/am/OpFontControlInjector;->sController:Lcom/android/server/am/IOpFontController;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public static getFontIDsForUser(I)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    invoke-static {}, Lcom/android/server/am/OpFontControlInjector;->ensureValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OpFontControlInjector;->sController:Lcom/android/server/am/IOpFontController;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpFontController;->getFontIDsForUser(I)Ljava/util/Set;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public static handleUserChange()V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpFontControlInjector;->ensureValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OpFontControlInjector;->sController:Lcom/android/server/am/IOpFontController;

    invoke-interface {v0}, Lcom/android/server/am/IOpFontController;->handleUserChange()V

    :cond_0
    return-void
.end method

.method public static initForFontCtrl(Landroid/content/Context;)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpFontControlInjector;->ensureValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OpFontControlInjector;->sController:Lcom/android/server/am/IOpFontController;

    invoke-interface {v0, p0}, Lcom/android/server/am/IOpFontController;->initForFontCtrl(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public static onFactoryReset()V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpFontControlInjector;->ensureValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OpFontControlInjector;->sController:Lcom/android/server/am/IOpFontController;

    invoke-interface {v0}, Lcom/android/server/am/IOpFontController;->onFactoryReset()V

    :cond_0
    return-void
.end method

.method public static onOTACompleted()V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpFontControlInjector;->ensureValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OpFontControlInjector;->sController:Lcom/android/server/am/IOpFontController;

    invoke-interface {v0}, Lcom/android/server/am/IOpFontController;->onOTACompleted()V

    :cond_0
    return-void
.end method

.method public static onPreparingForOTA()V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OpFontControlInjector;->ensureValid()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/OpFontControlInjector;->sController:Lcom/android/server/am/IOpFontController;

    invoke-interface {v0}, Lcom/android/server/am/IOpFontController;->onPreparingForOTA()V

    :cond_0
    return-void
.end method

.method public static resetAllFontLinkToDefault()Z
    .locals 1

    invoke-static {}, Lcom/oneplus/theme/OpFontHelperInjector;->resetAllLnkToDefault()Z

    move-result v0

    return v0
.end method
