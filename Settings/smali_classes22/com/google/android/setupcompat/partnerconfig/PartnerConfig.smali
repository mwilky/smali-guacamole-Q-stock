.class public final enum Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
.super Ljava/lang/Enum;
.source "PartnerConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public static final enum CONFIG_DESCRIPTION_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public static final enum CONFIG_DESCRIPTION_LINK_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public static final enum CONFIG_DESCRIPTION_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public static final enum CONFIG_DESCRIPTION_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public static final enum CONFIG_FOOTER_BAR_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public static final enum CONFIG_FOOTER_BUTTON_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public static final enum CONFIG_FOOTER_BUTTON_ICON_ADD_ANOTHER:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public static final enum CONFIG_FOOTER_BUTTON_ICON_CANCEL:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public static final enum CONFIG_FOOTER_BUTTON_ICON_CLEAR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public static final enum CONFIG_FOOTER_BUTTON_ICON_DONE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public static final enum CONFIG_FOOTER_BUTTON_ICON_NEXT:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public static final enum CONFIG_FOOTER_BUTTON_ICON_OPT_IN:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public static final enum CONFIG_FOOTER_BUTTON_ICON_SKIP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public static final enum CONFIG_FOOTER_BUTTON_ICON_STOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public static final enum CONFIG_FOOTER_BUTTON_PADDING_BOTTOM:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public static final enum CONFIG_FOOTER_BUTTON_PADDING_TOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public static final enum CONFIG_FOOTER_BUTTON_RADIUS:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public static final enum CONFIG_FOOTER_BUTTON_RIPPLE_COLOR_ALPHA:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public static final enum CONFIG_FOOTER_BUTTON_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public static final enum CONFIG_FOOTER_PRIMARY_BUTTON_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public static final enum CONFIG_FOOTER_PRIMARY_BUTTON_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public static final enum CONFIG_FOOTER_SECONDARY_BUTTON_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public static final enum CONFIG_FOOTER_SECONDARY_BUTTON_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public static final enum CONFIG_HEADER_AREA_BACKGROUND_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public static final enum CONFIG_HEADER_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public static final enum CONFIG_HEADER_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public static final enum CONFIG_HEADER_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public static final enum CONFIG_LAYOUT_BACKGROUND_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public static final enum CONFIG_LAYOUT_GRAVITY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public static final enum CONFIG_LIGHT_NAVIGATION_BAR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public static final enum CONFIG_LIGHT_STATUS_BAR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public static final enum CONFIG_NAVIGATION_BAR_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

.field public static final enum CONFIG_STATUS_BAR_BACKGROUND:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;


# instance fields
.field private final resourceName:Ljava/lang/String;

