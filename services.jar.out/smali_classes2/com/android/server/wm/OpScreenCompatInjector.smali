.class public Lcom/android/server/wm/OpScreenCompatInjector;
.super Ljava/lang/Object;
.source "OpScreenCompatInjector.java"


# static fields
.field public static final IS_SCREEN_COMPAT_ENABLED:Z

.field public static final OP_COMPAT_MODE_16_9:I = 0x2

.field public static sNonRoundedCornerList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x29

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_1

    new-array v1, v0, [I

    const/16 v3, 0x40

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v0, v2

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    sput-boolean v0, Lcom/android/server/wm/OpScreenCompatInjector;->IS_SCREEN_COMPAT_ENABLED:Z

    new-instance v0, Ljava/util/ArrayList;

    const-string v1, "ScreenDecorOverlayExpand"

    const-string v2, "op_screenrecord"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sNonRoundedCornerList:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static expandScreenDecor(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpScreenCompat;->expandScreenDecor(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/WindowState;)V

    :cond_0
    return-void
.end method

.method public static finishBooting()V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpScreenCompat;->finishBooting()V

    :cond_0
    return-void
.end method

.method public static getCompatMode(Lcom/android/server/wm/ActivityRecord;)I
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpScreenCompat;->getCompatMode(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getCompatMode(Ljava/lang/String;I)I
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpScreenCompat;->getCompatMode(Ljava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static getScreenExpandOffset(Lcom/android/server/wm/WindowState;)I
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpScreenCompat;->getScreenExpandOffset(Lcom/android/server/wm/WindowState;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static init(Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpScreenCompat;->init(Lcom/android/server/wm/WindowManagerService;)V

    :cond_0
    return-void
.end method

.method private static initInstance()V
    .locals 1

    sget-boolean v0, Lcom/android/server/wm/OpScreenCompatInjector;->IS_SCREEN_COMPAT_ENABLED:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_screencompat:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/IOpScreenCompat;

    sput-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    :cond_0
    return-void
.end method

.method public static isAppWindowCompat(Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpScreenCompat;->isAppWindowCompat(Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isDisplayCompat(Ljava/lang/String;I)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpScreenCompat;->isDisplayCompat(Ljava/lang/String;I)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static isNotchUnLimited(Lcom/android/server/wm/WindowState;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpScreenCompat;->isNotchUnLimited(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static onConfigurationChanged()V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpScreenCompat;->onConfigurationChanged()V

    :cond_0
    return-void
.end method

.method public static overrideCompatInfoIfNeed(Landroid/content/pm/ApplicationInfo;)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpScreenCompat;->overrideCompatInfoIfNeed(Landroid/content/pm/ApplicationInfo;)V

    :cond_0
    return-void
.end method

.method public static overrideScaleIfNeed(Lcom/android/server/wm/WindowState;)F
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/wm/IOpScreenCompat;->overrideScaleIfNeed(Lcom/android/server/wm/WindowState;)F

    move-result v0

    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/wm/WindowState;->mGlobalScale:F

    return v0
.end method

.method public static resetDisplayCutout(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)I
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpScreenCompat;->resetDisplayCutout(Lcom/android/server/wm/WindowState;Lcom/android/server/wm/DisplayFrames;)I

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    return v0
.end method

.method public static resetFrameForCompat(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)V
    .locals 8

    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-interface/range {v0 .. v7}, Lcom/android/server/wm/IOpScreenCompat;->resetFrameForCompat(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Lcom/android/server/wm/WindowState;)V

    :cond_0
    return-void
.end method

.method public static resetModeIfNeed(IILjava/lang/String;I)I
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1, p2, p3}, Lcom/android/server/wm/IOpScreenCompat;->resetModeIfNeed(IILjava/lang/String;I)I

    move-result v0

    return v0

    :cond_0
    return p3
.end method

.method public static updateDefaultForScreenCompat()V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpScreenCompat;->updateDefaultForScreenCompat()V

    :cond_0
    return-void
.end method

.method public static updateDefaultForScreenCompat(Ljava/lang/String;I)V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/IOpScreenCompat;->updateDefaultForScreenCompat(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static updateSizeForResolutionChanged()V
    .locals 1

    invoke-static {}, Lcom/android/server/wm/OpScreenCompatInjector;->initInstance()V

    sget-object v0, Lcom/android/server/wm/OpScreenCompatInjector;->sOpScreenCompat:Lcom/android/server/wm/IOpScreenCompat;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/android/server/wm/IOpScreenCompat;->updateSizeForResolutionChanged()V

    :cond_0
    return-void
.end method
