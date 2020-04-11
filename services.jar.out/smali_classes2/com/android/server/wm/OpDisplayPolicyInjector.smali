.class public Lcom/android/server/wm/OpDisplayPolicyInjector;
.super Ljava/lang/Object;
.source "OpDisplayPolicyInjector.java"


# static fields
.field private static final EXTRA_FOCUS_WINDOW:Ljava/lang/String; = "focusWindow"

.field private static final EXTRA_LONGSHOT:Ljava/lang/String; = "longshot"

.field private static final TAG:Ljava/lang/String; = "DisplayPolicyInjector"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 3

    nop

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "device_provisioned"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isHomeApp(Lcom/android/server/wm/WindowState;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getStack()Lcom/android/server/wm/TaskStack;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getActivityType()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x2

    if-eq v1, v2, :cond_1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    :cond_1
    const/4 v0, 0x1

    :cond_2
    return v0
.end method

.method public static isNeedToHideNavBar(ZLcom/android/server/wm/WindowState;Z)Z
    .locals 2

    if-nez p1, :cond_0

    return p0

    :cond_0
    if-eqz p0, :cond_2

    if-nez p2, :cond_2

    invoke-static {p1}, Lcom/android/server/wm/OpDisplayPolicyInjector;->isHomeApp(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p1}, Lcom/android/server/wm/OpDisplayPolicyInjector;->isSystemUI(Lcom/android/server/wm/WindowState;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->mAppCompat:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSystemUI(Lcom/android/server/wm/WindowState;)Z
    .locals 2

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.android.systemui"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static stopLongshotConnection(Lcom/android/internal/util/ScreenshotHelper;Lcom/android/server/wm/WindowState;)V
    .locals 1

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/util/ScreenshotHelper;->getScreenshotHelperInjector()Lcom/android/internal/util/ScreenshotHelperInjector;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/util/ScreenshotHelperInjector;->stopLongshotConnection()V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->longshotStop()V

    :cond_0
    return-void
.end method

.method public static takeScreenshot(Lcom/android/server/wm/WindowState;Landroid/content/Context;ZLcom/android/internal/util/ScreenshotHelper;ZIZZLandroid/os/Handler;I)V
    .locals 14

    move-object v0, p1

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->inMultiWindowMode()Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move/from16 v3, p2

    const/4 v4, 0x2

    move/from16 v12, p9

    if-eq v12, v4, :cond_3

    if-eqz p4, :cond_3

    invoke-static {p1}, Lcom/android/server/wm/OpDisplayPolicyInjector;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_3

    if-eqz v2, :cond_1

    if-eqz v3, :cond_3

    :cond_1
    if-nez p5, :cond_3

    invoke-static {}, Lcom/oneplus/android/server/zenmode/ZenModeInjector;->isZenModeOn()Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v1, 0x0

    :goto_2
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "longshot"

    invoke-virtual {v4, v5, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    if-eqz p0, :cond_4

    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v5

    iget-object v5, v5, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    const-string v6, "focusWindow"

    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/util/ScreenshotHelper;->getScreenshotHelperInjector()Lcom/android/internal/util/ScreenshotHelperInjector;

    move-result-object v13

    if-eqz v13, :cond_5

    move-object v5, v13

    move/from16 v6, p9

    move/from16 v7, p6

    move/from16 v8, p7

    move-object/from16 v9, p8

    move v10, v1

    move-object v11, v4

    invoke-virtual/range {v5 .. v11}, Lcom/android/internal/util/ScreenshotHelperInjector;->takeScreenshot(IZZLandroid/os/Handler;ZLandroid/os/Bundle;)V

    :cond_5
    const-string v5, "vibrator"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    const/16 v6, 0x19

    invoke-static {p1, v5, v6}, Lcom/oneplus/util/VibratorSceneUtils;->doVibrateWithSceneIfNeeded(Landroid/content/Context;Landroid/os/Vibrator;I)Z

    return-void
.end method
