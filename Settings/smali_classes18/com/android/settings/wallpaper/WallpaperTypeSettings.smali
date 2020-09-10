.class public Lcom/android/settings/wallpaper/WallpaperTypeSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "WallpaperTypeSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WallpaperTypeSettings"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    const v0, 0x7f1207ef

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    const-string v0, "WallpaperTypeSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x65

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    const v0, 0x7f16010a

    return v0
.end method
