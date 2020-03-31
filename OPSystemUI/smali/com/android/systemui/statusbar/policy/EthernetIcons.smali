.class Lcom/android/systemui/statusbar/policy/EthernetIcons;
.super Ljava/lang/Object;
.source "EthernetIcons.java"


# static fields
.field static final ETHERNET_ICONS:[[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x2

    new-array v0, v0, [[I

    const/4 v1, 0x1

    new-array v2, v1, [I

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_ethernet:I

    const/4 v4, 0x0

    aput v3, v2, v4

    aput-object v2, v0, v4

    new-array v2, v1, [I

    sget v3, Lcom/android/systemui/R$drawable;->stat_sys_ethernet_fully:I

    aput v3, v2, v4

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/systemui/statusbar/policy/EthernetIcons;->ETHERNET_ICONS:[[I

    return-void
.end method
