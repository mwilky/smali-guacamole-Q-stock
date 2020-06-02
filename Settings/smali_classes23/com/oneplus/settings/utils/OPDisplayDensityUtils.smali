.class public Lcom/oneplus/settings/utils/OPDisplayDensityUtils;
.super Ljava/lang/Object;
.source "OPDisplayDensityUtils.java"


# static fields
.field public static final DEFAULT_DENSITY_INDEX:I = 0x1

.field public static final DEFAULT_LARGE_DPI:Ljava/lang/String; = "560"


# instance fields
.field private mCurrentIndex:I

.field private mDefaultDensity:I

.field private mEntries:[Ljava/lang/String;

.field private mValues:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mValues:[I

    const-string v1, "ro.sf.lcd_density"

    const-string v2, "480"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settingslib/display/DisplayDensityUtils;

    invoke-direct {v2, p1}, Lcom/android/settingslib/display/DisplayDensityUtils;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2}, Lcom/android/settingslib/display/DisplayDensityUtils;->getDefaultDensity()I

    move-result v3

    iput v3, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mDefaultDensity:I

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x2

    const-string v5, "oneplus_screen_resolution_adjust"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    const-string v5, "560"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v3, :cond_0

    if-ne v3, v4, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0300c9

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mValues:[I

    :cond_1
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f1212a8

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v0, v6

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v7, 0x7f1212a5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x1

    aput-object v5, v0, v7

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f1212a7

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x3

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f1212a9

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    const/4 v4, 0x4

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f1212a6

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v0, v4

    iput-object v0, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mEntries:[Ljava/lang/String;

    nop

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v4, -0x2

    const-string v5, "display_density_forced"

    invoke-static {v0, v5, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    iput v7, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mCurrentIndex:I

    goto :goto_1

    :cond_2
    const/4 v4, 0x0

    :goto_0
    iget-object v5, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mValues:[I

    array-length v8, v5

    if-ge v4, v8, :cond_4

    aget v5, v5, v4

    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    iput v4, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mCurrentIndex:I

    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    iget v4, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mCurrentIndex:I

    iget-object v5, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mValues:[I

    array-length v8, v5

    sub-int/2addr v8, v7

    if-lt v4, v8, :cond_5

    array-length v4, v5

    sub-int/2addr v4, v7

    iput v4, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mCurrentIndex:I

    :cond_5
    iget v4, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mCurrentIndex:I

    if-gtz v4, :cond_6

    iput v6, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mCurrentIndex:I

    :cond_6
    return-void

    :array_0
    .array-data 4
        0x17c
        0x1a4
        0x1e0
        0x1f4
        0x21c
    .end array-data
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mCurrentIndex:I

    return v0
.end method

.method public getDefaultDensity()I
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mDefaultDensity:I

    return v0
.end method

.method public getEntries()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mEntries:[Ljava/lang/String;

    return-object v0
.end method

.method public getValues()[I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/utils/OPDisplayDensityUtils;->mValues:[I

    return-object v0
.end method
