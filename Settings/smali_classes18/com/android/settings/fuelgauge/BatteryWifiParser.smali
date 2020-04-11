.class public Lcom/android/settings/fuelgauge/BatteryWifiParser;
.super Lcom/android/settings/fuelgauge/BatteryFlagParser;
.source "BatteryWifiParser.java"


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Lcom/android/settings/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    return-void
.end method


# virtual methods
.method protected isSet(Landroid/os/BatteryStats$HistoryItem;)Z
    .locals 4

    iget v0, p1, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x0

    shr-int/2addr v0, v1

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 v3, 0x3

    if-eq v0, v3, :cond_0

    const/16 v3, 0xb

    if-eq v0, v3, :cond_0

    const/16 v3, 0xc

    if-eq v0, v3, :cond_0

    return v2

    :cond_0
    return v1
.end method