.field private final resourceType:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->DRAWABLE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const/4 v2, 0x0

    const-string v3, "CONFIG_STATUS_BAR_BACKGROUND"

    const-string v4, "setup_compat_status_bar_background"

    invoke-direct {v0, v3, v2, v4, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_STATUS_BAR_BACKGROUND:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->BOOL:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const/4 v3, 0x1

    const-string v4, "CONFIG_LIGHT_STATUS_BAR"

    const-string v5, "setup_compat_light_status_bar"

    invoke-direct {v0, v4, v3, v5, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LIGHT_STATUS_BAR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const/4 v4, 0x2

    const-string v5, "CONFIG_NAVIGATION_BAR_BG_COLOR"

    const-string v6, "setup_compat_navigation_bar_bg_color"

    invoke-direct {v0, v5, v4, v6, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_NAVIGATION_BAR_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const/4 v5, 0x3

    const-string v6, "CONFIG_FOOTER_BAR_BG_COLOR"

    const-string v7, "setup_compat_footer_bar_bg_color"

    invoke-direct {v0, v6, v5, v7, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BAR_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->BOOL:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const/4 v6, 0x4

    const-string v7, "CONFIG_LIGHT_NAVIGATION_BAR"

    const-string v8, "setup_compat_light_navigation_bar"

    invoke-direct {v0, v7, v6, v8, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LIGHT_NAVIGATION_BAR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->STRING:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const/4 v7, 0x5

    const-string v8, "CONFIG_FOOTER_BUTTON_FONT_FAMILY"

    const-string v9, "setup_compat_footer_button_font_family"

    invoke-direct {v0, v8, v7, v9, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->DRAWABLE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const/4 v8, 0x6

    const-string v9, "CONFIG_FOOTER_BUTTON_ICON_ADD_ANOTHER"

    const-string v10, "setup_compat_footer_button_icon_add_another"

    invoke-direct {v0, v9, v8, v10, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_ADD_ANOTHER:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->DRAWABLE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const/4 v9, 0x7

    const-string v10, "CONFIG_FOOTER_BUTTON_ICON_CANCEL"

    const-string v11, "setup_compat_footer_button_icon_cancel"

    invoke-direct {v0, v10, v9, v11, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_CANCEL:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->DRAWABLE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const/16 v10, 0x8

    const-string v11, "CONFIG_FOOTER_BUTTON_ICON_CLEAR"

    const-string v12, "setup_compat_footer_button_icon_clear"

    invoke-direct {v0, v11, v10, v12, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_CLEAR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->DRAWABLE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const/16 v11, 0x9

    const-string v12, "CONFIG_FOOTER_BUTTON_ICON_DONE"

    const-string v13, "setup_compat_footer_button_icon_done"

    invoke-direct {v0, v12, v11, v13, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_DONE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->DRAWABLE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const/16 v12, 0xa

    const-string v13, "CONFIG_FOOTER_BUTTON_ICON_NEXT"

    const-string v14, "setup_compat_footer_button_icon_next"

    invoke-direct {v0, v13, v12, v14, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_NEXT:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->DRAWABLE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const/16 v13, 0xb

    const-string v14, "CONFIG_FOOTER_BUTTON_ICON_OPT_IN"

    const-string v15, "setup_compat_footer_button_icon_opt_in"

    invoke-direct {v0, v14, v13, v15, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_OPT_IN:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->DRAWABLE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const/16 v14, 0xc

    const-string v15, "CONFIG_FOOTER_BUTTON_ICON_SKIP"

    const-string v13, "setup_compat_footer_button_icon_skip"

    invoke-direct {v0, v15, v14, v13, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_SKIP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->DRAWABLE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const/16 v13, 0xd

    const-string v15, "CONFIG_FOOTER_BUTTON_ICON_STOP"

    const-string v14, "setup_compat_footer_button_icon_stop"

    invoke-direct {v0, v15, v13, v14, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_STOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->DIMENSION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const/16 v14, 0xe

    const-string v15, "CONFIG_FOOTER_BUTTON_PADDING_TOP"

    const-string v13, "setup_compat_footer_button_padding_top"

    invoke-direct {v0, v15, v14, v13, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_PADDING_TOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->DIMENSION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v13, "CONFIG_FOOTER_BUTTON_PADDING_BOTTOM"

    const/16 v15, 0xf

    const-string v14, "setup_compat_footer_button_padding_bottom"

    invoke-direct {v0, v13, v15, v14, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_PADDING_BOTTOM:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->DIMENSION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v13, "CONFIG_FOOTER_BUTTON_RADIUS"

    const/16 v14, 0x10

    const-string v15, "setup_compat_footer_button_radius"

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_RADIUS:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->FRACTION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v13, "CONFIG_FOOTER_BUTTON_RIPPLE_COLOR_ALPHA"

    const/16 v14, 0x11

    const-string v15, "setup_compat_footer_button_ripple_alpha"

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_RIPPLE_COLOR_ALPHA:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->DIMENSION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v13, "CONFIG_FOOTER_BUTTON_TEXT_SIZE"

    const/16 v14, 0x12

    const-string v15, "setup_compat_footer_button_text_size"

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v13, "CONFIG_FOOTER_PRIMARY_BUTTON_BG_COLOR"

    const/16 v14, 0x13

    const-string v15, "setup_compat_footer_primary_button_bg_color"

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v13, "CONFIG_FOOTER_PRIMARY_BUTTON_TEXT_COLOR"

    const/16 v14, 0x14

    const-string v15, "setup_compat_footer_primary_button_text_color"

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v13, "CONFIG_FOOTER_SECONDARY_BUTTON_BG_COLOR"

    const/16 v14, 0x15

    const-string v15, "setup_compat_footer_secondary_button_bg_color"

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_SECONDARY_BUTTON_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v13, "CONFIG_FOOTER_SECONDARY_BUTTON_TEXT_COLOR"

    const/16 v14, 0x16

    const-string v15, "setup_compat_footer_secondary_button_text_color"

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_SECONDARY_BUTTON_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v13, "CONFIG_LAYOUT_BACKGROUND_COLOR"

    const/16 v14, 0x17

    const-string v15, "setup_design_layout_bg_color"

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LAYOUT_BACKGROUND_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v13, "CONFIG_HEADER_TEXT_COLOR"

    const/16 v14, 0x18

    const-string v15, "setup_design_header_text_color"

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->DIMENSION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v13, "CONFIG_HEADER_TEXT_SIZE"

    const/16 v14, 0x19

    const-string v15, "setup_design_header_text_size"

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->STRING:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v13, "CONFIG_HEADER_FONT_FAMILY"

    const/16 v14, 0x1a

    const-string v15, "setup_design_header_font_family"

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->STRING:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v13, "CONFIG_LAYOUT_GRAVITY"

    const/16 v14, 0x1b

    const-string v15, "setup_design_layout_gravity"

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LAYOUT_GRAVITY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v13, "CONFIG_HEADER_AREA_BACKGROUND_COLOR"

    const/16 v14, 0x1c

    const-string v15, "setup_design_header_area_background_color"

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_AREA_BACKGROUND_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->DIMENSION:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v13, "CONFIG_DESCRIPTION_TEXT_SIZE"

    const/16 v14, 0x1d

    const-string v15, "setup_design_description_text_size"

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_DESCRIPTION_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v13, "CONFIG_DESCRIPTION_TEXT_COLOR"

    const/16 v14, 0x1e

    const-string v15, "setup_design_description_text_color"

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_DESCRIPTION_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v13, "CONFIG_DESCRIPTION_LINK_TEXT_COLOR"

    const/16 v14, 0x1f

    const-string v15, "setup_design_description_link_text_color"

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_DESCRIPTION_LINK_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    new-instance v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;->STRING:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    const-string v13, "CONFIG_DESCRIPTION_FONT_FAMILY"

    const/16 v14, 0x20

    const-string v15, "setup_design_description_font_family"

    invoke-direct {v0, v13, v14, v15, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;)V

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_DESCRIPTION_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const/16 v0, 0x21

    new-array v0, v0, [Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_STATUS_BAR_BACKGROUND:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LIGHT_STATUS_BAR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_NAVIGATION_BAR_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BAR_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LIGHT_NAVIGATION_BAR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_ADD_ANOTHER:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    aput-object v1, v0, v8

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_CANCEL:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    aput-object v1, v0, v9

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_CLEAR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    aput-object v1, v0, v10

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_DONE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    aput-object v1, v0, v11

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_NEXT:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    aput-object v1, v0, v12

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_OPT_IN:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_SKIP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_ICON_STOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_PADDING_TOP:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_PADDING_BOTTOM:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_RADIUS:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_RIPPLE_COLOR_ALPHA:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_BUTTON_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const/16 v2, 0x13

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_PRIMARY_BUTTON_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const/16 v2, 0x14

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_SECONDARY_BUTTON_BG_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const/16 v2, 0x15

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_FOOTER_SECONDARY_BUTTON_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const/16 v2, 0x16

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LAYOUT_BACKGROUND_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const/16 v2, 0x17

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const/16 v2, 0x18

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const/16 v2, 0x19

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LAYOUT_GRAVITY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_HEADER_AREA_BACKGROUND_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_DESCRIPTION_TEXT_SIZE:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_DESCRIPTION_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_DESCRIPTION_LINK_TEXT_COLOR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_DESCRIPTION_FONT_FAMILY:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    const/16 v2, 0x20

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->$VALUES:[Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;",
            ")V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->resourceName:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->resourceType:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 1

    const-class v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object v0
.end method

.method public static values()[Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;
    .locals 1

    sget-object v0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->$VALUES:[Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    invoke-virtual {v0}, [Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    return-object v0
.end method


# virtual methods
.method public getResourceName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->resourceName:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceType()Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;
    .locals 1

    iget-object v0, p0, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->resourceType:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig$ResourceType;

    return-object v0
.end method
