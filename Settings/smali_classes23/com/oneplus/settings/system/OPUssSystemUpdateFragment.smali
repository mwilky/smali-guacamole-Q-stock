.class public Lcom/oneplus/settings/system/OPUssSystemUpdateFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "OPUssSystemUpdateFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "OPUssSystemUpdateFragment"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    const v0, 0x7f12081d

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "OPUssSystemUpdateFragment"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x57

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f16008b

    return v0
.end method
