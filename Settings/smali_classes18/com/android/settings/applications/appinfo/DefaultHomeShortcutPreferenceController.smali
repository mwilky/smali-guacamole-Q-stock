.class public Lcom/android/settings/applications/appinfo/DefaultHomeShortcutPreferenceController;
.super Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;
.source "DefaultHomeShortcutPreferenceController.java"


# static fields
.field private static final KEY:Ljava/lang/String; = "default_home"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    const-string v0, "default_home"

    const-string v1, "android.app.role.HOME"

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
