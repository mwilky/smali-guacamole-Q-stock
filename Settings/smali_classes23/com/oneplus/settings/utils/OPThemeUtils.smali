.class public final Lcom/oneplus/settings/utils/OPThemeUtils;
.super Ljava/lang/Object;
.source "OPThemeUtils.java"


# static fields
.field private static CLOCK_TYPE_ANALOG:I = 0x0

.field private static CLOCK_TYPE_DEFAULT:I = 0x0

.field private static CLOCK_TYPE_MINIMALISM:I = 0x0

.field private static CLOCK_TYPE_NONE:I = 0x0

.field public static KEY_AOD_CLOCK_STYLE:Ljava/lang/String; = null

.field public static final KEY_DARK_MODE_ACTION:Ljava/lang/String; = "oem_black_mode"

.field public static final KEY_ORIGIN_DARK_MODE_ACTION:Ljava/lang/String; = "origin_oem_black_mode"

.field public static final OEM_BLACK_MODE_ACCENT_COLOR:Ljava/lang/String; = "oem_black_mode_accent_color"

.field private static final OEM_BLACK_MODE_ACCENT_COLOR_INDEX:Ljava/lang/String; = "oem_black_mode_accent_color_index"

.field public static final OEM_WHITE_MODE_ACCENT_COLOR:Ljava/lang/String; = "oem_white_mode_accent_color"

.field private static final OEM_WHITE_MODE_ACCENT_COLOR_INDEX:Ljava/lang/String; = "oem_white_mode_accent_color_index"

.field public static final OP_COLORFUL_WALLPAPER_DEFAULTE_NAME:Ljava/lang/String; = "wallpaper_g_live_gold"

.field public static final OP_CUSTOMIZATION_THEME_ANDROID_MODE:I = 0x2

.field public static final OP_CUSTOMIZATION_THEME_DARK_MODE:I = 0x1

.field public static final OP_CUSTOMIZATION_THEME_LIGHT_MODE:I = 0x0

.field public static final OP_CUSTOMIZATION_THEME_ONEPLUS_AODNOTIFICATION:Ljava/lang/String; = "oneplus_aodnotification"

.field public static final OP_CUSTOMIZATION_THEME_ONEPLUS_AODNOTIFICATION_BLUE:Ljava/lang/String; = "blue"

.field public static final OP_CUSTOMIZATION_THEME_ONEPLUS_AODNOTIFICATION_BLUE_INDEX:I = 0x0

.field public static final OP_CUSTOMIZATION_THEME_ONEPLUS_AODNOTIFICATION_GOLD:Ljava/lang/String; = "gold"

.field public static final OP_CUSTOMIZATION_THEME_ONEPLUS_AODNOTIFICATION_GOLD_INDEX:I = 0x2

.field public static final OP_CUSTOMIZATION_THEME_ONEPLUS_AODNOTIFICATION_MCL:Ljava/lang/String; = "mcl"

.field public static final OP_CUSTOMIZATION_THEME_ONEPLUS_AODNOTIFICATION_MCL_INDEX:I = 0xa

.field public static final OP_CUSTOMIZATION_THEME_ONEPLUS_AODNOTIFICATION_PURPLE:Ljava/lang/String; = "purple"

.field public static final OP_CUSTOMIZATION_THEME_ONEPLUS_AODNOTIFICATION_PURPLE_INDEX:I = 0x3

.field public static final OP_CUSTOMIZATION_THEME_ONEPLUS_AODNOTIFICATION_RED:Ljava/lang/String; = "red"

.field public static final OP_CUSTOMIZATION_THEME_ONEPLUS_AODNOTIFICATION_RED_INDEX:I = 0x1

.field public static final OP_CUSTOMIZATION_THEME_ONEPLUS_BASICCOLOR:Ljava/lang/String; = "oneplus_basiccolor"

.field public static final OP_CUSTOMIZATION_THEME_ONEPLUS_BASICCOLOR_BLCAK:Ljava/lang/String; = "black"

.field public static final OP_CUSTOMIZATION_THEME_ONEPLUS_BASICCOLOR_WHITE:Ljava/lang/String; = "white"

.field public static final OP_CUSTOMIZATION_THEME_ONEPLUS_DYNAMICFONT:Ljava/lang/String; = "oneplus_dynamicfont"

