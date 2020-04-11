.class public Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;
.super Lcom/android/settings/development/OverlayCategoryPreferenceController;
.source "EmulateDisplayCutoutPreferenceController.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "display_cutout_emulation"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "overlay"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/content/om/IOverlayManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/om/IOverlayManager;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/development/EmulateDisplayCutoutPreferenceController;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/om/IOverlayManager;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/om/IOverlayManager;)V
    .locals 1
    .annotation build Landroidx/annotation/VisibleForTesting;
    .end annotation

    const-string v0, "com.android.internal.display_cutout_emulation"

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/development/OverlayCategoryPreferenceController;-><init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/om/IOverlayManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "display_cutout_emulation"

    return-object v0
.end method
