.class public Lcom/oneplus/systemui/OpSystemUIService;
.super Landroid/app/Service;
.source "OpSystemUIService.java"


# instance fields
.field private mFontConfig:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/systemui/OpSystemUIService;->mFontConfig:I

    return-void
.end method

.method private initFont()V
    .locals 4

    const/4 v0, 0x1

    :try_start_0
    const-string v1, "persist.sys.font"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Font]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Font"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget v1, p0, Lcom/oneplus/systemui/OpSystemUIService;->mFontConfig:I

    if-eq v1, v0, :cond_0

    invoke-static {v0}, Landroid/graphics/Typeface;->changeFont(I)V

    iput v0, p0, Lcom/oneplus/systemui/OpSystemUIService;->mFontConfig:I

    :cond_0
    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget v0, p1, Landroid/content/res/Configuration;->oneplusfont:I

    iget v1, p0, Lcom/oneplus/systemui/OpSystemUIService;->mFontConfig:I

    if-eq v0, v1, :cond_0

    invoke-static {v0}, Landroid/graphics/Typeface;->changeFont(I)V

    iget p1, p1, Landroid/content/res/Configuration;->oneplusfont:I

    iput p1, p0, Lcom/oneplus/systemui/OpSystemUIService;->mFontConfig:I

    :cond_0
    return-void
.end method

.method public onCreate()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-direct {p0}, Lcom/oneplus/systemui/OpSystemUIService;->initFont()V

    return-void
.end method
