.class public final Lcom/oneplus/android/server/display/dma;
.super Ljava/lang/Object;
.source ""


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/android/server/display/dma$zta;
    }
.end annotation


# static fields
.field private static final Aba:I = 0x8

.field private static final Bba:I = 0x9

.field private static final CUSTOM_DISPLAYP3_MODE:I = 0x2

.field private static final CUSTOM_MODE:I = 0x3

.field private static final CUSTOM_NTSC_MODE:I = 0x0

.field private static final CUSTOM_SRGB_MODE:I = 0x1

.field private static final Cba:I = 0xa

.field private static final DEBUG:Z

.field private static final Dba:I = 0xb

.field private static final Eba:I = 0x0

.field private static final Fba:I = 0x1

.field private static final Gba:I = 0x2

.field private static final Hba:I = 0x0

.field private static final Iba:I = 0x1

.field private static final Jba:I = 0x2

.field private static final Kba:I = 0x3

.field private static final Lba:I = 0x4

.field private static final Mba:I = 0x1

.field private static final NATURAL_MODE:I = 0xa

.field private static final Nba:I = 0x0

.field private static final Oba:I = 0x1

.field private static final Pba:I = 0x2

.field private static final Qba:I = 0x3

.field private static final Rba:I = 0x190

.field private static final Sba:J = 0x2710L

.field private static final TAG:Ljava/lang/String; = "OpColorGamutManager"

.field private static final Tba:F = 1.1f

.field private static final Uba:I = 0x3e

.field private static final Vba:I = 0x10

.field private static final Wba:I = 0x5f

.field private static final Xba:I = 0x56

.field private static final Yba:I = 0x190

.field private static final Zba:I = 0x64

.field private static final _ba:I = 0x64

.field private static final aca:I = 0x88

.field private static final bca:I = 0x94

.field private static final cca:I = 0x6e

.field private static final dca:I = 0x93

.field private static final eca:Ljava/lang/String; = "oem_screen_better_value"

.field private static final fca:Ljava/lang/String; = "op_game_mode_ad_enable"

.field private static final sba:I = 0x0

.field private static final tba:I = 0x1

.field private static final uba:I = 0x2

.field private static final vba:I = 0x3

.field private static final wba:I = 0x4

.field private static final xba:I = 0x5

.field private static final yba:I = 0x6

.field private static final zba:I = 0x7


# instance fields
.field private Yaa:Lcom/oneplus/android/server/display/bio;

.field private bba:I

.field private cba:I

.field private dba:I

.field private eba:I

.field private fba:Z

.field private gba:Z

.field private gg:I

.field private hba:Z

.field private iba:Z

.field private jba:Z

