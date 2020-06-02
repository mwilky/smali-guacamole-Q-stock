.class public Lcom/android/settings/wifi/calling/EmergencyCallLimitationDisclaimer;
.super Lcom/android/settings/wifi/calling/DisclaimerItem;
.source "EmergencyCallLimitationDisclaimer.java"


# static fields
.field private static final DISCLAIMER_ITEM_NAME:Ljava/lang/String; = "EmergencyCallLimitationDisclaimer"

.field static final KEY_HAS_AGREED_EMERGENCY_LIMITATION_DISCLAIMER:Ljava/lang/String; = "key_has_agreed_emergency_limitation_disclaimer"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final UNINITIALIZED_DELAY_VALUE:I = -0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/calling/DisclaimerItem;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected getMessageId()I
    .locals 1

    const v0, 0x7f121770

    return v0
.end method

.method protected getName()Ljava/lang/String;
    .locals 1

    const-string v0, "EmergencyCallLimitationDisclaimer"

    return-object v0
.end method

.method protected getPrefKey()Ljava/lang/String;
    .locals 1

    const-string v0, "key_has_agreed_emergency_limitation_disclaimer"

    return-object v0
.end method

.method protected getTitleId()I
    .locals 1

    const v0, 0x7f121771

    return v0
.end method

.method shouldShow()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/EmergencyCallLimitationDisclaimer;->getCarrierConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v1, "emergency_notification_delay_int"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const-string v1, "shouldShow: false due to carrier config is default(-1)."

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/calling/EmergencyCallLimitationDisclaimer;->logd(Ljava/lang/String;)V

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-super {p0}, Lcom/android/settings/wifi/calling/DisclaimerItem;->shouldShow()Z

    move-result v1

    return v1
.end method
