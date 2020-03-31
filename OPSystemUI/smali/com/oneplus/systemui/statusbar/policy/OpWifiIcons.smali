.class public Lcom/oneplus/systemui/statusbar/policy/OpWifiIcons;
.super Ljava/lang/Object;
.source "OpWifiIcons.java"


# static fields
.field public static final OP_QS_WIFI_DISABLED:I

.field public static final OP_QS_WIFI_NO_NETWORK:I

.field public static final OP_QS_WIFI_SIGNAL_STRENGTH:[[I

.field public static final OP_WIFI_NO_NETWORK:I

.field public static final OP_WIFI_SIGNAL_STRENGTH:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x2

    new-array v1, v0, [[I

    const/4 v2, 0x5

    new-array v3, v2, [I

    sget v4, Lcom/android/systemui/R$drawable;->op_stat_sys_wifi_signal_0:I

    const/4 v5, 0x0

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->op_stat_sys_wifi_signal_1:I

    const/4 v6, 0x1

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->op_stat_sys_wifi_signal_2:I

    aput v4, v3, v0

    sget v4, Lcom/android/systemui/R$drawable;->op_stat_sys_wifi_signal_3:I

    const/4 v7, 0x3

    aput v4, v3, v7

    sget v4, Lcom/android/systemui/R$drawable;->op_stat_sys_wifi_signal_4:I

    const/4 v8, 0x4

    aput v4, v3, v8

    aput-object v3, v1, v5

    new-array v3, v2, [I

    sget v4, Lcom/android/systemui/R$drawable;->op_stat_sys_wifi_signal_0_fully:I

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->op_stat_sys_wifi_signal_1_fully:I

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->op_stat_sys_wifi_signal_2_fully:I

    aput v4, v3, v0

    sget v4, Lcom/android/systemui/R$drawable;->op_stat_sys_wifi_signal_3_fully:I

    aput v4, v3, v7

    sget v4, Lcom/android/systemui/R$drawable;->op_stat_sys_wifi_signal_4_fully:I

    aput v4, v3, v8

    aput-object v3, v1, v6

    sput-object v1, Lcom/oneplus/systemui/statusbar/policy/OpWifiIcons;->OP_WIFI_SIGNAL_STRENGTH:[[I

    new-array v1, v0, [[I

    new-array v3, v2, [I

    sget v4, Lcom/android/systemui/R$drawable;->op_ic_qs_wifi_0:I

    aput v4, v3, v5

    sget v4, Lcom/android/systemui/R$drawable;->op_ic_qs_wifi_1:I

    aput v4, v3, v6

    sget v4, Lcom/android/systemui/R$drawable;->op_ic_qs_wifi_2:I

    aput v4, v3, v0

    sget v4, Lcom/android/systemui/R$drawable;->op_ic_qs_wifi_3:I

    aput v4, v3, v7

    sget v4, Lcom/android/systemui/R$drawable;->op_ic_qs_wifi_4:I

    aput v4, v3, v8

    aput-object v3, v1, v5

    new-array v2, v2, [I

    sget v3, Lcom/android/systemui/R$drawable;->op_ic_qs_wifi_full_0:I

    aput v3, v2, v5

    sget v3, Lcom/android/systemui/R$drawable;->op_ic_qs_wifi_full_1:I

    aput v3, v2, v6

    sget v3, Lcom/android/systemui/R$drawable;->op_ic_qs_wifi_full_2:I

    aput v3, v2, v0

    sget v0, Lcom/android/systemui/R$drawable;->op_ic_qs_wifi_full_3:I

    aput v0, v2, v7

    sget v0, Lcom/android/systemui/R$drawable;->op_ic_qs_wifi_full_4:I

    aput v0, v2, v8

    aput-object v2, v1, v6

    sput-object v1, Lcom/oneplus/systemui/statusbar/policy/OpWifiIcons;->OP_QS_WIFI_SIGNAL_STRENGTH:[[I

    sget v0, Lcom/android/systemui/R$drawable;->op_ic_qs_wifi_disabled:I

    sput v0, Lcom/oneplus/systemui/statusbar/policy/OpWifiIcons;->OP_QS_WIFI_DISABLED:I

    sget v0, Lcom/android/systemui/R$drawable;->op_ic_qs_wifi_no_network:I

    sput v0, Lcom/oneplus/systemui/statusbar/policy/OpWifiIcons;->OP_QS_WIFI_NO_NETWORK:I

    sget v0, Lcom/android/systemui/R$drawable;->op_stat_sys_wifi_signal_0:I

    sput v0, Lcom/oneplus/systemui/statusbar/policy/OpWifiIcons;->OP_WIFI_NO_NETWORK:I

    return-void
.end method
