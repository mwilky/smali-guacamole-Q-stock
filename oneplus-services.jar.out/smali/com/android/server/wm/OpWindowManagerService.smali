.class public Lcom/android/server/wm/OpWindowManagerService;
.super Landroid/view/IOpWindowManager$Stub;
.source ""

# interfaces
.implements Lcom/android/server/wm/IOpWindowManagerService;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/OpWindowManagerService$zta;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final OP_WM_SERVICE:Ljava/lang/String; = "oneplus_windowmanagerservice"

.field private static final TAG:Ljava/lang/String; = "OpWindowManagerService"

.field public static final TRANSIT_ACTIVITY_HOME_TYPE_ROTATION:I = -0x2

.field private static final WINDOW_MANAGER_CONFIG_NAME:Ljava/lang/String; = "Window_Manager_Config"

.field private static sConfigock:Ljava/lang/Object;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mWindowManagerConfigObserver:Lcom/oneplus/config/ConfigObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/wm/OpWindowManagerService;->DEBUG:Z

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/wm/OpWindowManagerService;->sConfigock:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/view/IOpWindowManager$Stub;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/OpWindowManagerService;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpWindowManagerService;->resolveWindowManagerConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method private isActivityTypeHomeOrRecents(Lcom/android/server/wm/WindowState;)Z
    .locals 7

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    const-string v0, "OpWindowManagerService"

    const/4 v1, 0x0

    if-eqz p0, :cond_6

    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/wm/WindowState;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget-object p0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Landroid/app/WindowConfiguration;->getActivityType()I

    move-result p0

    const/4 v2, 0x3

    const/4 v3, 0x2

    if-eq p0, v3, :cond_2

    if-ne p0, v2, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    sget-boolean v4, Lcom/android/server/wm/OpWindowManagerService;->DEBUG:Z

    const/4 v5, 0x1

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isActivityTypeHomeOrRecents(): currentFocus = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", isActivityTypeHome="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p0, v3, :cond_3

    move p1, v5

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_1
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", isActivityTypeRecents="

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-ne p0, v2, :cond_4

    move v1, v5

    :cond_4
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v5

    :cond_6
    :goto_2
    const-string p0, "isActivityTypeHomeOrRecents(): null configuration, can\'t check ActivityType"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private resolveWindowManagerConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 9

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string p0, "OpWindowManagerService"

    const-string v0, "[OnlineConfig] update config start"

    invoke-static {p0, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_5

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "op_force_not_size_compat_app_config"

    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    move v4, v0

    :goto_1
    if-ge v4, v3, :cond_4

    invoke-virtual {v2, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v6, Lcom/android/server/wm/OpWindowManagerService;->DEBUG:Z

    if-eqz v6, :cond_1

    const-string v6, "OpWindowManagerService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "add force not size compat app pkg:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    const-string v3, "op_snapshot_scale_fraction_config"

    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-lez v3, :cond_4

    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v2, v3

    if-gtz v3, :cond_4

    sput v2, Lcom/android/server/wm/OpWindowManagerServiceInjector;->sOpSnapshotScaleFraction:F

    sget-boolean v3, Lcom/android/server/wm/OpWindowManagerService;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "OpWindowManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "update sOpSnapshotScaleFraction to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_3
    const-string v3, "op_snapshot_mismatch_time_config"

    const-string v4, "name"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-ltz v4, :cond_4

    sput-wide v2, Lcom/android/server/wm/TaskSnapshotSurface;->SIZE_MISMATCH_MINIMUM_TIME_MS:J

    sget-boolean v4, Lcom/android/server/wm/OpWindowManagerService;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "OpWindowManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "update SIZE_MISMATCH_MINIMUM_TIME_MS to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_5
    sget-object p1, Lcom/android/server/wm/OpWindowManagerService;->sConfigock:Ljava/lang/Object;

    monitor-enter p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_6

    sput-object p0, Lcom/android/server/wm/OpWindowManagerServiceInjector;->sForceNotSizeCompatList:Ljava/util/List;

    :cond_6
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    const-string p0, "OpWindowManagerService"

    const-string p1, "[OnlineConfig] update config complete"

    invoke-static {p0, p1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catchall_0
    move-exception p0

    :try_start_3
    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw p0
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] WindowManagerConfigUpdater, error message:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    goto :goto_3

    :catch_1
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "[OnlineConfig] WindowManagerConfigUpdater, error message:"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p0

    :goto_3
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpWindowManagerService"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    return-void
.end method


# virtual methods
.method public addAppLockerPassedPackage(Ljava/lang/String;)V
    .locals 1

    sget-boolean p0, Lcom/android/server/wm/OpWindowManagerService;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addAppLockerPassedPackage(): packageName="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpWindowManagerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/OpAppLockerInjector;->addAppLockerPassedPackage(Ljava/lang/String;)V

    return-void
.end method

.method public bootComplete(Landroid/content/Context;)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/wm/OpWindowManagerService;->mContext:Landroid/content/Context;

    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/server/wm/OpWindowManagerService;->mHandler:Landroid/os/Handler;

    iget-object p1, p0, Lcom/android/server/wm/OpWindowManagerService;->mWindowManagerConfigObserver:Lcom/oneplus/config/ConfigObserver;

    const-string v0, "Window_Manager_Config"

    if-nez p1, :cond_0

    new-instance p1, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/wm/OpWindowManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/OpWindowManagerService;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/wm/OpWindowManagerService$zta;

    invoke-direct {v3, p0}, Lcom/android/server/wm/OpWindowManagerService$zta;-><init>(Lcom/android/server/wm/OpWindowManagerService;)V

    invoke-direct {p1, v1, v2, v3, v0}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/server/wm/OpWindowManagerService;->mWindowManagerConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object p1, p0, Lcom/android/server/wm/OpWindowManagerService;->mWindowManagerConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigObserver;->register()V

    :cond_0
    new-instance p1, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/wm/OpWindowManagerService;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1, v0}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/server/wm/OpWindowManagerService;->resolveWindowManagerConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method public createScreenRotationAnimation(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;I)Lcom/android/server/wm/IScreenRotationAnimation;
    .locals 8

    const-string v0, "OpWindowManagerService"

    packed-switch p3, :pswitch_data_0

    :pswitch_0
    iget-object p3, p2, Lcom/android/server/wm/DisplayContent;->mCurrentFocus:Lcom/android/server/wm/WindowState;

    if-eqz p3, :cond_2

    invoke-direct {p0, p3}, Lcom/android/server/wm/OpWindowManagerService;->isActivityTypeHomeOrRecents(Lcom/android/server/wm/WindowState;)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-boolean p0, Lcom/android/server/wm/OpWindowManagerService;->DEBUG:Z

    if-eqz p0, :cond_1

    const-string p0, "createScreenRotationAnimation(): override screen rotation animation for special case that landscape recents back to launcher"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_1
    sget-boolean p0, Lcom/android/server/wm/OpWindowManagerService;->DEBUG:Z

    if-eqz p0, :cond_0

    const-string p0, "createScreenRotationAnimation(): override screen rotation animation for apps switch between landscape and portrait"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance p0, Lcom/android/server/wm/qbh;

    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v4

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->hasSecureWindowOnScreen()Z

    move-result v5

    move-object v1, p0

    move-object v3, p2

    move-object v6, p1

    move v7, p3

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/qbh;-><init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;ZZLcom/android/server/wm/WindowManagerService;I)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance p0, Lcom/android/server/wm/qbh;

    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v4

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->hasSecureWindowOnScreen()Z

    move-result v5

    const/4 v7, -0x2

    move-object v1, p0

    move-object v3, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/qbh;-><init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;ZZLcom/android/server/wm/WindowManagerService;I)V

    goto :goto_1

    :cond_2
    sget-boolean p0, Lcom/android/server/wm/OpWindowManagerService;->DEBUG:Z

    if-eqz p0, :cond_3

    const-string p0, "createScreenRotationAnimation(): new default screen rotation animation"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    new-instance p0, Lcom/android/server/wm/ScreenRotationAnimation;

    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayRotation()Lcom/android/server/wm/DisplayRotation;

    move-result-object p3

    invoke-virtual {p3}, Lcom/android/server/wm/DisplayRotation;->isFixedToUserRotation()Z

    move-result v4

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->hasSecureWindowOnScreen()Z

    move-result v5

    move-object v1, p0

    move-object v3, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/server/wm/ScreenRotationAnimation;-><init>(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;ZZLcom/android/server/wm/WindowManagerService;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/android/server/wm/OpActivityStarterInjector;->setSourceIntent(Landroid/content/Intent;)V

    const/4 p1, 0x0

    invoke-static {p1}, Lcom/android/server/wm/ActivityTaskManagerServiceInjector;->setStartActivityFromRecents(Z)V

    :goto_1
    return-object p0

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public exitQuickReply()V
    .locals 0

    invoke-static {}, Lcom/android/server/wm/OpQuickReplyInjector;->exitQuickReply()V

    return-void
.end method

.method public forceDark(Landroid/content/Context;I)I
    .locals 0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->uiMode:I

    const/16 p1, 0x8

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    and-int/lit16 p0, p2, -0x2001

    return p0

    :cond_1
    return p2
.end method

.method public getQuickReplyList(I)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/server/wm/OpQuickReplyInjector;->getQuickReplyList(I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public isKeyguardDone()Z
    .locals 1

    sget-boolean p0, Lcom/android/server/wm/OpWindowManagerService;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isKeyguardDone = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/wm/OpAppLockerInjector;->isKeyguardDone()Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpWindowManagerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/wm/OpAppLockerInjector;->isKeyguardDone()Z

    move-result p0

    return p0
.end method

.method public isPackageInPassedList(Ljava/lang/String;)Z
    .locals 1

    sget-boolean p0, Lcom/android/server/wm/OpWindowManagerService;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isPackageInPassedList = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/wm/OpAppLockerInjector;->isPackageInPassedList(Ljava/lang/String;)Z

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpWindowManagerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Lcom/android/server/wm/OpAppLockerInjector;->isPackageInPassedList(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public needToAddNameForToast(Ljava/lang/String;)Z
    .locals 5

    sget-boolean p0, Lcom/android/server/wm/OpWindowManagerService;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "needToAddNameForToast(): packageName="

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpWindowManagerService"

    invoke-static {v0, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 p0, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/app/IActivityTaskManager;->getFocusedStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    iget-object v4, v2, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_1

    if-eqz p1, :cond_1

    iget-object v2, v2, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez p1, :cond_1

    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v3

    :cond_1
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->getInstance()Lcom/android/server/wm/WindowManagerService;

    move-result-object p1

    if-nez p1, :cond_2

    const-string p1, "OpWindowManagerService"

    const-string v0, "Can\'t get WMS. Do nothing."

    invoke-static {p1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    :cond_2
    const-class v0, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowManagerInternal;

    if-eqz v0, :cond_5

    invoke-virtual {p1}, Lcom/android/server/wm/WindowManagerService;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object p1

    monitor-enter p1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    const/4 v1, 0x2

    :try_start_3
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisibleLw(I)Z

    move-result v1

    if-eqz v1, :cond_3

    monitor-exit p1

    return v3

    :cond_3
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisibleLw(I)Z

    move-result v0

    if-eqz v0, :cond_4

    monitor-exit p1

    return v3

    :cond_4
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    :catchall_1
    move-exception p1

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw p1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception while checking window status: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpWindowManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_0
    return p0
.end method

.method public publish(Landroid/content/Context;)V
    .locals 2

    sget-boolean v0, Lcom/android/server/wm/OpWindowManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "publish context="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "OpWindowManagerService"

    invoke-static {v0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Landroid/view/IOpWindowManager$Stub;->asBinder()Landroid/os/IBinder;

    move-result-object p0

    const-string p1, "oneplus_windowmanagerservice"

    invoke-static {p1, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method public stopFreezingDisplayLocked(Lcom/android/server/wm/DisplayContent;)V
    .locals 1

    iget-object p0, p1, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const-string p1, "OpWindowManagerService"

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->getLastRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/wm/AppTransition;->getLastRemoteAnimationController()Lcom/android/server/wm/RemoteAnimationController;

    move-result-object p0

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/server/wm/RemoteAnimationController;->goodToGoWhenStopFreezing(Z)V

    goto :goto_1

    :cond_0
    const-string p0, "stopFreezingDisplayLocked(): lastRemoteAnimationController=null"

    goto :goto_0

    :cond_1
    const-string p0, "stopFreezingDisplayLocked(): mAppTransition=null"

    :goto_0
    invoke-static {p1, p0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method
