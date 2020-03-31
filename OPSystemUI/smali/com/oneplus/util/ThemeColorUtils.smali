.class public Lcom/oneplus/util/ThemeColorUtils;
.super Ljava/lang/Object;
.source "ThemeColorUtils.java"


# static fields
.field public static QS_ACCENT:I = 0x64

.field public static QS_BATTERY_BACKGROUND:I = 0x8

.field public static QS_BUTTON:I = 0x7

.field public static QS_EDIT_BOTTOM:I = 0xc

.field public static QS_INDICATOR:I = 0x9

.field public static QS_PANEL_PRIMARY:I = 0x5

.field public static QS_PRIMARY_TEXT:I = 0x1

.field public static QS_PROGRESS_BACKGROUND:I = 0xb

.field public static QS_SECONDARY_TEXT:I = 0x2

.field public static QS_SEPARATOR:I = 0xe

.field public static QS_TEXT:I = 0x0

.field public static QS_TILE_CIRCLE_DISABLE:I = 0x10

.field public static QS_TILE_CIRCLE_OFF:I = 0xf

.field public static QS_TILE_DISABLE:I = 0x4

.field public static QS_TILE_OFF:I = 0x3

.field public static QS_WLB_INDICATOR:I = 0x11

.field private static sAccentColor:I = 0x0

.field private static sColors:[I = null

.field private static sCurrentTheme:I = -0x1

.field private static sSpecialTheme:Z = false

.field private static sThemeName:[Ljava/lang/String;


# direct methods
.method public static getColor(I)I
    .locals 1

    sget v0, Lcom/oneplus/util/ThemeColorUtils;->QS_ACCENT:I

    if-ne p0, v0, :cond_0

    sget p0, Lcom/oneplus/util/ThemeColorUtils;->sAccentColor:I

    return p0

    :cond_0
    sget-object v0, Lcom/oneplus/util/ThemeColorUtils;->sColors:[I

    aget p0, v0, p0

    return p0
.end method

.method public static getCurrentTheme()I
    .locals 1

    sget v0, Lcom/oneplus/util/ThemeColorUtils;->sCurrentTheme:I

    return v0
.end method

.method public static getEditTheme()I
    .locals 2

    sget v0, Lcom/oneplus/util/ThemeColorUtils;->sCurrentTheme:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/systemui/R$style;->op_edit_theme_android:I

    return v0

    :cond_0
    sget v0, Lcom/android/systemui/R$style;->op_edit_theme_android:I

    return v0

    :cond_1
    sget v0, Lcom/android/systemui/R$style;->op_edit_theme_dark:I

    return v0

    :cond_2
    sget v0, Lcom/android/systemui/R$style;->op_edit_theme_light:I

    return v0
.end method

.method public static getPopTheme()I
    .locals 2

    sget v0, Lcom/oneplus/util/ThemeColorUtils;->sCurrentTheme:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/systemui/R$style;->edit_poptheme_android:I

    return v0

    :cond_0
    sget v0, Lcom/android/systemui/R$style;->edit_poptheme_android:I

    return v0

    :cond_1
    sget v0, Lcom/android/systemui/R$style;->edit_poptheme_black:I

    return v0

    :cond_2
    sget v0, Lcom/android/systemui/R$style;->edit_poptheme_white:I

    return v0
.end method

.method public static getThumbBackground()I
    .locals 2

    sget v0, Lcom/oneplus/util/ThemeColorUtils;->sCurrentTheme:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    sget v0, Lcom/android/systemui/R$drawable;->ripple_background_dark:I

    return v0

    :cond_0
    sget v0, Lcom/android/systemui/R$drawable;->ripple_background_dark:I

    return v0

    :cond_1
    sget v0, Lcom/android/systemui/R$drawable;->ripple_background_dark:I

    return v0

    :cond_2
    sget v0, Lcom/android/systemui/R$drawable;->ripple_background_white:I

    return v0
.end method

.method public static init(Landroid/content/Context;)V
    .locals 5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/util/ThemeColorUtils;->sCurrentTheme:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    sget v1, Lcom/android/systemui/R$array;->qs_theme_colors:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/oneplus/util/ThemeColorUtils;->sThemeName:[Ljava/lang/String;

    :cond_0
    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->getThemeColor(Landroid/content/Context;)I

    move-result v1

    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->isGoogleDarkTheme(Landroid/content/Context;)Z

    move-result v2

    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isGoogleDark="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", opTheme="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ThemeColorUtils"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v2, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->isSpecialTheme(Landroid/content/Context;)Z

    move-result v2

    sget v3, Lcom/oneplus/util/ThemeColorUtils;->sCurrentTheme:I

    if-ne v3, v1, :cond_3

    sget-boolean v3, Lcom/oneplus/util/ThemeColorUtils;->sSpecialTheme:Z

    if-eq v3, v2, :cond_4

    :cond_3
    sput v1, Lcom/oneplus/util/ThemeColorUtils;->sCurrentTheme:I

    sput-boolean v2, Lcom/oneplus/util/ThemeColorUtils;->sSpecialTheme:Z

    sget-object v1, Lcom/oneplus/util/ThemeColorUtils;->sThemeName:[Ljava/lang/String;

    sget v2, Lcom/oneplus/util/ThemeColorUtils;->sCurrentTheme:I

    aget-object v1, v1, v2

    const/4 v2, 0x0

    const-string v3, "com.android.systemui"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Lcom/oneplus/util/ThemeColorUtils;->sColors:[I

    :cond_4
    invoke-static {p0}, Lcom/oneplus/util/ThemeColorUtils;->updateAccentColor(Landroid/content/Context;)V

    return-void
.end method

.method private static updateAccentColor(Landroid/content/Context;)V
    .locals 2

    sget v0, Lcom/android/systemui/R$color;->qs_tile_icon:I

    invoke-static {p0, v0}, Lcom/oneplus/util/OpUtils;->getThemeAccentColor(Landroid/content/Context;I)I

    move-result p0

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateAccentColor: accentColor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ThemeColorUtils"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sput p0, Lcom/oneplus/util/ThemeColorUtils;->sAccentColor:I

    return-void
.end method