.field public static final OP_CUSTOMIZATION_THEME_ONEPLUS_DYNAMICFONT_NOTOSANS:Ljava/lang/String; = "1"

.field public static final OP_CUSTOMIZATION_THEME_ONEPLUS_DYNAMICFONT_NOTOSANS_INDEX:I = 0x1

.field public static final OP_CUSTOMIZATION_THEME_ONEPLUS_DYNAMICFONT_SLATE_OF_ONEPLUS_STYLE:Ljava/lang/String; = "2"

.field public static final OP_CUSTOMIZATION_THEME_ONEPLUS_DYNAMICFONT_SLATE_OF_ONEPLUS_STYLE_INDEX:I = 0x2

.field public static final OP_CUSTOMIZATION_THEME_ONEPLUS_SHAPE:Ljava/lang/String; = "oneplus_shape"

.field public static final OP_CUSTOMIZATION_THEME_ONEPLUS_SHAPE_CIRCLE:Ljava/lang/String; = "circle"

.field public static final OP_CUSTOMIZATION_THEME_ONEPLUS_SHAPE_CIRCLE_INDEX:I = 0x1

.field public static final OP_CUSTOMIZATION_THEME_ONEPLUS_SHAPE_ROUNDEDRECT:Ljava/lang/String; = "roundedrect"

.field public static final OP_CUSTOMIZATION_THEME_ONEPLUS_SHAPE_ROUNDEDRECT_INDEX:I = 0x2

.field public static final OP_CUSTOMIZATION_THEME_ONEPLUS_SHAPE_SQUIRCLE:Ljava/lang/String; = "squircle"

.field public static final OP_CUSTOMIZATION_THEME_ONEPLUS_SHAPE_SQUIRCLE_INDEX:I = 0x4

.field public static final OP_CUSTOMIZATION_THEME_ONEPLUS_SHAPE_TEARDROP:Ljava/lang/String; = "teardrop"

.field public static final OP_CUSTOMIZATION_THEME_ONEPLUS_SHAPE_TEARDROP_INDEX:I = 0x3

.field public static final OP_CUSTOMIZATION_THEME_STYLE:Ljava/lang/String; = "op_customization_theme_style"

.field public static final OP_DARK_WALLPAPER_DEFAULT_NAME:Ljava/lang/String; = "wallpaper_g_live_gray"

.field public static final OP_LIGHT_WALLPAPER_DEFAULT_NAME:Ljava/lang/String; = "wallpaper_g_live_blue"

.field public static final OP_OEM_FONT_MODE:Ljava/lang/String; = "oem_font_mode"

.field private static final TAG:Ljava/lang/String; = "OPThemeUtils"

.field public static final THEME_ANDROID_MODE:I = 0x2

.field public static final THEME_DARK_MODE:I = 0x1

.field public static final THEME_LIGHT_MODE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "aod_clock_style"

    sput-object v0, Lcom/oneplus/settings/utils/OPThemeUtils;->KEY_AOD_CLOCK_STYLE:Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/oneplus/settings/utils/OPThemeUtils;->CLOCK_TYPE_DEFAULT:I

    const/4 v0, 0x1

    sput v0, Lcom/oneplus/settings/utils/OPThemeUtils;->CLOCK_TYPE_ANALOG:I

    const/4 v0, 0x2

    sput v0, Lcom/oneplus/settings/utils/OPThemeUtils;->CLOCK_TYPE_MINIMALISM:I

    const/4 v0, 0x3

    sput v0, Lcom/oneplus/settings/utils/OPThemeUtils;->CLOCK_TYPE_NONE:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Z)V
    .locals 0

    invoke-static {p0, p1}, Lcom/oneplus/settings/utils/OPThemeUtils;->enableAospDarkTheme(Landroid/content/Context;Z)V

    return-void
.end method

