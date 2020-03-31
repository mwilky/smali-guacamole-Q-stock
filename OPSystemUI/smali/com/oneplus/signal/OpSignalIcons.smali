.class public Lcom/oneplus/signal/OpSignalIcons;
.super Ljava/lang/Object;
.source "OpSignalIcons.java"


# static fields
.field public static final FOUR_G_LTE:I

.field public static final FOUR_G_PLUS_LTE:I

.field public static final HD:I

.field public static final HD_ICONS:[I

.field public static final HD_UNAVAILABLE:I

.field public static final VOLTE:I

.field public static final VOLTE_ICONS:[I

.field public static final VOWIFI:I

.field public static final VOWIFI_ICONS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_volte:I

    sput v0, Lcom/oneplus/signal/OpSignalIcons;->VOLTE:I

    const/4 v0, 0x3

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_volte_slot1:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_volte_slot2:I

    const/4 v4, 0x1

    aput v2, v1, v4

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_volte_slot12:I

    const/4 v5, 0x2

    aput v2, v1, v5

    sput-object v1, Lcom/oneplus/signal/OpSignalIcons;->VOLTE_ICONS:[I

    sget v1, Lcom/android/systemui/R$drawable;->stat_sys_vowifi:I

    sput v1, Lcom/oneplus/signal/OpSignalIcons;->VOWIFI:I

    new-array v1, v0, [I

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_vowifi_slot1:I

    aput v2, v1, v3

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_vowifi_slot2:I

    aput v2, v1, v4

    sget v2, Lcom/android/systemui/R$drawable;->stat_sys_vowifi_slot12:I

    aput v2, v1, v5

    sput-object v1, Lcom/oneplus/signal/OpSignalIcons;->VOWIFI_ICONS:[I

    sget v1, Lcom/android/systemui/R$drawable;->stat_sys_hd:I

    sput v1, Lcom/oneplus/signal/OpSignalIcons;->HD:I

    new-array v0, v0, [I

    sget v1, Lcom/android/systemui/R$drawable;->stat_sys_hd_slot1:I

    aput v1, v0, v3

    sget v1, Lcom/android/systemui/R$drawable;->stat_sys_hd_slot2:I

    aput v1, v0, v4

    sget v1, Lcom/android/systemui/R$drawable;->stat_sys_hd_slot12:I

    aput v1, v0, v5

    sput-object v0, Lcom/oneplus/signal/OpSignalIcons;->HD_ICONS:[I

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_hd_unavailable:I

    sput v0, Lcom/oneplus/signal/OpSignalIcons;->HD_UNAVAILABLE:I

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_4g_lte:I

    sput v0, Lcom/oneplus/signal/OpSignalIcons;->FOUR_G_LTE:I

    sget v0, Lcom/android/systemui/R$drawable;->stat_sys_data_fully_connected_4g_plus_lte:I

    sput v0, Lcom/oneplus/signal/OpSignalIcons;->FOUR_G_PLUS_LTE:I

    return-void
.end method
