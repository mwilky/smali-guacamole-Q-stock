.class public Lcom/oneplus/settings/utils/AppTrackerHelper;
.super Ljava/lang/Object;
.source "AppTrackerHelper.java"


# static fields
.field public static final APPTRACKER_ID:Ljava/lang/String; = "YLTI9SVG4L"

.field private static mAppTrackerClass:Ljava/lang/Object;

.field private static mLock:Ljava/lang/Object;

.field private static sInstance:Lcom/oneplus/settings/utils/AppTrackerHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/oneplus/settings/utils/AppTrackerHelper;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/oneplus/settings/utils/AppTrackerHelper;
    .locals 2

    sget-object v0, Lcom/oneplus/settings/utils/AppTrackerHelper;->sInstance:Lcom/oneplus/settings/utils/AppTrackerHelper;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/settings/utils/AppTrackerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oneplus/settings/utils/AppTrackerHelper;->sInstance:Lcom/oneplus/settings/utils/AppTrackerHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oneplus/settings/utils/AppTrackerHelper;

    invoke-direct {v1}, Lcom/oneplus/settings/utils/AppTrackerHelper;-><init>()V

    sput-object v1, Lcom/oneplus/settings/utils/AppTrackerHelper;->sInstance:Lcom/oneplus/settings/utils/AppTrackerHelper;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/oneplus/settings/utils/AppTrackerHelper;->sInstance:Lcom/oneplus/settings/utils/AppTrackerHelper;

    return-object v0
.end method

.method private static isAllowSendAppTracker(Landroid/content/Context;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_join_user_plan_settings"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    move v0, v2

    :cond_1
    return v0
.end method

.method static synthetic lambda$putAnalytics$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    const-string v1, "YLTI9SVG4L"

    invoke-static {v0, v1, p0, p1, p2}, Lcom/oneplus/settings/utils/AppTrackerHelper;->sendAppTracker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$putAnalytics$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0, p0, p1, p2, p3}, Lcom/oneplus/settings/utils/AppTrackerHelper;->sendAppTracker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static sendAppTracker(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 15

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/16 v7, 0x1d

    if-lt v0, v7, :cond_3

    sget-object v0, Lcom/oneplus/settings/utils/AppTrackerHelper;->mAppTrackerClass:Ljava/lang/Object;

    const-string v7, "AppTrackerUtil"

    if-nez v0, :cond_1

    :try_start_0
    const-string v0, "net.oneplus.odm.OpDeviceManagerInjector"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v8, "getInstance"

    new-array v9, v5, [Ljava/lang/Class;

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    if-eqz v8, :cond_0

    invoke-virtual {v8, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    const/4 v9, 0x0

    new-array v10, v5, [Ljava/lang/Object;

    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    sput-object v9, Lcom/oneplus/settings/utils/AppTrackerHelper;->mAppTrackerClass:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "New instance AppTracker class exception."

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    sget-object v0, Lcom/oneplus/settings/utils/AppTrackerHelper;->mAppTrackerClass:Ljava/lang/Object;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v8, v0

    invoke-interface {v8, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v9, v0

    const-string v0, "appid"

    invoke-interface {v9, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_1
    sget-object v0, Lcom/oneplus/settings/utils/AppTrackerHelper;->mAppTrackerClass:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v10, "preserveAppData"

    const/4 v11, 0x4

    new-array v12, v11, [Ljava/lang/Class;

    const-class v13, Landroid/content/Context;

    aput-object v13, v12, v5

    const-class v13, Ljava/lang/String;

    aput-object v13, v12, v6

    const-class v13, Ljava/util/Map;

    aput-object v13, v12, v4

    const-class v13, Ljava/util/Map;

    const/4 v14, 0x3

    aput-object v13, v12, v14

    invoke-virtual {v0, v10, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v10, Lcom/oneplus/settings/utils/AppTrackerHelper;->mAppTrackerClass:Ljava/lang/Object;

    new-array v11, v11, [Ljava/lang/Object;

    aput-object p0, v11, v5

    aput-object p2, v11, v6

    aput-object v8, v11, v4

    aput-object v9, v11, v14

    invoke-virtual {v0, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_2
    goto :goto_1

    :catch_1
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "invoke method onEvent exception."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_3

    :cond_3
    sget-object v0, Lcom/oneplus/settings/utils/AppTrackerHelper;->mAppTrackerClass:Ljava/lang/Object;

    if-nez v0, :cond_4

    :try_start_2
    const-string v0, "net.oneplus.odm.insight.tracker.AppTracker"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v7, v4, [Ljava/lang/Class;

    const-class v8, Landroid/content/Context;

    aput-object v8, v7, v5

    const-class v8, Ljava/lang/String;

    aput-object v8, v7, v6

    invoke-virtual {v0, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    new-array v8, v4, [Ljava/lang/Object;

    aput-object p0, v8, v5

    aput-object v1, v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    sput-object v8, Lcom/oneplus/settings/utils/AppTrackerHelper;->mAppTrackerClass:Ljava/lang/Object;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_2
    sget-object v0, Lcom/oneplus/settings/utils/AppTrackerHelper;->mAppTrackerClass:Ljava/lang/Object;

    if-eqz v0, :cond_5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    move-object v7, v0

    invoke-interface {v7, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :try_start_3
    sget-object v0, Lcom/oneplus/settings/utils/AppTrackerHelper;->mAppTrackerClass:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-string v8, "onEvent"

    new-array v9, v4, [Ljava/lang/Class;

    const-class v10, Ljava/lang/String;

    aput-object v10, v9, v5

    const-class v10, Ljava/util/Map;

    aput-object v10, v9, v6

    invoke-virtual {v0, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    sget-object v8, Lcom/oneplus/settings/utils/AppTrackerHelper;->mAppTrackerClass:Ljava/lang/Object;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p2, v4, v5

    aput-object v7, v4, v6

    invoke-virtual {v0, v8, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    nop

    goto :goto_3

    :catch_3
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_3
    return-void
.end method


# virtual methods
.method public putAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/oneplus/settings/utils/AppTrackerHelper;->isAllowSendAppTracker(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AppTrackerHelper"

    const-string v1, "isAllowSendAppTracker is false."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/SettingsBaseApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/utils/-$$Lambda$AppTrackerHelper$_s0fFsJWgp1rjFX9ZrkdRRKYemY;

    invoke-direct {v1, p1, p2, p3}, Lcom/oneplus/settings/utils/-$$Lambda$AppTrackerHelper$_s0fFsJWgp1rjFX9ZrkdRRKYemY;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public putAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-static {v0}, Lcom/oneplus/settings/utils/AppTrackerHelper;->isAllowSendAppTracker(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AppTrackerHelper"

    const-string v1, "isAllowSendAppTracker is false."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/SettingsBaseApplication;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/oneplus/settings/utils/-$$Lambda$AppTrackerHelper$jYhu3qdFK7E64eX-WTcZYdb9nP0;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/oneplus/settings/utils/-$$Lambda$AppTrackerHelper$jYhu3qdFK7E64eX-WTcZYdb9nP0;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