.method public static disableAllColorfulThemes(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/oneplus/sdk/utils/OpTheme;

    invoke-direct {v1, p0}, Lcom/oneplus/sdk/utils/OpTheme;-><init>(Landroid/content/Context;)V

    const-string v2, "oneplus_basiccolor"

    const-string v3, "white"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    const-string v3, "black"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentBasicColorMode(Landroid/content/Context;I)V

    const-string v3, "oneplus_dynamicfont"

    const-string v4, "2"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    invoke-static {p0, v2}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentFont(Landroid/content/Context;I)V

    const-string v3, "oneplus_shape"

    const-string v4, "squircle"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    const/4 v3, 0x4

    invoke-static {p0, v3}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentShape(Landroid/content/Context;I)V

    const-string v3, "oneplus_aodnotification"

    const-string v4, "gold"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentHorizonLight(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    return-void
.end method

.method public static disableAllDarkThemes(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/oneplus/sdk/utils/OpTheme;

    invoke-direct {v1, p0}, Lcom/oneplus/sdk/utils/OpTheme;-><init>(Landroid/content/Context;)V

    const-string v2, "oneplus_basiccolor"

    const-string v3, "black"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentBasicColorMode(Landroid/content/Context;I)V

    const-string v3, "oneplus_dynamicfont"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    invoke-static {p0, v2}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentFont(Landroid/content/Context;I)V

    const-string v2, "oneplus_shape"

    const-string v3, "roundedrect"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    const/4 v2, 0x2

    invoke-static {p0, v2}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentShape(Landroid/content/Context;I)V

    const-string v2, "oneplus_aodnotification"

    const-string v3, "purple"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x3

    invoke-static {p0, v2}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentHorizonLight(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    return-void
.end method

.method public static disableAllLightThemes(Landroid/content/Context;)V
    .locals 6

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/oneplus/sdk/utils/OpTheme;

    invoke-direct {v1, p0}, Lcom/oneplus/sdk/utils/OpTheme;-><init>(Landroid/content/Context;)V

    const-string v2, "oneplus_basiccolor"

    const-string v3, "white"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentBasicColorMode(Landroid/content/Context;I)V

    const-string v3, "oneplus_dynamicfont"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentFont(Landroid/content/Context;I)V

    const-string v4, "oneplus_shape"

    const-string v5, "circle"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    invoke-static {p0, v3}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentShape(Landroid/content/Context;I)V

    const-string v3, "oneplus_aodnotification"

    const-string v4, "red"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    const-string v4, "gold"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    const-string v4, "purple"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentHorizonLight(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    return-void
.end method

.method public static disableAllThemes(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/oneplus/sdk/utils/OpTheme;

    invoke-direct {v1, p0}, Lcom/oneplus/sdk/utils/OpTheme;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentFont(Landroid/content/Context;I)V

    const-string v3, "oneplus_dynamicfont"

    const-string v4, "2"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-static {p0, v2}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentShape(Landroid/content/Context;I)V

    const-string v2, "oneplus_shape"

    const-string v3, "squircle"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    const-string v3, "circle"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    const-string v3, "teardrop"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    const-string v3, "roundedrect"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentHorizonLight(Landroid/content/Context;I)V

    const-string v2, "oneplus_aodnotification"

    const-string v3, "gold"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    const-string v3, "red"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    const-string v3, "purple"

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    return-void
.end method

.method public static disableCurrentTheme(Landroid/content/Context;)V
    .locals 2

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPThemeUtils;->getCurrentCustomizationTheme(Landroid/content/Context;)I

    move-result v0

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPThemeUtils;->disableAllColorfulThemes(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPThemeUtils;->disableAllDarkThemes(Landroid/content/Context;)V

    goto :goto_0

    :cond_2
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPThemeUtils;->disableAllLightThemes(Landroid/content/Context;)V

    nop

    :goto_0
    return-void
.end method

.method public static disableTheme(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/oneplus/sdk/utils/OpTheme;

    invoke-direct {v1, p2}, Lcom/oneplus/sdk/utils/OpTheme;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    return-void
.end method

.method private static enableAospDarkTheme(Landroid/content/Context;Z)V
    .locals 2

    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/UiModeManager;->setNightMode(I)V

    return-void
.end method

.method private static enableAospDarkThemeDelay(Landroid/content/Context;ZJ)V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/oneplus/settings/utils/OPThemeUtils$1;

    invoke-direct {v1, p0, p1}, Lcom/oneplus/settings/utils/OPThemeUtils$1;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v1, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static enableColorfulThemes(Landroid/content/Context;)V
    .locals 10

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPThemeUtils;->disableAllThemes(Landroid/content/Context;)V

    const-string v0, "wallpaper_g_live_gold"

    invoke-static {p0, v0}, Lcom/oneplus/settings/utils/OPThemeUtils;->setDefaultWallpaper(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x2

    invoke-static {p0, v1}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentBasicColorMode(Landroid/content/Context;I)V

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/oneplus/settings/utils/OPThemeUtils;->enableAospDarkTheme(Landroid/content/Context;Z)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    new-instance v4, Lcom/oneplus/sdk/utils/OpTheme;

    invoke-direct {v4, p0}, Lcom/oneplus/sdk/utils/OpTheme;-><init>(Landroid/content/Context;)V

    const-string v5, "oneplus_dynamicfont"

    const-string v6, "2"

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentFont(Landroid/content/Context;I)V

    const-string v5, "oneplus_shape"

    const-string v6, "squircle"

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x4

    invoke-static {p0, v5}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentShape(Landroid/content/Context;I)V

    const-string v5, "oneplus_aodnotification"

    const-string v6, "gold"

    invoke-virtual {v3, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v1}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentHorizonLight(Landroid/content/Context;I)V

    invoke-virtual {v4, v3}, Lcom/oneplus/sdk/utils/OpTheme;->enableTheme(Ljava/util/HashMap;)I

    const v5, 0x7f0603d2

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v8

    const-string v9, "oneplus_accent_color"

    invoke-static {v7, v9, v6, v8}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "#"

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    :cond_0
    const-string v7, "persist.sys.theme.accentcolor"

    invoke-static {v7, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v8, "oem_black_mode_accent_color"

    invoke-static {v7, v8, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0603d1

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "oem_white_mode_accent_color"

    invoke-static {v5, v8, v7}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "oem_black_mode_accent_color_index"

    invoke-static {v5, v7, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v7, "oem_white_mode_accent_color_index"

    invoke-static {v5, v7, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v5, -0x2

    const-string v7, "op_custom_unlock_animation_style"

    invoke-static {v2, v7, v1, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/oneplus/settings/utils/OPThemeUtils;->KEY_AOD_CLOCK_STYLE:Ljava/lang/String;

    sget v7, Lcom/oneplus/settings/utils/OPThemeUtils;->CLOCK_TYPE_MINIMALISM:I

    invoke-static {v1, v2, v7, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static enableDarkThemes(Landroid/content/Context;)V
    .locals 8

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPThemeUtils;->disableAllThemes(Landroid/content/Context;)V

    const-string v0, "wallpaper_g_live_gray"

    invoke-static {p0, v0}, Lcom/oneplus/settings/utils/OPThemeUtils;->setDefaultWallpaper(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/oneplus/sdk/utils/OpTheme;

    invoke-direct {v1, p0}, Lcom/oneplus/sdk/utils/OpTheme;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-static {p0, v2}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentBasicColorMode(Landroid/content/Context;I)V

    const-string v3, "oneplus_dynamicfont"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v2}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentFont(Landroid/content/Context;I)V

    const-string v3, "oneplus_shape"

    const-string v4, "roundedrect"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-static {p0, v3}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentShape(Landroid/content/Context;I)V

    const-string v3, "oneplus_aodnotification"

    const-string v4, "purple"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x3

    invoke-static {p0, v3}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentHorizonLight(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Lcom/oneplus/sdk/utils/OpTheme;->enableTheme(Ljava/util/HashMap;)I

    const v3, 0x7f0603d1

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    const-string v7, "oneplus_accent_color"

    invoke-static {v5, v7, v4, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "#"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    const-wide/16 v5, 0x3e8

    invoke-static {p0, v2, v5, v6}, Lcom/oneplus/settings/utils/OPThemeUtils;->enableAospDarkThemeDelay(Landroid/content/Context;ZJ)V

    const-string v5, "persist.sys.theme.accentcolor"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0603d2

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    const-string v7, "oem_black_mode_accent_color"

    invoke-static {v5, v7, v6}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "oem_white_mode_accent_color"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, 0x0

    const-string v6, "oem_black_mode_accent_color_index"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "oem_white_mode_accent_color_index"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, -0x2

    const-string v6, "op_custom_unlock_animation_style"

    invoke-static {v3, v6, v2, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/oneplus/settings/utils/OPThemeUtils;->KEY_AOD_CLOCK_STYLE:Ljava/lang/String;

    sget v6, Lcom/oneplus/settings/utils/OPThemeUtils;->CLOCK_TYPE_ANALOG:I

    invoke-static {v2, v3, v6, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static enableLightThemes(Landroid/content/Context;)V
    .locals 8

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPThemeUtils;->disableAllThemes(Landroid/content/Context;)V

    const-string v0, "wallpaper_g_live_blue"

    invoke-static {p0, v0}, Lcom/oneplus/settings/utils/OPThemeUtils;->setDefaultWallpaper(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/oneplus/sdk/utils/OpTheme;

    invoke-direct {v1, p0}, Lcom/oneplus/sdk/utils/OpTheme;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x0

    invoke-static {p0, v2}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentBasicColorMode(Landroid/content/Context;I)V

    const-string v3, "oneplus_dynamicfont"

    const-string v4, "1"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentFont(Landroid/content/Context;I)V

    const-string v4, "oneplus_shape"

    const-string v5, "circle"

    invoke-virtual {v0, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v3}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentShape(Landroid/content/Context;I)V

    invoke-virtual {v1, v0}, Lcom/oneplus/sdk/utils/OpTheme;->enableTheme(Ljava/util/HashMap;)I

    invoke-static {p0, v2}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentHorizonLight(Landroid/content/Context;I)V

    const v3, 0x7f0603d2

    invoke-virtual {p0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    const-string v7, "oneplus_accent_color"

    invoke-static {v5, v7, v4, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    const-string v5, "#"

    const-string v6, ""

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    const-wide/16 v5, 0x3e8

    invoke-static {p0, v2, v5, v6}, Lcom/oneplus/settings/utils/OPThemeUtils;->enableAospDarkThemeDelay(Landroid/content/Context;ZJ)V

    const-string v5, "persist.sys.theme.accentcolor"

    invoke-static {v5, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v6, "oem_black_mode_accent_color"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f0603d1

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "oem_white_mode_accent_color"

    invoke-static {v3, v6, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "oem_black_mode_accent_color_index"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "oem_white_mode_accent_color_index"

    invoke-static {v3, v5, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v5, -0x2

    const-string v6, "op_custom_unlock_animation_style"

    invoke-static {v3, v6, v2, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lcom/oneplus/settings/utils/OPThemeUtils;->KEY_AOD_CLOCK_STYLE:Ljava/lang/String;

    sget v6, Lcom/oneplus/settings/utils/OPThemeUtils;->CLOCK_TYPE_DEFAULT:I

    invoke-static {v2, v3, v6, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static enableMclThemes(Landroid/content/Context;)V
    .locals 9

    const-string v0, "OPCustomFingerAnimVideoPreference"

    const-string v1, "enableMclThemes 1 "

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPThemeUtils;->disableAllThemes(Landroid/content/Context;)V

    const-string v1, "wallpaper_g_live_blue"

    invoke-static {p0, v1}, Lcom/oneplus/settings/utils/OPThemeUtils;->setDefaultWallpaper(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v2, Lcom/oneplus/sdk/utils/OpTheme;

    invoke-direct {v2, p0}, Lcom/oneplus/sdk/utils/OpTheme;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    invoke-static {p0, v3}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentBasicColorMode(Landroid/content/Context;I)V

    invoke-static {p0, v3}, Lcom/oneplus/settings/utils/OPThemeUtils;->enableAospDarkTheme(Landroid/content/Context;Z)V

    const-string v4, "oneplus_dynamicfont"

    const-string v5, "1"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v3}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentFont(Landroid/content/Context;I)V

    const-string v4, "oneplus_shape"

    const-string v5, "circle"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p0, v3}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentShape(Landroid/content/Context;I)V

    const-string v4, "oneplus_aodnotification"

    const-string v5, "mcl"

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v4, 0xa

    invoke-static {p0, v4}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentHorizonLight(Landroid/content/Context;I)V

    invoke-virtual {v2, v1}, Lcom/oneplus/sdk/utils/OpTheme;->enableTheme(Ljava/util/HashMap;)I

    const-string v5, "oneplus_accentcolor"

    const-string v6, ""

    invoke-virtual {v1, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v1}, Lcom/oneplus/sdk/utils/OpTheme;->enableTheme(Ljava/util/HashMap;)I

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    const-string v7, "oneplus_accent_color"

    const-string v8, "#FFF19116"

    invoke-static {v5, v7, v8, v6}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    const-string v5, "persist.sys.theme.accentcolor"

    const-string v6, "FFF19116"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportMclTheme()Z

    move-result v5

    const-string v6, "aod_clock_style"

    if-eqz v5, :cond_0

    const-string v5, "ro.boot.project_name"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v7, "18801"

    invoke-static {v7, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-static {v3, v6, v4, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v5

    invoke-static {v4, v6, v3, v5}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x3

    const/4 v5, -0x2

    const-string v6, "op_custom_unlock_animation_style"

    invoke-static {v3, v6, v4, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, -0x1

    const-string v5, "oem_black_mode_accent_color_index"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "oem_white_mode_accent_color_index"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v3, "enableMclThemes 2 "

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static enableTheme(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 5

    new-instance v0, Lcom/oneplus/sdk/utils/OpTheme;

    invoke-direct {v0, p2}, Lcom/oneplus/sdk/utils/OpTheme;-><init>(Landroid/content/Context;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const-string v2, "oneplus_basiccolor"

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "white"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    const-string v3, "black"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    goto :goto_0

    :cond_0
    const-string v2, "oneplus_dynamicfont"

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "2"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    goto :goto_0

    :cond_1
    const-string v2, "oneplus_shape"

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "squircle"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    const-string v3, "circle"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    const-string v3, "teardrop"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    const-string v3, "roundedrect"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    goto :goto_0

    :cond_2
    const-string v2, "oneplus_aodnotification"

    invoke-static {p0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "gold"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    const-string v3, "red"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    const-string v3, "purple"

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    :cond_3
    :goto_0
    invoke-virtual {v0, v1}, Lcom/oneplus/sdk/utils/OpTheme;->disableTheme(Ljava/util/HashMap;)I

    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "oneplus--enableTheme-category:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " secondCategory:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    new-instance v2, Lcom/oneplus/sdk/utils/OpTheme;

    invoke-direct {v2, p2}, Lcom/oneplus/sdk/utils/OpTheme;-><init>(Landroid/content/Context;)V

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v3, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v2, v3}, Lcom/oneplus/sdk/utils/OpTheme;->enableTheme(Ljava/util/HashMap;)I

    return-void
.end method

.method public static getCurrentBasicColorMode(Landroid/content/Context;)I
    .locals 3

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_black_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCurrentCustomizationTheme(Landroid/content/Context;)I
    .locals 3

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_customization_theme_style"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCurrentFont(Landroid/content/Context;)I
    .locals 3

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_font_mode"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCurrentHorizonLight(Landroid/content/Context;)I
    .locals 4

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_custom_horizon_light_animation_style"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static getCurrentHorizonLightByIndex(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    const-string v0, "blue"

    if-eqz p1, :cond_4

    const/4 v1, 0x1

    if-eq p1, v1, :cond_3

    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/16 v1, 0xa

    if-eq p1, v1, :cond_0

    return-object v0

    :cond_0
    const-string v0, "mcl"

    return-object v0

    :cond_1
    const-string v0, "purple"

    return-object v0

    :cond_2
    const-string v0, "gold"

    return-object v0

    :cond_3
    const-string v0, "red"

    return-object v0

    :cond_4
    return-object v0
.end method

.method public static getCurrentShape(Landroid/content/Context;)I
    .locals 3

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_shape"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getCurrentShapeByIndex(I)Ljava/lang/String;
    .locals 2

    const/4 v0, 0x1

    const-string v1, "circle"

    if-eq p0, v0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x3

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "squircle"

    return-object v0

    :cond_1
    const-string v0, "teardrop"

    return-object v0

    :cond_2
    const-string v0, "roundedrect"

    return-object v0

    :cond_3
    return-object v1
.end method

.method public static isSupportMclTheme()Z
    .locals 2

    sget-object v0, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->MCL:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static setCurrentBasicColorMode(Landroid/content/Context;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_black_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "persist.sys.theme.status"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static setCurrentCustomizationTheme(Landroid/content/Context;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_customization_theme_style"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setCurrentFont(Landroid/content/Context;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_font_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setCurrentHorizonLight(Landroid/content/Context;I)V
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_custom_horizon_light_animation_style"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static setCurrentShape(Landroid/content/Context;I)V
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_shape"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method public static setDefaultWallpaper(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    return-void
.end method
