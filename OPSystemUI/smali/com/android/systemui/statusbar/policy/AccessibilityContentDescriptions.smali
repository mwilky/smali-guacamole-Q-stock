.class public Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;
.super Ljava/lang/Object;
.source "AccessibilityContentDescriptions.java"


# static fields
.field static final DATA_CONNECTION_STRENGTH:[I

.field static final ETHERNET_CONNECTION_VALUES:[I

.field static final PHONE_SIGNAL_STRENGTH:[I

.field static final PHONE_SIGNAL_STRENGTH_FIVE_BAR:[I

.field static final PHONE_SIGNAL_STRENGTH_FOUR_BAR:[I

.field static final WIFI_CONNECTION_STRENGTH:[I

.field static final WIFI_NO_CONNECTION:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v0, 0x5

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$string;->accessibility_no_phone:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$string;->accessibility_phone_one_bar:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lcom/android/systemui/R$string;->accessibility_phone_two_bars:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sget v2, Lcom/android/systemui/R$string;->accessibility_phone_three_bars:I

    const/4 v6, 0x3

    aput v2, v1, v6

    sget v2, Lcom/android/systemui/R$string;->accessibility_phone_signal_full:I

    const/4 v7, 0x4

    aput v2, v1, v7

    sput-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH_FOUR_BAR:[I

    const/4 v1, 0x6

    new-array v1, v1, [I

    sget v2, Lcom/android/systemui/R$string;->accessibility_no_phone:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$string;->accessibility_phone_one_bar:I

    aput v2, v1, v4

    sget v2, Lcom/android/systemui/R$string;->accessibility_phone_two_bars:I

    aput v2, v1, v5

    sget v2, Lcom/android/systemui/R$string;->accessibility_phone_three_bars:I

    aput v2, v1, v6

    sget v2, Lcom/android/systemui/R$string;->accessibility_phone_four_bars:I

    aput v2, v1, v7

    sget v2, Lcom/android/systemui/R$string;->accessibility_phone_signal_full:I

    aput v2, v1, v0

    sput-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH_FIVE_BAR:[I

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportFiveBar()Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH_FIVE_BAR:[I

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH_FOUR_BAR:[I

    :goto_0
    sput-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->PHONE_SIGNAL_STRENGTH:[I

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$string;->accessibility_no_data:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$string;->accessibility_data_one_bar:I

    aput v2, v1, v4

    sget v2, Lcom/android/systemui/R$string;->accessibility_data_two_bars:I

    aput v2, v1, v5

    sget v2, Lcom/android/systemui/R$string;->accessibility_data_three_bars:I

    aput v2, v1, v6

    sget v2, Lcom/android/systemui/R$string;->accessibility_data_signal_full:I

    aput v2, v1, v7

    sput-object v1, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->DATA_CONNECTION_STRENGTH:[I

    new-array v0, v0, [I

    sget v1, Lcom/android/systemui/R$string;->accessibility_no_wifi:I

    aput v1, v0, v3

    sget v1, Lcom/android/systemui/R$string;->accessibility_wifi_one_bar:I

    aput v1, v0, v4

    sget v1, Lcom/android/systemui/R$string;->accessibility_wifi_two_bars:I

    aput v1, v0, v5

    sget v1, Lcom/android/systemui/R$string;->accessibility_wifi_three_bars:I

    aput v1, v0, v6

    sget v1, Lcom/android/systemui/R$string;->accessibility_wifi_signal_full:I

    aput v1, v0, v7

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_CONNECTION_STRENGTH:[I

    sget v0, Lcom/android/systemui/R$string;->accessibility_no_wifi:I

    sput v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->WIFI_NO_CONNECTION:I

    new-array v0, v5, [I

    sget v1, Lcom/android/systemui/R$string;->accessibility_ethernet_disconnected:I

    aput v1, v0, v3

    sget v1, Lcom/android/systemui/R$string;->accessibility_ethernet_connected:I

    aput v1, v0, v4

    sput-object v0, Lcom/android/systemui/statusbar/policy/AccessibilityContentDescriptions;->ETHERNET_CONNECTION_VALUES:[I

    return-void
.end method