.field private kba:[[I

.field private lba:Z

.field private mBrightness:I

.field private mCdsi:Lcom/oneplus/android/server/display/OpColorDisplayService$you;

.field private mColorTintManager:Lcom/oneplus/android/server/display/bvj;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Lcom/oneplus/android/server/display/dma$zta;

.field private mLastBrightness:I

.field private mRefreshRate:I

.field private mScreenOn:Z

.field private mba:Z

.field private nba:Z

.field private oba:Z

.field private final pba:Lcom/oneplus/android/server/display/ibl;

.field private final qba:Lcom/oneplus/android/server/display/gwm;

.field private rba:Lcom/oneplus/android/server/display/OpColorModeManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/android/server/display/dma;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/android/server/display/dma;->mBrightness:I

    iput v0, p0, Lcom/oneplus/android/server/display/dma;->mLastBrightness:I

    const/16 v1, 0x64

    iput v1, p0, Lcom/oneplus/android/server/display/dma;->gg:I

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/android/server/display/dma;->mScreenOn:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/dma;->hba:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/dma;->iba:Z

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/dma;->jba:Z

    const/4 v2, 0x6

    const/4 v3, 0x3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-class v3, I

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iput-object v2, p0, Lcom/oneplus/android/server/display/dma;->kba:[[I

    iput-boolean v0, p0, Lcom/oneplus/android/server/display/dma;->mba:Z

    iput-boolean v1, p0, Lcom/oneplus/android/server/display/dma;->nba:Z

    iput-object p1, p0, Lcom/oneplus/android/server/display/dma;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/oneplus/android/server/display/ibl;

    invoke-direct {v2, p1}, Lcom/oneplus/android/server/display/ibl;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/oneplus/android/server/display/dma;->pba:Lcom/oneplus/android/server/display/ibl;

    new-instance v2, Lcom/oneplus/android/server/display/dma$zta;

    invoke-static {}, Lcom/oneplus/android/server/display/ywr;->get()Lcom/oneplus/android/server/display/ywr;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, p0, v3, v4}, Lcom/oneplus/android/server/display/dma$zta;-><init>(Lcom/oneplus/android/server/display/dma;Landroid/os/Looper;Lcom/oneplus/android/server/display/wtn;)V

    iput-object v2, p0, Lcom/oneplus/android/server/display/dma;->mHandler:Lcom/oneplus/android/server/display/dma$zta;

    iput v0, p0, Lcom/oneplus/android/server/display/dma;->mRefreshRate:I

    iput v0, p0, Lcom/oneplus/android/server/display/dma;->bba:I

    iput v0, p0, Lcom/oneplus/android/server/display/dma;->dba:I

    iput v1, p0, Lcom/oneplus/android/server/display/dma;->cba:I

    new-instance v0, Lcom/oneplus/android/server/display/bio;

    invoke-direct {v0}, Lcom/oneplus/android/server/display/bio;-><init>()V

    iput-object v0, p0, Lcom/oneplus/android/server/display/dma;->Yaa:Lcom/oneplus/android/server/display/bio;

    invoke-static {p1}, Lcom/oneplus/android/server/display/gwm;->create(Landroid/content/Context;)Lcom/oneplus/android/server/display/gwm;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/android/server/display/dma;->qba:Lcom/oneplus/android/server/display/gwm;

    const-class p1, Lcom/oneplus/android/server/display/OpColorDisplayService$you;

    invoke-static {p1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/android/server/display/OpColorDisplayService$you;

    iput-object p1, p0, Lcom/oneplus/android/server/display/dma;->mCdsi:Lcom/oneplus/android/server/display/OpColorDisplayService$you;

    return-void
.end method

.method private Na(Z)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x2

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/oneplus/android/server/display/dma;->bba:I

    if-ne p1, v1, :cond_1

    invoke-virtual {p0, v0, v0}, Lcom/oneplus/android/server/display/dma;->bvj(IZ)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->Sr()Z

    move-result p1

    if-eqz p1, :cond_1

    iget p1, p0, Lcom/oneplus/android/server/display/dma;->bba:I

    if-eq p1, v1, :cond_1

    const/4 v2, 0x4

    if-eq p1, v2, :cond_1

    iget p1, p0, Lcom/oneplus/android/server/display/dma;->eba:I

    if-eq p1, v1, :cond_1

    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->Qr()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/oneplus/android/server/display/dma;->oba:Z

    if-nez p1, :cond_1

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/android/server/display/dma;->bvj(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private Oa(Z)V
    .locals 5

    const-string v0, "OpColorGamutManager"

    const/4 v1, 0x0

    const/4 v2, 0x2

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->Sr()Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/oneplus/android/server/display/dma;->bba:I

    if-ne p1, v2, :cond_5

    sget-boolean p1, Lcom/oneplus/android/server/display/dma;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "handleCameraStatusChange SC_NORMAL"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0, v1, v1}, Lcom/oneplus/android/server/display/dma;->bvj(IZ)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->Sr()Z

    move-result p1

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/oneplus/android/server/display/dma;->bba:I

    if-eq p1, v2, :cond_5

    const/4 v3, 0x1

    if-eq p1, v3, :cond_5

    const/4 v4, 0x4

    if-eq p1, v4, :cond_5

    iget p1, p0, Lcom/oneplus/android/server/display/dma;->eba:I

    if-ne p1, v2, :cond_5

    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->Qr()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->Pr()Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    iget-boolean p1, p0, Lcom/oneplus/android/server/display/dma;->lba:Z

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/oneplus/android/server/display/dma;->mRefreshRate:I

    if-ne p1, v3, :cond_5

    :cond_3
    sget-boolean p1, Lcom/oneplus/android/server/display/dma;->DEBUG:Z

    if-eqz p1, :cond_4

    const-string p1, "handleCameraStatusChange SC_VIDEO"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-virtual {p0, v2, v1}, Lcom/oneplus/android/server/display/dma;->bvj(IZ)V

    :cond_5
    :goto_0
    return-void
.end method

.method private Pa(Z)V
    .locals 0

    return-void
.end method

.method private Pr()Z
    .locals 2

    const/4 p0, 0x0

    const-string v0, "vendor.sys.blacklist.layer"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move p0, v1

    :cond_0
    return p0
.end method

.method private Qa(Z)V
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleFingerPrintStatusChange fingerPrintOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mPreviousScenario = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/android/server/display/dma;->dba:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mScreenOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/display/dma;->mScreenOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorGamutManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    const/4 v1, 0x4

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oneplus/android/server/display/dma;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v2, -0x2

    const-string v3, "op_gamut_mapping_mode"

    invoke-static {p1, v3, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/android/server/display/dma;->bvj(IZ)V

    goto :goto_0

    :cond_0
    iget p1, p0, Lcom/oneplus/android/server/display/dma;->dba:I

    if-ne p1, v1, :cond_1

    const/4 p1, 0x0

    iput p1, p0, Lcom/oneplus/android/server/display/dma;->dba:I

    :cond_1
    iget p1, p0, Lcom/oneplus/android/server/display/dma;->dba:I

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/android/server/display/dma;->bvj(IZ)V

    :goto_0
    return-void
.end method

.method private Qr()Z
    .locals 2

    const/4 p0, 0x0

    const-string v0, "vendor.sys.hardware.decoding"

    invoke-static {v0, p0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move p0, v1

    :cond_0
    return p0
.end method

.method private Ra(Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleMediaCodecStateChange on = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mRefreshRate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/android/server/display/dma;->mRefreshRate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mSFVideoScene = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/display/dma;->mba:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mCurrentScenario = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/android/server/display/dma;->bba:I

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/display/dma;->Zb(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorGamutManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/android/server/display/dma;->mba:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x2

    if-nez p1, :cond_1

    iget p1, p0, Lcom/oneplus/android/server/display/dma;->bba:I

    if-ne p1, v1, :cond_2

    iget p1, p0, Lcom/oneplus/android/server/display/dma;->mRefreshRate:I

    if-nez p1, :cond_2

    invoke-virtual {p0, v0, v0}, Lcom/oneplus/android/server/display/dma;->bvj(IZ)V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->Sr()Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/oneplus/android/server/display/dma;->mRefreshRate:I

    const/4 v2, 0x1

    if-ne p1, v2, :cond_2

    iget p1, p0, Lcom/oneplus/android/server/display/dma;->eba:I

    if-eq p1, v1, :cond_2

    iget-boolean p1, p0, Lcom/oneplus/android/server/display/dma;->oba:Z

    if-nez p1, :cond_2

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/android/server/display/dma;->bvj(IZ)V

    :cond_2
    :goto_0
    return-void
.end method

.method private Rr()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method private Sa(Z)V
    .locals 1

    if-eqz p1, :cond_2

    iget-boolean p1, p0, Lcom/oneplus/android/server/display/dma;->fba:Z

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    :goto_0
    move p1, v0

    goto :goto_1

    :cond_0
    iget p1, p0, Lcom/oneplus/android/server/display/dma;->bba:I

    if-ne p1, v0, :cond_1

    iget p1, p0, Lcom/oneplus/android/server/display/dma;->dba:I

    if-ne p1, v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    :goto_1
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/android/server/display/dma;->bvj(IZ)V

    :cond_2
    return-void
.end method

.method private Sr()Z
    .locals 1

    const-string p0, "persist.sys.oem.vendor.media.vpp.enable"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private Ta(Z)V
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->Pr()Z

    move-result v1

    if-eqz v1, :cond_0

    move p1, v0

    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/android/server/display/dma;->mba:Z

    if-ne v1, p1, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/oneplus/android/server/display/dma;->mba:Z

    const/4 v1, 0x2

    if-eqz p1, :cond_2

    iget p1, p0, Lcom/oneplus/android/server/display/dma;->bba:I

    const/4 v2, 0x4

    if-eq p1, v2, :cond_2

    iget-boolean p1, p0, Lcom/oneplus/android/server/display/dma;->oba:Z

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->Pr()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->Sr()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0, v1, v0}, Lcom/oneplus/android/server/display/dma;->bvj(IZ)V

    goto :goto_0

    :cond_2
    iget p1, p0, Lcom/oneplus/android/server/display/dma;->bba:I

    if-ne p1, v1, :cond_3

    invoke-virtual {p0, v0, v0}, Lcom/oneplus/android/server/display/dma;->bvj(IZ)V

    :cond_3
    :goto_0
    return-void
.end method

.method private Tr()Z
    .locals 2

    const/4 p0, 0x1

    new-array p0, p0, [I

    const/4 v0, 0x0

    const/16 v1, 0xdc

    aput v1, p0, v0

    invoke-static {p0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result p0

    return p0
.end method

.method private Ur()Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/display/dma;->rba:Lcom/oneplus/android/server/display/OpColorModeManager;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->L(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/display/dma;->rba:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->N(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/display/dma;->rba:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->O(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/android/server/display/dma;->rba:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->M(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/android/server/display/dma;->rba:Lcom/oneplus/android/server/display/OpColorModeManager;

    invoke-virtual {p0, v1}, Lcom/oneplus/android/server/display/OpColorModeManager;->K(I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private Wb(I)V
    .locals 2

    iget v0, p0, Lcom/oneplus/android/server/display/dma;->eba:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-eq p1, v1, :cond_2

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-boolean p1, p0, Lcom/oneplus/android/server/display/dma;->jba:Z

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/oneplus/android/server/display/dma;->mCdsi:Lcom/oneplus/android/server/display/OpColorDisplayService$you;

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1, v0}, Lcom/oneplus/android/server/display/OpColorDisplayService$you;->E(Z)V

    goto :goto_2

    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/oneplus/android/server/display/dma;->iba:Z

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/oneplus/android/server/display/dma;->mCdsi:Lcom/oneplus/android/server/display/OpColorDisplayService$you;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/OpColorDisplayService$you;->ze()V

    goto :goto_2

    :cond_3
    iget-object p1, p0, Lcom/oneplus/android/server/display/dma;->mColorTintManager:Lcom/oneplus/android/server/display/bvj;

    if-eqz p1, :cond_5

    iget p1, p0, Lcom/oneplus/android/server/display/dma;->cba:I

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/oneplus/android/server/display/dma;->mCdsi:Lcom/oneplus/android/server/display/OpColorDisplayService$you;

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/oneplus/android/server/display/dma;->qba:Lcom/oneplus/android/server/display/gwm;

    invoke-virtual {v1}, Lcom/oneplus/android/server/display/gwm;->Ue()I

    move-result v1

    :goto_1
    invoke-virtual {p1, v1}, Lcom/oneplus/android/server/display/OpColorDisplayService$you;->E(I)V

    goto :goto_2

    :cond_4
    if-ne p1, v0, :cond_5

    iget-object p1, p0, Lcom/oneplus/android/server/display/dma;->mCdsi:Lcom/oneplus/android/server/display/OpColorDisplayService$you;

    if-eqz p1, :cond_5

    iget-object v1, p0, Lcom/oneplus/android/server/display/dma;->qba:Lcom/oneplus/android/server/display/gwm;

    invoke-virtual {v1}, Lcom/oneplus/android/server/display/gwm;->Te()I

    move-result v1

    goto :goto_1

    :cond_5
    :goto_2
    iput-boolean v0, p0, Lcom/oneplus/android/server/display/dma;->jba:Z

    :cond_6
    return-void
.end method

.method private Xb(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_2

    const/4 p0, 0x1

    if-eq p1, p0, :cond_1

    const/4 p0, 0x2

    if-eq p1, p0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "CG_NATIVE_MODE"

    return-object p0

    :cond_1
    const-string p0, "CG_DISPLAY_P3_MODE"

    return-object p0

    :cond_2
    const-string p0, "CG_SRGB_MODE"

    return-object p0
.end method

.method private Yb(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_3

    const/4 p0, 0x1

    if-eq p1, p0, :cond_2

    const/4 p0, 0x2

    if-eq p1, p0, :cond_1

    const/4 p0, 0x3

    if-eq p1, p0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "SF_NATIVE_MODE"

    return-object p0

    :cond_1
    const-string p0, "SF_HDR_MODE"

    return-object p0

    :cond_2
    const-string p0, "SF_P3_MODE"

    return-object p0

    :cond_3
    const-string p0, "SF_SRGB_MODE"

    return-object p0
.end method

.method private Zb(I)Ljava/lang/String;
    .locals 0

    if-eqz p1, :cond_4

    const/4 p0, 0x1

    if-eq p1, p0, :cond_3

    const/4 p0, 0x2

    if-eq p1, p0, :cond_2

    const/4 p0, 0x3

    if-eq p1, p0, :cond_1

    const/4 p0, 0x4

    if-eq p1, p0, :cond_0

    const-string p0, "UNKNOWN"

    return-object p0

    :cond_0
    const-string p0, "SC_FP"

    return-object p0

    :cond_1
    const-string p0, "SC_READ"

    return-object p0

    :cond_2
    const-string p0, "SC_VIDEO"

    return-object p0

    :cond_3
    const-string p0, "SC_GAME"

    return-object p0

    :cond_4
    const-string p0, "SC_NORMAL"

    return-object p0
.end method

.method private _b(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/android/server/display/dma;->fba:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/oneplus/android/server/display/dma;->nba:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oneplus/android/server/display/dma;->gg:I

    invoke-direct {p0, v0, p1}, Lcom/oneplus/android/server/display/dma;->vju(II)[[I

    move-result-object v0

    sget-boolean v1, Lcom/oneplus/android/server/display/dma;->DEBUG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleAdjustLightColorGamut mCurrentScenario = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/android/server/display/dma;->bba:I

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/display/dma;->Zb(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mCurrentBaseMode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/android/server/display/dma;->cba:I

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/display/dma;->Xb(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OpColorGamutManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v1, p0, Lcom/oneplus/android/server/display/dma;->kba:[[I

    invoke-direct {p0, v0, v1}, Lcom/oneplus/android/server/display/dma;->you([[I[[I)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/oneplus/android/server/display/dma;->pba:Lcom/oneplus/android/server/display/ibl;

    invoke-virtual {v0}, Lcom/oneplus/android/server/display/igw;->De()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object p1, p0, Lcom/oneplus/android/server/display/dma;->pba:Lcom/oneplus/android/server/display/ibl;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/igw;->Be()I

    iget-object p1, p0, Lcom/oneplus/android/server/display/dma;->pba:Lcom/oneplus/android/server/display/ibl;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/igw;->Ce()I

    move-result p1

    iget v0, p0, Lcom/oneplus/android/server/display/dma;->gg:I

    invoke-direct {p0, v0, p1}, Lcom/oneplus/android/server/display/dma;->bud(II)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/oneplus/android/server/display/dma;->gg:I

    invoke-direct {p0, v0, p1}, Lcom/oneplus/android/server/display/dma;->cgv(II)V

    :cond_4
    :goto_0
    return-void
.end method

.method private ac(I)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/android/server/display/dma;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "screen_color_mode_advanced_settings_value"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleColorModeChange mCurrentBaseMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/android/server/display/dma;->cba:I

    invoke-direct {p0, v3}, Lcom/oneplus/android/server/display/dma;->Xb(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " colorMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " customColorMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "OpColorGamutManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x2

    const/4 v4, 0x1

    if-eq p1, v4, :cond_4

    const/4 v5, 0x3

    if-eq p1, v5, :cond_1

    const/16 v0, 0xa

    if-eq p1, v0, :cond_0

    move p1, v2

    goto :goto_1

    :cond_0
    iput-boolean v1, p0, Lcom/oneplus/android/server/display/dma;->iba:Z

    move p1, v1

    goto :goto_1

    :cond_1
    if-ne v0, v4, :cond_2

    move p1, v1

    goto :goto_0

    :cond_2
    if-ne v0, v2, :cond_3

    move p1, v4

    goto :goto_0

    :cond_3
    move p1, v2

    :goto_0
    iput-boolean v4, p0, Lcom/oneplus/android/server/display/dma;->iba:Z

    goto :goto_1

    :cond_4
    iput-boolean v1, p0, Lcom/oneplus/android/server/display/dma;->iba:Z

    move p1, v4

    :goto_1
    if-eq p1, v2, :cond_5

    move v1, v4

    :cond_5
    iput-boolean v1, p0, Lcom/oneplus/android/server/display/dma;->nba:Z

    iput p1, p0, Lcom/oneplus/android/server/display/dma;->cba:I

    iget p1, p0, Lcom/oneplus/android/server/display/dma;->bba:I

    iget v0, p0, Lcom/oneplus/android/server/display/dma;->eba:I

    iget v1, p0, Lcom/oneplus/android/server/display/dma;->cba:I

    invoke-virtual {p0, p1, v0, v1}, Lcom/oneplus/android/server/display/dma;->rtg(III)I

    move-result p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleColorModeChange level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/oneplus/android/server/display/dma;->mBrightness:I

    invoke-direct {p0, p1, v0}, Lcom/oneplus/android/server/display/dma;->cgv(II)V

    return-void
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/oneplus/android/server/display/dma;->DEBUG:Z

    return v0
.end method

.method private bc(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRefreshRateChange refreshRate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mediacodec status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/display/dma;->lba:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mSFVideoScene = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/display/dma;->mba:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mCurrentScenario = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/android/server/display/dma;->bba:I

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/display/dma;->Zb(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorGamutManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/android/server/display/dma;->mba:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/oneplus/android/server/display/dma;->lba:Z

    if-eqz p1, :cond_3

    iget p1, p0, Lcom/oneplus/android/server/display/dma;->eba:I

    if-eq p1, v1, :cond_3

    iget-boolean p1, p0, Lcom/oneplus/android/server/display/dma;->oba:Z

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->Pr()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->Sr()Z

    move-result p1

    if-eqz p1, :cond_3

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/android/server/display/dma;->bvj(IZ)V

    goto :goto_0

    :cond_1
    iget p1, p0, Lcom/oneplus/android/server/display/dma;->bba:I

    if-ne p1, v1, :cond_2

    invoke-virtual {p0, v2, v2}, Lcom/oneplus/android/server/display/dma;->bvj(IZ)V

    :cond_2
    iput-boolean v2, p0, Lcom/oneplus/android/server/display/dma;->lba:Z

    :cond_3
    :goto_0
    return-void
.end method

.method private bud(II)V
    .locals 8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " startAnimator from = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " to = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorGamutManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sub-int v0, p1, p2

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x2710

    mul-long/2addr v0, v2

    const-wide/16 v2, 0x30

    div-long/2addr v0, v2

    const/4 v2, 0x6

    const/4 v3, 0x3

    filled-new-array {v2, v3}, [I

    move-result-object v2

    const-class v3, I

    invoke-static {v3, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    iget v3, p0, Lcom/oneplus/android/server/display/dma;->mBrightness:I

    invoke-direct {p0, p1, v3}, Lcom/oneplus/android/server/display/dma;->vju(II)[[I

    move-result-object v3

    iget v4, p0, Lcom/oneplus/android/server/display/dma;->mBrightness:I

    invoke-direct {p0, p2, v4}, Lcom/oneplus/android/server/display/dma;->vju(II)[[I

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/android/server/display/dma;->pba:Lcom/oneplus/android/server/display/ibl;

    invoke-virtual {v5}, Lcom/oneplus/android/server/display/igw;->cancelAnimator()V

    iget-object v5, p0, Lcom/oneplus/android/server/display/dma;->pba:Lcom/oneplus/android/server/display/ibl;

    invoke-virtual {v5, p1}, Lcom/oneplus/android/server/display/igw;->F(I)V

    iget-object v5, p0, Lcom/oneplus/android/server/display/dma;->pba:Lcom/oneplus/android/server/display/ibl;

    invoke-virtual {v5, p2}, Lcom/oneplus/android/server/display/igw;->G(I)V

    iget-object v5, p0, Lcom/oneplus/android/server/display/dma;->pba:Lcom/oneplus/android/server/display/ibl;

    const/4 v6, 0x2

    new-array v6, v6, [I

    const/4 v7, 0x0

    aput p1, v6, v7

    const/4 p1, 0x1

    aput p2, v6, p1

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {v5, p1}, Lcom/oneplus/android/server/display/igw;->setAnimator(Landroid/animation/ValueAnimator;)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/dma;->pba:Lcom/oneplus/android/server/display/ibl;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/igw;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    invoke-virtual {p1, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object p1, p0, Lcom/oneplus/android/server/display/dma;->pba:Lcom/oneplus/android/server/display/ibl;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/igw;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Landroid/view/animation/LinearInterpolator;

    invoke-direct {p2}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/dma;->pba:Lcom/oneplus/android/server/display/ibl;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/igw;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Lcom/oneplus/android/server/display/wtn;

    invoke-direct {p2, p0, v2, v3, v4}, Lcom/oneplus/android/server/display/wtn;-><init>(Lcom/oneplus/android/server/display/dma;[[I[[I[[I)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/dma;->pba:Lcom/oneplus/android/server/display/ibl;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/igw;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p1

    new-instance p2, Lcom/oneplus/android/server/display/gck;

    invoke-direct {p2, p0, v4}, Lcom/oneplus/android/server/display/gck;-><init>(Lcom/oneplus/android/server/display/dma;[[I)V

    invoke-virtual {p1, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object p0, p0, Lcom/oneplus/android/server/display/dma;->pba:Lcom/oneplus/android/server/display/ibl;

    invoke-virtual {p0}, Lcom/oneplus/android/server/display/igw;->getAnimator()Landroid/animation/ValueAnimator;

    move-result-object p0

    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private cc(I)V
    .locals 5

    const/4 v0, 0x2

    const-string v1, "OpColorGamutManager"

    if-ne p1, v0, :cond_0

    iget v2, p0, Lcom/oneplus/android/server/display/dma;->bba:I

    if-ne v2, v0, :cond_0

    const-string v0, "handleSFColorModeChange change video mode to narmal mode"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/android/server/display/dma;->bba:I

    :cond_0
    iget v0, p0, Lcom/oneplus/android/server/display/dma;->bba:I

    iget v2, p0, Lcom/oneplus/android/server/display/dma;->eba:I

    iget v3, p0, Lcom/oneplus/android/server/display/dma;->cba:I

    invoke-virtual {p0, v0, v2, v3}, Lcom/oneplus/android/server/display/dma;->rtg(III)I

    move-result v0

    iget v2, p0, Lcom/oneplus/android/server/display/dma;->bba:I

    iget v3, p0, Lcom/oneplus/android/server/display/dma;->cba:I

    invoke-virtual {p0, v2, p1, v3}, Lcom/oneplus/android/server/display/dma;->rtg(III)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleSFColorModeChange colorMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " fromLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " targetLevel = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/oneplus/android/server/display/dma;->eba:I

    if-ne v0, v2, :cond_1

    return-void

    :cond_1
    iget p1, p0, Lcom/oneplus/android/server/display/dma;->bba:I

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/display/dma;->Wb(I)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/dma;->pba:Lcom/oneplus/android/server/display/ibl;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/igw;->De()Z

    move-result p1

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/oneplus/android/server/display/dma;->gg:I

    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSFColorModeChange fromLevel = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v0, v2}, Lcom/oneplus/android/server/display/dma;->bud(II)V

    return-void
.end method

.method private cgv(II)V
    .locals 2

    sget-boolean v0, Lcom/oneplus/android/server/display/dma;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "adjustColorGamut level = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " brightness = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorGamutManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput p1, p0, Lcom/oneplus/android/server/display/dma;->gg:I

    invoke-direct {p0, p1, p2}, Lcom/oneplus/android/server/display/dma;->vju(II)[[I

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/android/server/display/dma;->kba:[[I

    iget-object p1, p0, Lcom/oneplus/android/server/display/dma;->Yaa:Lcom/oneplus/android/server/display/bio;

    iget-object p2, p0, Lcom/oneplus/android/server/display/dma;->kba:[[I

    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->getWhitePoint()[I

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/oneplus/android/server/display/bio;->zta([[I[I)V

    iget-object p1, p0, Lcom/oneplus/android/server/display/dma;->pba:Lcom/oneplus/android/server/display/ibl;

    iget-object p0, p0, Lcom/oneplus/android/server/display/dma;->Yaa:Lcom/oneplus/android/server/display/bio;

    invoke-virtual {p1, p0}, Lcom/oneplus/android/server/display/ibl;->zta(Lcom/oneplus/android/server/display/bio;)V

    return-void
.end method

.method private getWhitePoint()[I
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iget-boolean v1, p0, Lcom/oneplus/android/server/display/dma;->iba:Z

    if-nez v1, :cond_5

    iget v1, p0, Lcom/oneplus/android/server/display/dma;->eba:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_2

    :cond_0
    iget v1, p0, Lcom/oneplus/android/server/display/dma;->bba:I

    if-eq v1, v2, :cond_4

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    goto :goto_1

    :cond_1
    iget v1, p0, Lcom/oneplus/android/server/display/dma;->cba:I

    if-eqz v1, :cond_3

    if-eq v1, v2, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/android/server/display/dma;->qba:Lcom/oneplus/android/server/display/gwm;

    invoke-virtual {v0}, Lcom/oneplus/android/server/display/gwm;->Se()[I

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oneplus/android/server/display/dma;->qba:Lcom/oneplus/android/server/display/gwm;

    invoke-virtual {v0}, Lcom/oneplus/android/server/display/gwm;->Ye()[I

    move-result-object v0

    :goto_0
    invoke-direct {p0, v0}, Lcom/oneplus/android/server/display/dma;->vdb([I)[I

    return-object v0

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/oneplus/android/server/display/dma;->qba:Lcom/oneplus/android/server/display/gwm;

    invoke-virtual {v0}, Lcom/oneplus/android/server/display/gwm;->Se()[I

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/android/server/display/dma;->vdb([I)[I

    return-object v0

    :cond_5
    :goto_2
    invoke-direct {p0, v0}, Lcom/oneplus/android/server/display/dma;->vdb([I)[I

    return-object v0

    :array_0
    .array-data 4
        0xff
        0xff
        0xff
    .end array-data
.end method

.method private irq(IZ)V
    .locals 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " handleScenarioChange scenario = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/display/dma;->Zb(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " immediate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mIsCustomMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oneplus/android/server/display/dma;->iba:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isEnhancedVideoEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->Sr()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " isEnhancedGameEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->Rr()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mCurrentScenario = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/android/server/display/dma;->bba:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " scenario = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OpColorGamutManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/display/dma;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "op_gamut_mapping_mode"

    const/4 v4, -0x2

    invoke-static {v0, v3, p1, v4}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->Sr()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    iget v3, p0, Lcom/oneplus/android/server/display/dma;->dba:I

    if-ne v3, v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->Rr()Z

    move-result v0

    const/4 v3, 0x1

    if-nez v0, :cond_3

    if-eq p1, v3, :cond_2

    iget v0, p0, Lcom/oneplus/android/server/display/dma;->dba:I

    if-ne v0, v3, :cond_3

    :cond_2
    return-void

    :cond_3
    invoke-direct {p0, p1}, Lcom/oneplus/android/server/display/dma;->Wb(I)V

    iget v0, p0, Lcom/oneplus/android/server/display/dma;->dba:I

    iget v4, p0, Lcom/oneplus/android/server/display/dma;->eba:I

    iget v5, p0, Lcom/oneplus/android/server/display/dma;->cba:I

    invoke-virtual {p0, v0, v4, v5}, Lcom/oneplus/android/server/display/dma;->rtg(III)I

    move-result v0

    iget v4, p0, Lcom/oneplus/android/server/display/dma;->eba:I

    iget v5, p0, Lcom/oneplus/android/server/display/dma;->cba:I

    invoke-virtual {p0, p1, v4, v5}, Lcom/oneplus/android/server/display/dma;->rtg(III)I

    move-result v4

    if-ne v0, v4, :cond_4

    return-void

    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "handleScenarioChange from = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " to = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/display/dma;->Zb(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " mPreviousScenario = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/oneplus/android/server/display/dma;->dba:I

    invoke-direct {p0, v1}, Lcom/oneplus/android/server/display/dma;->Zb(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " isIdentityMatrix() = "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->Ur()Z

    move-result v1

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x4

    if-eq p1, v1, :cond_5

    iget p1, p0, Lcom/oneplus/android/server/display/dma;->dba:I

    if-ne p1, v1, :cond_6

    :cond_5
    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->Ur()Z

    move-result p1

    if-eqz p1, :cond_6

    move p2, v3

    :cond_6
    iget-object p1, p0, Lcom/oneplus/android/server/display/dma;->pba:Lcom/oneplus/android/server/display/ibl;

    if-eqz p2, :cond_7

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/igw;->cancelAnimator()V

    iget p1, p0, Lcom/oneplus/android/server/display/dma;->mBrightness:I

    invoke-direct {p0, v4, p1}, Lcom/oneplus/android/server/display/dma;->cgv(II)V

    goto :goto_0

    :cond_7
    invoke-virtual {p1}, Lcom/oneplus/android/server/display/igw;->De()Z

    move-result p1

    if-eqz p1, :cond_8

    iget v0, p0, Lcom/oneplus/android/server/display/dma;->gg:I

    :cond_8
    invoke-direct {p0, v0, v4}, Lcom/oneplus/android/server/display/dma;->bud(II)V

    :goto_0
    return-void
.end method

.method static synthetic rtg(Lcom/oneplus/android/server/display/dma;)Lcom/oneplus/android/server/display/gwm;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/dma;->qba:Lcom/oneplus/android/server/display/gwm;

    return-object p0
.end method

.method static synthetic rtg(Lcom/oneplus/android/server/display/dma;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/display/dma;->bc(I)V

    return-void
.end method

.method static synthetic rtg(Lcom/oneplus/android/server/display/dma;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/display/dma;->Na(Z)V

    return-void
.end method

.method static synthetic sis(Lcom/oneplus/android/server/display/dma;)Lcom/oneplus/android/server/display/bio;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/dma;->Yaa:Lcom/oneplus/android/server/display/bio;

    return-object p0
.end method

.method static synthetic sis(Lcom/oneplus/android/server/display/dma;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/display/dma;->ac(I)V

    return-void
.end method

.method static synthetic sis(Lcom/oneplus/android/server/display/dma;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/display/dma;->Ra(Z)V

    return-void
.end method

.method static synthetic ssp(Lcom/oneplus/android/server/display/dma;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/display/dma;->Oa(Z)V

    return-void
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/display/dma;)Lcom/oneplus/android/server/display/ibl;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/dma;->pba:Lcom/oneplus/android/server/display/ibl;

    return-object p0
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/display/dma;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/display/dma;->cc(I)V

    return-void
.end method

.method static synthetic tsu(Lcom/oneplus/android/server/display/dma;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/display/dma;->Ta(Z)V

    return-void
.end method

.method private vdb([I)[I
    .locals 3

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_2

    aget v1, p1, v0

    if-gez v1, :cond_0

    aput p0, p1, v0

    :cond_0
    aget v1, p1, v0

    const/16 v2, 0xff

    if-le v1, v2, :cond_1

    aput v2, p1, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return-object p1
.end method

.method private vju(II)[[I
    .locals 2

    iget-object v0, p0, Lcom/oneplus/android/server/display/dma;->qba:Lcom/oneplus/android/server/display/gwm;

    invoke-virtual {v0}, Lcom/oneplus/android/server/display/gwm;->We()[[I

    move-result-object v0

    const/16 v1, 0x64

    if-eq p1, v1, :cond_3

    const/16 v1, 0x6e

    if-eq p1, v1, :cond_2

    const/16 v1, 0x88

    if-eq p1, v1, :cond_1

    const/16 p2, 0x93

    if-eq p1, p2, :cond_0

    const/16 p2, 0x94

    if-eq p1, p2, :cond_4

    iget-object v0, p0, Lcom/oneplus/android/server/display/dma;->kba:[[I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/android/server/display/dma;->qba:Lcom/oneplus/android/server/display/gwm;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/gwm;->Ze()[[I

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/oneplus/android/server/display/dma;->qba:Lcom/oneplus/android/server/display/gwm;

    invoke-virtual {p1, p2}, Lcom/oneplus/android/server/display/gwm;->U(I)[[I

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/oneplus/android/server/display/dma;->qba:Lcom/oneplus/android/server/display/gwm;

    invoke-virtual {p1}, Lcom/oneplus/android/server/display/gwm;->Ve()[[I

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object p1, p0, Lcom/oneplus/android/server/display/dma;->qba:Lcom/oneplus/android/server/display/gwm;

    invoke-virtual {p1, p2}, Lcom/oneplus/android/server/display/gwm;->S(I)[[I

    move-result-object v0

    :cond_4
    :goto_0
    invoke-direct {p0, v0}, Lcom/oneplus/android/server/display/dma;->you([[I)[[I

    return-object v0
.end method

.method static synthetic you(Lcom/oneplus/android/server/display/dma;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/android/server/display/dma;->gg:I

    return p1
.end method

.method static synthetic you(Lcom/oneplus/android/server/display/dma;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/display/dma;->Qa(Z)V

    return-void
.end method

.method private you([[I[[I)Z
    .locals 6

    const/4 p0, 0x0

    move v0, p0

    move v1, v0

    :goto_0
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_2

    move v2, v1

    move v1, p0

    :goto_1
    aget-object v4, p1, v1

    array-length v4, v4

    if-ge v1, v4, :cond_1

    aget-object v4, p1, v0

    aget v4, v4, v1

    aget-object v5, p2, v0

    aget v5, v5, v1

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v4, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_2
    sget-boolean p1, Lcom/oneplus/android/server/display/dma;->DEBUG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "filterLightColor singleScore = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OpColorGamutManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-le v1, v3, :cond_4

    return p0

    :cond_4
    return v3
.end method

.method static synthetic you(Lcom/oneplus/android/server/display/dma;)[I
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->getWhitePoint()[I

    move-result-object p0

    return-object p0
.end method

.method private you([[I)[[I
    .locals 4

    const/4 p0, 0x0

    move v0, p0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_3

    move v1, p0

    :goto_1
    aget-object v2, p1, v0

    array-length v2, v2

    if-ge v1, v2, :cond_2

    aget-object v2, p1, v0

    aget v2, v2, v1

    if-gez v2, :cond_0

    aget-object v2, p1, v0

    aput p0, v2, v1

    :cond_0
    aget-object v2, p1, v0

    aget v2, v2, v1

    const/16 v3, 0xff

    if-le v2, v3, :cond_1

    aget-object v2, p1, v0

    aput v3, v2, v1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method static synthetic zta(Lcom/oneplus/android/server/display/dma;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/display/dma;->_b(I)V

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/display/dma;IZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/android/server/display/dma;->irq(IZ)V

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/display/dma;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/display/dma;->Sa(Z)V

    return-void
.end method

.method static synthetic zta(Lcom/oneplus/android/server/display/dma;[[I[[I)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/android/server/display/dma;->zta([[I[[I)Z

    move-result p0

    return p0
.end method

.method private zta([[I[[I)Z
    .locals 6

    const/4 p0, 0x0

    move v0, p0

    move v1, v0

    :goto_0
    array-length v2, p1

    const/4 v3, 0x1

    if-ge v0, v2, :cond_2

    move v2, v1

    move v1, p0

    :goto_1
    aget-object v4, p1, v1

    array-length v4, v4

    if-ge v1, v4, :cond_1

    aget-object v4, p1, v0

    aget v4, v4, v1

    aget-object v5, p2, v0

    aget v5, v5, v1

    sub-int/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-lt v4, v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    goto :goto_0

    :cond_2
    sget-boolean p1, Lcom/oneplus/android/server/display/dma;->DEBUG:Z

    if-eqz p1, :cond_3

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "filterAnimColor totalScore = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "OpColorGamutManager"

    invoke-static {p2, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-lt v1, v3, :cond_4

    return p0

    :cond_4
    return v3
.end method

.method static synthetic zta(Lcom/oneplus/android/server/display/dma;)[[I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/android/server/display/dma;->kba:[[I

    return-object p0
.end method


# virtual methods
.method public Ee()I
    .locals 1

    const-string p0, "vendor.sys.color.mode"

    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public F(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->Tr()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyDCStatusChange dcEnable = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorGamutManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/android/server/display/dma;->gba:Z

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/oneplus/android/server/display/dma;->gba:Z

    return-void
.end method

.method public G(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->Tr()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyFingerPrintStatus fingerPrintOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorGamutManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/android/server/display/dma;->fba:Z

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/oneplus/android/server/display/dma;->fba:Z

    iget-object v0, p0, Lcom/oneplus/android/server/display/dma;->mHandler:Lcom/oneplus/android/server/display/dma$zta;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/android/server/display/dma;->mHandler:Lcom/oneplus/android/server/display/dma$zta;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public H(I)V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->Tr()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyColorModeChange colorMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorGamutManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/android/server/display/dma;->mHandler:Lcom/oneplus/android/server/display/dma$zta;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/oneplus/android/server/display/dma;->mHandler:Lcom/oneplus/android/server/display/dma$zta;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public H(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyMediaCodecStateChange on = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorGamutManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->Tr()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/android/server/display/dma;->lba:Z

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/oneplus/android/server/display/dma;->lba:Z

    iget-object v0, p0, Lcom/oneplus/android/server/display/dma;->mHandler:Lcom/oneplus/android/server/display/dma$zta;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/android/server/display/dma;->mHandler:Lcom/oneplus/android/server/display/dma$zta;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public I(I)V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->Tr()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/oneplus/android/server/display/dma;->mRefreshRate:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyRefreshRateChange refreshRate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorGamutManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/oneplus/android/server/display/dma;->mRefreshRate:I

    iget-object v0, p0, Lcom/oneplus/android/server/display/dma;->mHandler:Lcom/oneplus/android/server/display/dma$zta;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/oneplus/android/server/display/dma;->mHandler:Lcom/oneplus/android/server/display/dma$zta;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public I(Z)V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->Tr()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyScreenStatus screenOn = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorGamutManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/android/server/display/dma;->mScreenOn:Z

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/oneplus/android/server/display/dma;->mScreenOn:Z

    iget-object v0, p0, Lcom/oneplus/android/server/display/dma;->mHandler:Lcom/oneplus/android/server/display/dma$zta;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/android/server/display/dma;->mHandler:Lcom/oneplus/android/server/display/dma$zta;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public adjustLightColorGamut(I)V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->Tr()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/oneplus/android/server/display/dma;->mBrightness:I

    if-ne v0, p1, :cond_1

    const-string p0, "OpColorGamutManager"

    const-string p1, "adjustLightColorGamut return"

    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iput v0, p0, Lcom/oneplus/android/server/display/dma;->mLastBrightness:I

    iput p1, p0, Lcom/oneplus/android/server/display/dma;->mBrightness:I

    iget-object v0, p0, Lcom/oneplus/android/server/display/dma;->mHandler:Lcom/oneplus/android/server/display/dma$zta;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/oneplus/android/server/display/dma;->mHandler:Lcom/oneplus/android/server/display/dma$zta;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public bvj(IZ)V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->Tr()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScenario scenario = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/display/dma;->Zb(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " immediate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorGamutManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/oneplus/android/server/display/dma;->bba:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput v0, p0, Lcom/oneplus/android/server/display/dma;->dba:I

    iput p1, p0, Lcom/oneplus/android/server/display/dma;->bba:I

    iget-object v0, p0, Lcom/oneplus/android/server/display/dma;->mHandler:Lcom/oneplus/android/server/display/dma$zta;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/android/server/display/dma;->mHandler:Lcom/oneplus/android/server/display/dma$zta;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 3

    const-string v0, "Gamut Mapping:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, ""

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "------------Color Modes----------------"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " surrent color space: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/android/server/display/dma;->cba:I

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/display/dma;->Xb(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " current scenario: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/android/server/display/dma;->bba:I

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/display/dma;->Zb(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " previous scenario: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/android/server/display/dma;->dba:I

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/display/dma;->Zb(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " surfaceflinger color mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/android/server/display/dma;->eba:I

    invoke-direct {p0, v2}, Lcom/oneplus/android/server/display/dma;->Yb(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "------------Video Info----------------"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " special view: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/android/server/display/dma;->mRefreshRate:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " media code state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/android/server/display/dma;->lba:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " enhanced video switch state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->Sr()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "------------Properties----------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " vendor.sys.hardware.decoding: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->Qr()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " vendor.sys.blacklist.layer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->Pr()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/oneplus/android/server/display/dma;->Yaa:Lcom/oneplus/android/server/display/bio;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/display/bio;->dump(Ljava/io/PrintWriter;)V

    return-void
.end method

.method public notifyBlackListLayer(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyBlackListLayer isBlackListLayer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorGamutManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->Tr()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/display/dma;->mHandler:Lcom/oneplus/android/server/display/dma$zta;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/android/server/display/dma;->mHandler:Lcom/oneplus/android/server/display/dma$zta;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

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

    const-string v1, "OpColorGamutManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->Tr()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/android/server/display/dma;->oba:Z

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iput-boolean p1, p0, Lcom/oneplus/android/server/display/dma;->oba:Z

    iget-object v0, p0, Lcom/oneplus/android/server/display/dma;->mHandler:Lcom/oneplus/android/server/display/dma$zta;

    const/16 v1, 0xb

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/android/server/display/dma;->mHandler:Lcom/oneplus/android/server/display/dma$zta;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifySFColorModeChange(I)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setActiveColorMode color mode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorGamutManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->Tr()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/oneplus/android/server/display/dma;->eba:I

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/oneplus/android/server/display/dma;->mHandler:Lcom/oneplus/android/server/display/dma$zta;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->arg1:I

    iget-object p0, p0, Lcom/oneplus/android/server/display/dma;->mHandler:Lcom/oneplus/android/server/display/dma$zta;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public notifyVideoModeChange(Z)V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "notifyVideoModeChange isVideo = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " hasBlackListLayer = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->Pr()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OpColorGamutManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/oneplus/android/server/display/dma;->Tr()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/android/server/display/dma;->mHandler:Lcom/oneplus/android/server/display/dma$zta;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object p0, p0, Lcom/oneplus/android/server/display/dma;->mHandler:Lcom/oneplus/android/server/display/dma$zta;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public rtg(III)I
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getEnhancedmentLevel scenario = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/oneplus/android/server/display/dma;->Zb(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " sfColorMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p2}, Lcom/oneplus/android/server/display/dma;->Yb(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " colorMode = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p3}, Lcom/oneplus/android/server/display/dma;->Xb(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpColorGamutManager"

    invoke-static {v0, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 p0, 0x88

    const/16 v0, 0x93

    const/4 v1, 0x1

    const/16 v2, 0x64

    const/4 v3, 0x4

    const/16 v4, 0x94

    if-nez p2, :cond_6

    if-nez p3, :cond_2

    if-ne p1, v3, :cond_0

    return v4

    :cond_0
    if-nez p1, :cond_1

    return v2

    :cond_1
    const/16 p0, 0x6e

    return p0

    :cond_2
    if-ne p3, v1, :cond_5

    if-ne p1, v3, :cond_3

    return v4

    :cond_3
    if-nez p1, :cond_4

    return p0

    :cond_4
    return v0

    :cond_5
    return v4

    :cond_6
    const/4 v5, 0x2

    if-ne p2, v1, :cond_a

    if-ne p3, v5, :cond_7

    return v4

    :cond_7
    if-ne p1, v3, :cond_8

    return v4

    :cond_8
    if-nez p1, :cond_9

    return p0

    :cond_9
    return v0

    :cond_a
    if-ne p2, v5, :cond_b

    goto :goto_0

    :cond_b
    const/4 p0, 0x3

    if-ne p2, p0, :cond_c

    goto :goto_0

    :cond_c
    move v4, v2

    :goto_0
    return v4
.end method

.method public zta(Lcom/oneplus/android/server/display/OpColorModeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/display/dma;->rba:Lcom/oneplus/android/server/display/OpColorModeManager;

    return-void
.end method

.method public zta(Lcom/oneplus/android/server/display/bvj;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/android/server/display/dma;->mColorTintManager:Lcom/oneplus/android/server/display/bvj;

    return-void
.end method
