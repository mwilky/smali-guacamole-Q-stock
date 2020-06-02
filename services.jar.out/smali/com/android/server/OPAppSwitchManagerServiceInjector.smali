.class public Lcom/android/server/OPAppSwitchManagerServiceInjector;
.super Ljava/lang/Object;
.source "OPAppSwitchManagerServiceInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "OPAppSwitchManagerServiceInjector"

.field private static opAppSwitchManagerServiceHelper:Lcom/android/server/IOPAppSwitchManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppStartModeLocked(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->opAppSwitchManagerServiceHelper:Lcom/android/server/IOPAppSwitchManagerService;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0}, Lcom/android/server/IOPAppSwitchManagerService;->getAppStartModeLocked(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    const v0, 0x72f58f

    return v0
.end method

.method public static getOposAdsSettings(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->opAppSwitchManagerServiceHelper:Lcom/android/server/IOPAppSwitchManagerService;

    if-eqz v0, :cond_0

    invoke-interface {v0, p0, p1}, Lcom/android/server/IOPAppSwitchManagerService;->getOposAdsSettings(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static handleActivityPaused(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    sget-object v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->opAppSwitchManagerServiceHelper:Lcom/android/server/IOPAppSwitchManagerService;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPAppSwitchManagerServiceInjector"

    const-string v1, "handle ap"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->opAppSwitchManagerServiceHelper:Lcom/android/server/IOPAppSwitchManagerService;

    invoke-interface {v0, p0, p1}, Lcom/android/server/IOPAppSwitchManagerService;->handleActivityPaused(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    :cond_1
    return-void
.end method

.method public static handleActivityResumed(Lcom/android/server/wm/ActivityRecord;)V
    .locals 2

    sget-object v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->opAppSwitchManagerServiceHelper:Lcom/android/server/IOPAppSwitchManagerService;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPAppSwitchManagerServiceInjector"

    const-string v1, "handle ar"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->opAppSwitchManagerServiceHelper:Lcom/android/server/IOPAppSwitchManagerService;

    invoke-interface {v0, p0}, Lcom/android/server/IOPAppSwitchManagerService;->handleActivityResumed(Lcom/android/server/wm/ActivityRecord;)V

    :cond_1
    return-void
.end method

.method public static init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V
    .locals 2

    sget-object v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->opAppSwitchManagerServiceHelper:Lcom/android/server/IOPAppSwitchManagerService;

    if-nez v0, :cond_0

    sget-object v0, Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;->oneplus_op_ads:Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;

    invoke-static {v0}, Lcom/oneplus/android/server/context/OneplusContextStub;->queryInterface(Lcom/oneplus/android/server/context/IOneplusContextStub$EStubType;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/IOPAppSwitchManagerService;

    sput-object v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->opAppSwitchManagerServiceHelper:Lcom/android/server/IOPAppSwitchManagerService;

    :cond_0
    sget-object v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->opAppSwitchManagerServiceHelper:Lcom/android/server/IOPAppSwitchManagerService;

    if-eqz v0, :cond_1

    const-string v0, "OPAppSwitchManagerServiceInjector"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->opAppSwitchManagerServiceHelper:Lcom/android/server/IOPAppSwitchManagerService;

    invoke-interface {v0, p0, p1}, Lcom/android/server/IOPAppSwitchManagerService;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    :cond_1
    return-void
.end method

.method public static registerAppSwitchObserver(Ljava/lang/String;Lcom/android/server/wm/IOPAppSwitchObserver;Lcom/color/app/ColorAppSwitchConfig;)Z
    .locals 2

    sget-object v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->opAppSwitchManagerServiceHelper:Lcom/android/server/IOPAppSwitchManagerService;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPAppSwitchManagerServiceInjector"

    const-string/jumbo v1, "register ads observer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->opAppSwitchManagerServiceHelper:Lcom/android/server/IOPAppSwitchManagerService;

    invoke-interface {v0, p0, p1, p2}, Lcom/android/server/IOPAppSwitchManagerService;->registerAppSwitchObserver(Ljava/lang/String;Lcom/android/server/wm/IOPAppSwitchObserver;Lcom/color/app/ColorAppSwitchConfig;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static unregisterAppSwitchObserver(Ljava/lang/String;Lcom/color/app/ColorAppSwitchConfig;)Z
    .locals 2

    sget-object v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->opAppSwitchManagerServiceHelper:Lcom/android/server/IOPAppSwitchManagerService;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPAppSwitchManagerServiceInjector"

    const-string/jumbo v1, "unregister ads observer"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/OPAppSwitchManagerServiceInjector;->opAppSwitchManagerServiceHelper:Lcom/android/server/IOPAppSwitchManagerService;

    invoke-interface {v0, p0, p1}, Lcom/android/server/IOPAppSwitchManagerService;->unregisterAppSwitchObserver(Ljava/lang/String;Lcom/color/app/ColorAppSwitchConfig;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method
