.class public Lcom/android/settings/deviceinfo/hardwareinfo/HardwareInfoFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "HardwareInfoFragment.java"


# static fields
.field public static final TAG:Ljava/lang/String; = "HardwareInfo"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "HardwareInfo"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x35e

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f160063

    return v0
.end method
