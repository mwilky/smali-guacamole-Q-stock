.class public Lcom/oneplus/settings/OneplusColorManager;
.super Ljava/lang/Object;
.source "OneplusColorManager.java"


# static fields
.field private static final OP_DCIP3_MODE_LEVEL:I = 0x8

.field private static final OP_DEFAULT_MODE_LEVEL:I = 0x0

.field private static final OP_REVERT_STATUS:I = 0xc

.field private static final OP_SRGB_MODE_LEVEL:I = 0x7

.field private static final OP_SYS_DCIP3_PROPERTY:Ljava/lang/String; = "sys.dci3p"

.field private static final OP_SYS_SRGB_PROPERTY:Ljava/lang/String; = "sys.srgb"

.field private static final TAG:Ljava/lang/String; = "OneplusColorManager"

.field private static mOneplusColorManager:Lcom/oneplus/settings/OneplusColorManager;


# instance fields
.field private isSupportReadingMode:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/OneplusColorManager;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/settings/OneplusColorManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "oem.read_mode.support"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/OneplusColorManager;->isSupportReadingMode:Z

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/settings/OneplusColorManager;
    .locals 1

    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mOneplusColorManager:Lcom/oneplus/settings/OneplusColorManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/settings/OneplusColorManager;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/OneplusColorManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/oneplus/settings/OneplusColorManager;->mOneplusColorManager:Lcom/oneplus/settings/OneplusColorManager;

    :cond_0
    sget-object v0, Lcom/oneplus/settings/OneplusColorManager;->mOneplusColorManager:Lcom/oneplus/settings/OneplusColorManager;

    return-object v0
.end method

.method private saveColorManagerMode()V
    .locals 0

    return-void
.end method


# virtual methods
.method public closeDciP3()V
    .locals 2

    const-string v0, "sys.dci3p"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public closesRGB()V
    .locals 2

    const-string v0, "sys.srgb"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public releaseColorManager()V
    .locals 0

    return-void
.end method

.method public resetScreenBetterDisplay()V
    .locals 0

    return-void
.end method

.method public restoreScreenBetterDisplay()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/OneplusColorManager;->saveColorManagerMode()V

    return-void
.end method

.method public revertStatus()V
    .locals 0

    return-void
.end method

.method public saveScreenBetter()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/OneplusColorManager;->saveColorManagerMode()V

    return-void
.end method

.method public setActiveMode(I)V
    .locals 0

    return-void
.end method

.method public setActivetNightMode()V
    .locals 2

    const-string v0, "sys.srgb"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setColorBalance(I)V
    .locals 0

    return-void
.end method

.method public setDciP3()V
    .locals 2

    const-string v0, "sys.dci3p"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setNightModeLevel(I)V
    .locals 0

    return-void
.end method

.method public setNotActivetNightMode()V
    .locals 2

    const-string v0, "sys.srgb"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public setsRGB()V
    .locals 2

    const-string v0, "sys.srgb"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
