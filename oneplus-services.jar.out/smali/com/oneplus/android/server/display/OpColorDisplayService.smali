.class public final Lcom/oneplus/android/server/display/OpColorDisplayService;
.super Lcom/oneplus/display/IOneplusColorDisplay$Stub;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/display/OpColorDisplayService$zta;,
        Lcom/oneplus/android/server/display/OpColorDisplayService$you;
    }
.end annotation


# static fields
.field private static final ADVANCE_DISPLAYP3:I = 0x4

.field private static final ADVANCE_SRGB:I = 0x3

.field private static final ADVANCE_WIDE:I = 0x2

.field private static final CUSTOM_DISPLAYP3_MODE:I = 0x2

.field private static final CUSTOM_MODE:I = 0x3

.field private static final CUSTOM_NTSC_MODE:I = 0x0

.field private static final CUSTOM_SRGB_MODE:I = 0x1

.field private static final DEFAULT_MODE:I = 0x1

.field private static final DISABLE_COLOR_FAST:I = 0x0

.field private static final FACTORY_MODE:I = 0x14

.field private static final IS_SUPPORT_DECR_BL_CJ:Z

.field private static final MSG_COLORREAD2NIGHT:I = 0xd

.field private static final MSG_COLORREAD2READ:I = 0xf

.field private static final MSG_COLORREAD_SWITCH:I = 0x11

.field private static final MSG_CUSTOM_COLOR_TEMPERATURE:I = 0xc

.field private static final MSG_DCENABLE:I = 0x8

.field private static final MSG_DISABLECOLOR:I = 0x4

.field private static final MSG_DISABLE_LIGHT_SENSOR:I = 0x13

.field private static final MSG_ENHANCE_CUSTOM_CCT:I = 0x18

.field private static final MSG_ENHANCE_VIVD_NATURAL_CCT:I = 0x19

.field private static final MSG_ENTER_DOOGLE_MATRIX_MODE:I = 0x15

.field private static final MSG_EXIT_DOOGLE_MATRIX_MODE:I = 0x16

.field private static final MSG_NIGHT2COLOREEAD:I = 0xe

.field private static final MSG_NIGHT2READING:I = 0x2

.field private static final MSG_NIGHTBRIGHTNESS:I = 0xa

.field private static final MSG_NIGHTSTRENGTH:I = 0x9

.field private static final MSG_NIGHT_SWITCH:I = 0x0

.field private static final MSG_READ2COLORREAD:I = 0x10

.field private static final MSG_READING2NIGHT:I = 0x3

.field private static final MSG_READING_SWITCH:I = 0x1

.field private static final MSG_RECOVER_ONEPLUS_MATRIX:I = 0xb

.field private static final MSG_RESET_ENHANCE_CCT:I = 0x17

.field private static final MSG_REVERTSTATUS:I = 0x5

.field private static final MSG_SCREEN_OFF:I = 0x7

.field private static final MSG_SCREEN_ON:I = 0x6

.field private static final MSG_SETUP:I = 0x12

.field private static final MSG_UPDATE_AUTO_AD_STATUS:I = 0x14

.field private static final NATIVE:I = 0x7

.field private static final NATURAL_MODE:I = 0xa

.field private static final NATURE:I = 0x1

.field private static final OP_DC_ENABLE:I = 0x16

.field private static final OP_DISPLAY_HALSRGB_COLOR_MODE:I = 0x12

.field private static final OP_DISPLAY_P3_COLOR_MODE:I = 0x10

.field private static final OP_DISPLAY_WIDE_COLOR_MODE:I = 0x11

.field private static final OP_NATIVE_CUSTOMER_P3_MODE:I = 0x15

.field private static final OP_NATIVE_CUSTOMER_SRGB_MODE:I = 0x14

.field private static final OP_NATIVE_LOADING_EFFECT_MODE:I = 0x13

.field private static final PUBG:Ljava/lang/String; = "com.tencent.ig"

.field private static final RESUME_COLOR:I = 0x2

.field private static final SCREATOR:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/oneplus/display/IOneplusColorDisplay;",
            ">;"
        }
    .end annotation
.end field

.field private static final SHARPNESS0:I = 0xa

.field private static final SHARPNESS70:I = 0x9

.field private static final TAG:Ljava/lang/String; = "OpColorDisplayService"

.field private static final VIVD:I


# instance fields
.field private mAssertiveDisplayManager:Lcom/oneplus/android/server/display/tsu;

.field private final mCDHHandler:Lcom/oneplus/android/server/display/OpColorDisplayService$zta;

.field private mColorDisplayThread:Landroid/os/HandlerThread;

.field private mColorGamutManager:Lcom/oneplus/android/server/display/dma;

.field private mColorReadModeState:Z

.field private mColorTintManager:Lcom/oneplus/android/server/display/bvj;

.field private mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private mCurrentUser:I

.field private mDisableColorState:I

.field private mDtm:Lcom/android/server/display/color/DisplayTransformManager;

.field private mFpm:Landroid/hardware/fingerprint/FingerprintManager;

.field private mFrontPackageListener:Lcom/android/server/OnePlusUtil$zta$you;

.field private mGlobaAmbientLux:F

.field private final mHandler:Landroid/os/Handler;

.field private mHasFingerprint:Z

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mNightModeState:Z

.field private mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

.field private mVivdAndNaturalCCT:I

.field private mWBReadModeState:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xf7

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/android/server/display/OpColorDisplayService;->IS_SUPPORT_DECR_BL_CJ:Z

    new-instance v0, Lcom/oneplus/android/server/display/rtg;

    invoke-direct {v0}, Lcom/oneplus/android/server/display/rtg;-><init>()V

    sput-object v0, Lcom/oneplus/android/server/display/OpColorDisplayService;->SCREATOR:Landroid/util/Singleton;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/display/IOneplusColorDisplay$Stub;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mHasFingerprint:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mWBReadModeState:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mNightModeState:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorReadModeState:Z

    iput v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mDisableColorState:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mGlobaAmbientLux:F

    iput v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mVivdAndNaturalCCT:I

    iput-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/oneplus/android/server/display/dma;

    invoke-direct {v0, p1}, Lcom/oneplus/android/server/display/dma;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorGamutManager:Lcom/oneplus/android/server/display/dma;

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ColorDisplayThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorDisplayThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorDisplayThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;

    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorDisplayThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/android/server/display/OpColorDisplayService$zta;-><init>(Lcom/oneplus/android/server/display/OpColorDisplayService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCDHHandler:Lcom/oneplus/android/server/display/OpColorDisplayService$zta;

    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorDisplayThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-direct {v0, p1}, Lcom/oneplus/android/server/display/OpColorModeManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    new-instance v0, Lcom/oneplus/android/server/display/bvj;

    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-direct {v0, v1, v2}, Lcom/oneplus/android/server/display/bvj;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/bvj;

    new-instance v0, Lcom/oneplus/android/server/display/tsu;

    invoke-direct {v0, p1}, Lcom/oneplus/android/server/display/tsu;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mAssertiveDisplayManager:Lcom/oneplus/android/server/display/tsu;

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorGamutManager:Lcom/oneplus/android/server/display/dma;

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/bvj;

    invoke-virtual {p1, v0}, Lcom/oneplus/android/server/display/dma;->zta(Lcom/oneplus/android/server/display/bvj;)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorGamutManager:Lcom/oneplus/android/server/display/dma;

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, p0}, Lcom/oneplus/android/server/display/dma;->zta(Lcom/oneplus/android/server/display/OpColorModeManager;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->revertStatus(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/bvj;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/bvj;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oneplus/android/server/display/OpColorDisplayService;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mDisableColorState:I

    return p0
.end method

.method static synthetic access$1100(Lcom/oneplus/android/server/display/OpColorDisplayService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->processScreenOn(Z)V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/android/server/display/OpColorDisplayService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->dcStatusChange()V

    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/android/server/display/OpColorDisplayService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->nightStrengthChanged()V

    return-void
.end method

.method static synthetic access$1400(Lcom/oneplus/android/server/display/OpColorDisplayService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->nightBrightnessChanged()V

    return-void
.end method

.method static synthetic access$1500(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorReadModeState:Z

    return p0
.end method

.method static synthetic access$1600(Lcom/oneplus/android/server/display/OpColorDisplayService;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->setUp()V

    return-void
.end method

.method static synthetic access$1700(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/tsu;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mAssertiveDisplayManager:Lcom/oneplus/android/server/display/tsu;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/oneplus/android/server/display/OpColorDisplayService;)F
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mGlobaAmbientLux:F

    return p0
.end method

.method static synthetic access$200(Lcom/oneplus/android/server/display/OpColorDisplayService;)Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oneplus/android/server/display/OpColorDisplayService;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    return p0
.end method

.method static synthetic access$400(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/dma;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorGamutManager:Lcom/oneplus/android/server/display/dma;

    return-object p0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/display/OpColorDisplayService;->IS_SUPPORT_DECR_BL_CJ:Z

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/android/server/display/OpColorDisplayService;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mVivdAndNaturalCCT:I

    return p0
.end method

.method static synthetic access$602(Lcom/oneplus/android/server/display/OpColorDisplayService;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mVivdAndNaturalCCT:I

    return p1
.end method

.method static synthetic access$700(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mNightModeState:Z

    return p0
.end method

.method static synthetic access$800(Lcom/oneplus/android/server/display/OpColorDisplayService;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mWBReadModeState:Z

    return p0
.end method

.method static synthetic access$900(Lcom/oneplus/android/server/display/OpColorDisplayService;)Lcom/oneplus/android/server/display/OpColorModeManager;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    return-object p0
.end method

.method private dcStatusChange()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    const/4 v2, 0x0

    const-string v3, "oneplus_dc_dimming_value"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    const-string v0, "persist.vendor.dc.enable"

    if-eqz v1, :cond_1

    const-string v2, "1"

    goto :goto_1

    :cond_1
    const-string v2, "0"

    :goto_1
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    const/16 v2, 0x16

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->ibl(IZ)V

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorGamutManager:Lcom/oneplus/android/server/display/dma;

    invoke-virtual {p0, v1}, Lcom/oneplus/android/server/display/dma;->F(Z)V

    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "ONEPLUS COLOR DISPLAY MANAGER dumpsys (oneplus_color_display)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorGamutManager:Lcom/oneplus/android/server/display/dma;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/dma;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public static getDefault()Lcom/oneplus/display/IOneplusColorDisplay;
    .locals 1

    sget-object v0, Lcom/oneplus/android/server/display/OpColorDisplayService;->SCREATOR:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/display/IOneplusColorDisplay;

    return-object v0
.end method

.method private nightBrightnessChanged()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/bvj;

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/bvj;->setNightBrightness()V

    return-void
.end method

.method private nightStrengthChanged()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/bvj;

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/bvj;->_e()V

    return-void
.end method

.method private processScreenOn(Z)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "processScreenOn   "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_5

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    const-string v2, "keyguard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mKeyguardManager:Landroid/app/KeyguardManager;

    const/4 v2, 0x1

    if-nez v0, :cond_0

    const-string v0, "mKeyguardManager is null!"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isKeyguard =  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.fingerprint"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    const-string v4, "fingerprint"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_1
    iget-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    new-array v3, v2, [I

    const/16 v5, 0x4d

    aput v5, v3, v4

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_2

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    move v0, v4

    :goto_1
    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mHasFingerprint:Z

    goto :goto_2

    :cond_3
    const-string v0, "mFpm == null"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHasFingerprint = "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mHasFingerprint:Z

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mHasFingerprint:Z

    if-nez v0, :cond_5

    const-string v0, "ColorDisable"

    invoke-static {v0}, Lcom/oneplus/server/sis;->getRemoteFuncStatus(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v2, :cond_4

    const/4 v0, 0x2

    const-string v1, "FingerPrintMode"

    invoke-static {v1, v0, v4}, Lcom/oneplus/server/sis;->notifyModeChange(Ljava/lang/String;II)V

    :cond_4
    invoke-direct {p0, v4}, Lcom/oneplus/android/server/display/OpColorDisplayService;->revertStatus(Z)V

    :cond_5
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorGamutManager:Lcom/oneplus/android/server/display/dma;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/dma;->I(Z)V

    return-void
.end method

.method private revertStatus(Z)V
    .locals 10

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    const/4 v2, 0x1

    const-string v3, "screen_color_mode_settings_value"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    const/4 v4, 0x0

    const-string v5, "screen_color_mode_advanced_settings_value"

    invoke-static {v1, v5, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "revertStatus:  colorMode = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "  customColorMode = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "   needMatrixInit = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v5, "OpColorDisplayService"

    invoke-static {v5, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x13

    const/16 v6, 0x9

    if-eq v0, v2, :cond_7

    const/16 v7, 0x11

    const/16 v8, 0x14

    const/4 v9, 0x3

    if-eq v0, v9, :cond_3

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    if-eq v0, v8, :cond_0

    const-string p1, "no one match"

    invoke-static {v5, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_0
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    const/4 v1, 0x7

    invoke-virtual {p1, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->S(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v7, v2}, Lcom/oneplus/android/server/display/OpColorModeManager;->ibl(IZ)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/bvj;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/bvj;->Ye()V

    new-array p1, v2, [I

    aput v6, p1, v4

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_9

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v3, v4}, Lcom/oneplus/android/server/display/OpColorModeManager;->ibl(IZ)V

    goto/16 :goto_2

    :cond_1
    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {v1, v2}, Lcom/oneplus/android/server/display/OpColorModeManager;->S(I)V

    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    const/16 v5, 0x12

    invoke-virtual {v1, v5, v2}, Lcom/oneplus/android/server/display/OpColorModeManager;->ibl(IZ)V

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/bvj;

    invoke-virtual {p1, v2}, Lcom/oneplus/android/server/display/bvj;->E(Z)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/bvj;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/bvj;->Ye()V

    :cond_2
    new-array p1, v2, [I

    aput v6, p1, v4

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_1

    :cond_3
    const/4 p1, 0x2

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {v1, p1}, Lcom/oneplus/android/server/display/OpColorModeManager;->S(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v7, v2}, Lcom/oneplus/android/server/display/OpColorModeManager;->ibl(IZ)V

    goto :goto_0

    :cond_4
    if-ne v1, v2, :cond_5

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v9}, Lcom/oneplus/android/server/display/OpColorModeManager;->S(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v8, v2}, Lcom/oneplus/android/server/display/OpColorModeManager;->ibl(IZ)V

    goto :goto_0

    :cond_5
    if-ne v1, p1, :cond_6

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->S(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    const/16 v1, 0x15

    invoke-virtual {p1, v1, v2}, Lcom/oneplus/android/server/display/OpColorModeManager;->ibl(IZ)V

    :cond_6
    :goto_0
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/bvj;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/bvj;->Xe()V

    new-array p1, v2, [I

    aput v6, p1, v4

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_9

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {v1, v4}, Lcom/oneplus/android/server/display/OpColorModeManager;->S(I)V

    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    const/16 v5, 0x10

    invoke-virtual {v1, v5, v2}, Lcom/oneplus/android/server/display/OpColorModeManager;->ibl(IZ)V

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/bvj;

    invoke-virtual {p1, v2}, Lcom/oneplus/android/server/display/bvj;->E(Z)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/bvj;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/bvj;->Ye()V

    :cond_8
    new-array p1, v2, [I

    aput v6, p1, v4

    invoke-static {p1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p1

    if-eqz p1, :cond_9

    :goto_1
    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p1, v3, v2}, Lcom/oneplus/android/server/display/OpColorModeManager;->ibl(IZ)V

    :cond_9
    :goto_2
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorGamutManager:Lcom/oneplus/android/server/display/dma;

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/dma;->K(I)V

    return-void
.end method

.method private setUp()V
    .locals 3

    const-string v0, "OpColorDisplayService"

    const-string v1, "setUp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/oneplus/android/server/display/bvj;

    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-direct {v0, v1, v2}, Lcom/oneplus/android/server/display/bvj;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/bvj;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->revertStatus(Z)V

    iget v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {v1, v0}, Lcom/oneplus/android/server/display/OpColorModeManager;->O(I)Z

    move-result v1

    const-string v2, "accessibility_display_grayscale_enabled"

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-static {v1, v2, v0, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    iget p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-static {v0, v2, v1, p0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public adjustLightColorGamut(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorGamutManager:Lcom/oneplus/android/server/display/dma;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/dma;->adjustLightColorGamut(I)V

    return-void
.end method

.method public disableColor(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DisableColor state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mDisableColorState:I

    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public disablelightSensor()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "disablelightSensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    const-string p3, "OpColorDisplayService"

    invoke-static {p1, p3, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p2}, Lcom/oneplus/android/server/display/OpColorDisplayService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public enterGoogleMatrix()V
    .locals 1

    const/16 v0, 0x15

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public exitGoogleMatrix()V
    .locals 1

    const/16 v0, 0x16

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public getContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method public notifyBlackListLayer(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorGamutManager:Lcom/oneplus/android/server/display/dma;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/dma;->notifyBlackListLayer(Z)V

    return-void
.end method

.method public notifyCameraStatus(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyCameraStatus activeCamera = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorGamutManager:Lcom/oneplus/android/server/display/dma;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/dma;->notifyCameraStatus(Z)V

    return-void
.end method

.method public notifySFColorModeChange(I)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorGamutManager:Lcom/oneplus/android/server/display/dma;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/dma;->notifySFColorModeChange(I)V

    return-void
.end method

.method public notifySetUp(I)V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "notifySetUp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    const/16 p1, 0x12

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public notifyVideoModeChange(Z)V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorGamutManager:Lcom/oneplus/android/server/display/dma;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/dma;->notifyVideoModeChange(Z)V

    return-void
.end method

.method public onDCEnable()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "onDCEnable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8

    new-instance v0, Lcom/oneplus/android/server/display/kth;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/display/kth;-><init>(Lcom/oneplus/android/server/display/OpColorDisplayService;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/os/ShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public publish(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publish context = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/oneplus/display/IOneplusColorDisplay$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    const-string v0, "oneplus_colordisplay_service"

    invoke-static {v0, p1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class p1, Lcom/oneplus/android/server/display/OpColorDisplayService$you;

    new-instance v0, Lcom/oneplus/android/server/display/OpColorDisplayService$you;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/display/OpColorDisplayService$you;-><init>(Lcom/oneplus/android/server/display/OpColorDisplayService;)V

    invoke-static {p1, v0}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method public recoverOneplusColorMatrix()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "recoverOneplusColorMatrix"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public resetStatus(I)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "resetStatus: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x13

    const/16 v2, 0x9

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz p1, :cond_1

    if-eq p1, v3, :cond_0

    const-string v0, "no one match"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-direct {p0, v4}, Lcom/oneplus/android/server/display/OpColorDisplayService;->revertStatus(Z)V

    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/bvj;

    invoke-virtual {v1}, Lcom/oneplus/android/server/display/bvj;->Ze()V

    new-array v1, v5, [I

    aput v2, v1, v4

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {v1, v0, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->ibl(IZ)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorTintManager:Lcom/oneplus/android/server/display/bvj;

    invoke-virtual {v1}, Lcom/oneplus/android/server/display/bvj;->Ue()V

    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    const/4 v6, 0x7

    invoke-virtual {v1, v6}, Lcom/oneplus/android/server/display/OpColorModeManager;->S(I)V

    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    const/16 v6, 0x11

    invoke-virtual {v1, v6, v5}, Lcom/oneplus/android/server/display/OpColorModeManager;->ibl(IZ)V

    new-array v1, v5, [I

    aput v2, v1, v4

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mOpColorModeManager:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {v1, v0, v4}, Lcom/oneplus/android/server/display/OpColorModeManager;->ibl(IZ)V

    :cond_2
    :goto_0
    if-eq p1, v3, :cond_3

    move v4, v5

    :cond_3
    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorGamutManager:Lcom/oneplus/android/server/display/dma;

    invoke-virtual {p0, v4}, Lcom/oneplus/android/server/display/dma;->G(Z)V

    return-void
.end method

.method public screenColorModeChange()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "screenColorModeChange"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public screenStateChange(I)V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "screenStateChange"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p1, 0x7

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    const/4 p1, 0x6

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method public sendMsg(I)V
    .locals 2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCDHHandler:Lcom/oneplus/android/server/display/OpColorDisplayService$zta;

    if-eqz p1, :cond_0

    iget v1, v0, Landroid/os/Message;->what:I

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCDHHandler:Lcom/oneplus/android/server/display/OpColorDisplayService$zta;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method

.method public setColorBalance2GrayColor()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "ColorBalance2GrayColor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mWBReadModeState:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mNightModeState:Z

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public setColorBalance2PaperColor()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "setColorBalance2PaperColor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mNightModeState:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorReadModeState:Z

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public setColorBalanceActivated(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ColorBalance activated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mNightModeState:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public setColorGamutMode(IZ)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setColorGamutMode scenario = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " immediate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorGamutManager:Lcom/oneplus/android/server/display/dma;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/android/server/display/dma;->bvj(IZ)V

    return-void
.end method

.method public setColorTemperature()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "setColorTemperature"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public setCustomColorTemperature()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "setCustomColorTemperature"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public setGrayColor2ColorBalance()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "GrayColor2ColorBalance"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mWBReadModeState:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mNightModeState:Z

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public setGrayColor2PaperColor()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "setGrayColor2PaperColor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mWBReadModeState:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorReadModeState:Z

    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public setGrayColorActivated(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GrayColor  activated = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mWBReadModeState:Z

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public setMediaCodecState(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMediaCodecState on = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorDisplayService"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorGamutManager:Lcom/oneplus/android/server/display/dma;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/dma;->H(Z)V

    return-void
.end method

.method public setNightBrightness()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "setNightBrightness"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public setPaperColor2ColorBalance()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "setPaperColor2ColorBalance"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorReadModeState:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mNightModeState:Z

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public setPaperColor2GrayColor()V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "setPaperColor2GrayColor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorReadModeState:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mWBReadModeState:Z

    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public setPaperColorActivated(Z)V
    .locals 2

    const-string v0, "OpColorDisplayService"

    const-string v1, "setPaperColorActivated"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorReadModeState:Z

    const/16 p1, 0x11

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method

.method public systemReady()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/android/server/display/ssp;

    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/oneplus/android/server/display/ssp;-><init>(Lcom/oneplus/android/server/display/OpColorDisplayService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_color_mode_settings_value"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v2, "screen_color_mode_advanced_settings_value"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v2, "oem_screen_better_value"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v2, "op_gamut_game_mode"

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContentObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-virtual {v0, v2, v5, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v2, 0x1

    iget v3, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mCurrentUser:I

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mColorGamutManager:Lcom/oneplus/android/server/display/dma;

    invoke-virtual {v1, v0}, Lcom/oneplus/android/server/display/dma;->K(I)V

    new-instance v0, Lcom/oneplus/android/server/display/cno;

    invoke-direct {v0, p0}, Lcom/oneplus/android/server/display/cno;-><init>(Lcom/oneplus/android/server/display/OpColorDisplayService;)V

    iput-object v0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFrontPackageListener:Lcom/android/server/OnePlusUtil$zta$you;

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object v0

    iget-object p0, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mFrontPackageListener:Lcom/android/server/OnePlusUtil$zta$you;

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$zta;->zta(Lcom/android/server/OnePlusUtil$zta$you;)V

    const-string p0, "OpColorDisplayService"

    const-string v0, "system ready"

    invoke-static {p0, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateAutoAssertiveDisplayStatus(F)V
    .locals 0

    iput p1, p0, Lcom/oneplus/android/server/display/OpColorDisplayService;->mGlobaAmbientLux:F

    const/16 p1, 0x14

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/OpColorDisplayService;->sendMsg(I)V

    return-void
.end method
