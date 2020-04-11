.class public Lcom/android/server/wm/OPAppSwitchRuleInfo;
.super Ljava/lang/Object;
.source ""


# static fields
.field private static final DEBUG:Z

.field private static final TAG:Ljava/lang/String; = "OPAppSwitchRuleInfo"


# instance fields
.field public config:Lcom/color/app/ColorAppSwitchConfig;

.field private context:Landroid/content/Context;

.field public deathRecipient:Landroid/os/IBinder$DeathRecipient;

.field public defaultMatchActivity:Z

.field public defaultMatchApp:Z

.field public enable:Z

.field public isStatic:Z

.field public observer:Lcom/android/server/wm/IOPAppSwitchObserver;

.field public pkgName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->DEBUG:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->enable:Z

    iput-object p1, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->context:Landroid/content/Context;

    iput-boolean v0, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->isStatic:Z

    new-instance p1, Lcom/color/app/ColorAppSwitchConfig;

    invoke-direct {p1}, Lcom/color/app/ColorAppSwitchConfig;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->config:Lcom/color/app/ColorAppSwitchConfig;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wm/IOPAppSwitchObserver;Lcom/color/app/ColorAppSwitchConfig;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->enable:Z

    iput-object p1, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->context:Landroid/content/Context;

    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->isStatic:Z

    iput-object p2, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->pkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->observer:Lcom/android/server/wm/IOPAppSwitchObserver;

    iput-object p4, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->config:Lcom/color/app/ColorAppSwitchConfig;

    return-void
.end method

.method public static buildDynamicRuleInfo(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wm/IOPAppSwitchObserver;Lcom/color/app/ColorAppSwitchConfig;)Lcom/android/server/wm/OPAppSwitchRuleInfo;
    .locals 1

    new-instance v0, Lcom/android/server/wm/OPAppSwitchRuleInfo;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/android/server/wm/OPAppSwitchRuleInfo;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/server/wm/IOPAppSwitchObserver;Lcom/color/app/ColorAppSwitchConfig;)V

    return-object v0
.end method

.method public static buildStaticRuleInfo(Landroid/content/Context;)Lcom/android/server/wm/OPAppSwitchRuleInfo;
    .locals 1

    new-instance v0, Lcom/android/server/wm/OPAppSwitchRuleInfo;

    invoke-direct {v0, p0}, Lcom/android/server/wm/OPAppSwitchRuleInfo;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getConfigSet(I)Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->config:Lcom/color/app/ColorAppSwitchConfig;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/color/app/ColorAppSwitchConfig;->mActivitySet:Ljava/util/HashSet;

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/color/app/ColorAppSwitchConfig;->mPackageSet:Ljava/util/HashSet;

    return-object p0
.end method

.method private hasConfig(I)Z
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/OPAppSwitchRuleInfo;->getConfigSet(I)Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/HashSet;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private matchConfig(ILjava/lang/String;)Z
    .locals 5

    invoke-direct {p0, p1}, Lcom/android/server/wm/OPAppSwitchRuleInfo;->hasConfig(I)Z

    move-result v0

    const/4 v1, 0x1

    const-string v2, " ,keyword= "

    const-string v3, "OPAppSwitchRuleInfo"

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/wm/OPAppSwitchRuleInfo;->getConfigSet(I)Ljava/util/HashSet;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    sget-boolean p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->DEBUG:Z

    if-eqz p0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "matchConfig match SUCCESSED, category = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :cond_1
    sget-boolean p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->DEBUG:Z

    if-eqz p0, :cond_2

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "matchConfig match FAILED, category = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
    sget-boolean v0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->DEBUG:Z

    if-eqz v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "matchConfig match NOTHING, category = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v3, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    if-ne p1, v1, :cond_5

    iget-boolean p0, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->defaultMatchActivity:Z

    goto :goto_0

    :cond_5
    iget-boolean p0, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->defaultMatchApp:Z

    :goto_0
    return p0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/android/server/wm/OPAppSwitchRuleInfo;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/android/server/wm/OPAppSwitchRuleInfo;

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->pkgName:Ljava/lang/String;

    iget-object v1, p1, Lcom/android/server/wm/OPAppSwitchRuleInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->config:Lcom/color/app/ColorAppSwitchConfig;

    iget p0, p0, Lcom/color/app/ColorAppSwitchConfig;->observerFingerPrint:I

    iget-object p1, p1, Lcom/android/server/wm/OPAppSwitchRuleInfo;->config:Lcom/color/app/ColorAppSwitchConfig;

    iget p1, p1, Lcom/color/app/ColorAppSwitchConfig;->observerFingerPrint:I

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-super {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public notifyActivityEnter(Lcom/android/server/wm/ActivityRecord;Z)Z
    .locals 5

    const-string v0, "OPAppSwitchRuleInfo"

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/OPAppSwitchRuleInfo;->matchConfig(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v3, Lcom/color/app/ColorAppEnterInfo;

    invoke-direct {v3}, Lcom/color/app/ColorAppEnterInfo;-><init>()V

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v4, v3, Lcom/color/app/ColorAppEnterInfo;->intent:Landroid/content/Intent;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/color/app/ColorAppEnterInfo;->targetName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v4

    iput v4, v3, Lcom/color/app/ColorAppEnterInfo;->windowMode:I

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v4, v3, Lcom/color/app/ColorAppEnterInfo;->launchedFromPackage:Ljava/lang/String;

    iput-boolean p2, v3, Lcom/color/app/ColorAppEnterInfo;->firstStart:Z

    iget p2, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    iput-boolean v2, v3, Lcom/color/app/ColorAppEnterInfo;->multiApp:Z

    :try_start_0
    sget-boolean p2, Lcom/android/server/wm/OPAppSwitchRuleInfo;->DEBUG:Z

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchtestlog  notifyActivityEnter , config matched, isStatic = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->isStatic:Z

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " package ="

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p2, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->observer:Lcom/android/server/wm/IOPAppSwitchObserver;

    invoke-interface {p2, v3}, Lcom/android/server/wm/IOPAppSwitchObserver;->onActivityEnter(Lcom/color/app/ColorAppEnterInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyActivityEnter error, pkgName = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " , ActivityRecord = "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return v1
.end method

.method public notifyActivityExit(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;Z)Z
    .locals 6

    const-string v0, "OPAppSwitchRuleInfo"

    const/4 v1, 0x1

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/OPAppSwitchRuleInfo;->matchConfig(ILjava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    :try_start_0
    sget-boolean v3, Lcom/android/server/wm/OPAppSwitchRuleInfo;->DEBUG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "switchtestlog  notifyActivityExit , config matched, isStatic = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->isStatic:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " package ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v3, Lcom/color/app/ColorAppExitInfo;

    invoke-direct {v3}, Lcom/color/app/ColorAppExitInfo;-><init>()V

    iput-object p1, v3, Lcom/color/app/ColorAppExitInfo;->targetName:Ljava/lang/String;

    const/4 v4, 0x0

    if-eqz p2, :cond_2

    iput-boolean v1, v3, Lcom/color/app/ColorAppExitInfo;->hasResumingActivity:Z

    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v3, Lcom/color/app/ColorAppExitInfo;->resumingActivityName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iput-object v5, v3, Lcom/color/app/ColorAppExitInfo;->resumingPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v5

    iput v5, v3, Lcom/color/app/ColorAppExitInfo;->resumingWindowMode:I

    iput-boolean p3, v3, Lcom/color/app/ColorAppExitInfo;->isResumingFirstStart:Z

    iget p2, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    iput-boolean v1, v3, Lcom/color/app/ColorAppExitInfo;->isResumingMultiApp:Z

    goto :goto_1

    :cond_2
    iput-boolean v4, v3, Lcom/color/app/ColorAppExitInfo;->hasResumingActivity:Z

    :goto_1
    iget-object p2, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->observer:Lcom/android/server/wm/IOPAppSwitchObserver;

    invoke-interface {p2, v3}, Lcom/android/server/wm/IOPAppSwitchObserver;->onActivityExit(Lcom/color/app/ColorAppExitInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "notifyActivityEnter error, pkgName = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " , activityName = "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return v2
.end method

.method public notifyAppEnter(Lcom/android/server/wm/ActivityRecord;Z)Z
    .locals 4

    const-string v0, "OPAppSwitchRuleInfo"

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/OPAppSwitchRuleInfo;->matchConfig(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v2, Lcom/color/app/ColorAppEnterInfo;

    invoke-direct {v2}, Lcom/color/app/ColorAppEnterInfo;-><init>()V

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iput-object v3, v2, Lcom/color/app/ColorAppEnterInfo;->intent:Landroid/content/Intent;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iput-object v3, v2, Lcom/color/app/ColorAppEnterInfo;->targetName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v3

    iput v3, v2, Lcom/color/app/ColorAppEnterInfo;->windowMode:I

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v3, v2, Lcom/color/app/ColorAppEnterInfo;->launchedFromPackage:Ljava/lang/String;

    iput-boolean p2, v2, Lcom/color/app/ColorAppEnterInfo;->firstStart:Z

    iget p2, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eqz p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, v2, Lcom/color/app/ColorAppEnterInfo;->multiApp:Z

    :try_start_0
    sget-boolean p2, Lcom/android/server/wm/OPAppSwitchRuleInfo;->DEBUG:Z

    if-eqz p2, :cond_1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchtestlog  notifyAppEnter , config matched, isStatic = "

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->isStatic:Z

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " package ="

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object p2, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->observer:Lcom/android/server/wm/IOPAppSwitchObserver;

    invoke-interface {p2, v2}, Lcom/android/server/wm/IOPAppSwitchObserver;->onAppEnter(Lcom/color/app/ColorAppEnterInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyActivityEnter error, pkgName = "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " ,activityRecord ="

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return v1
.end method

.method public notifyAppExit(Ljava/lang/String;Lcom/android/server/wm/ActivityRecord;Z)Z
    .locals 6

    const-string v0, "OPAppSwitchRuleInfo"

    const/4 v1, 0x2

    invoke-direct {p0, v1, p1}, Lcom/android/server/wm/OPAppSwitchRuleInfo;->matchConfig(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    :try_start_0
    sget-boolean v2, Lcom/android/server/wm/OPAppSwitchRuleInfo;->DEBUG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "switchtestlog  notifyAppExit , config matched, isStatic = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->isStatic:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " package ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v2, Lcom/color/app/ColorAppExitInfo;

    invoke-direct {v2}, Lcom/color/app/ColorAppExitInfo;-><init>()V

    iput-object p1, v2, Lcom/color/app/ColorAppExitInfo;->targetName:Ljava/lang/String;

    const/4 v3, 0x0

    if-eqz p2, :cond_2

    const/4 v4, 0x1

    iput-boolean v4, v2, Lcom/color/app/ColorAppExitInfo;->hasResumingActivity:Z

    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v2, Lcom/color/app/ColorAppExitInfo;->resumingActivityName:Ljava/lang/String;

    iget-object v5, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iput-object v5, v2, Lcom/color/app/ColorAppExitInfo;->resumingPackageName:Ljava/lang/String;

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v5

    iput v5, v2, Lcom/color/app/ColorAppExitInfo;->resumingWindowMode:I

    iput-boolean p3, v2, Lcom/color/app/ColorAppExitInfo;->isResumingFirstStart:Z

    iget p2, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eqz p2, :cond_1

    move v3, v4

    :cond_1
    iput-boolean v3, v2, Lcom/color/app/ColorAppExitInfo;->isResumingMultiApp:Z

    goto :goto_0

    :cond_2
    iput-boolean v3, v2, Lcom/color/app/ColorAppExitInfo;->hasResumingActivity:Z

    :goto_0
    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->observer:Lcom/android/server/wm/IOPAppSwitchObserver;

    invoke-interface {p0, v2}, Lcom/android/server/wm/IOPAppSwitchObserver;->onAppExit(Lcom/color/app/ColorAppExitInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/os/RemoteException;->printStackTrace()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "notifyAppExit error, pkgName = "

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    return v1
.end method

.method public setDefaultMatchConfig(ZZ)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->defaultMatchApp:Z

    iput-boolean p2, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->defaultMatchActivity:Z

    return-void
.end method

.method public setStaticPackageAndObserver(Ljava/lang/String;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->pkgName:Ljava/lang/String;

    new-instance p1, Lcom/android/server/wm/OPStaticBroadcastObserver;

    iget-object v0, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->pkgName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->context:Landroid/content/Context;

    invoke-direct {p1, v0, v1}, Lcom/android/server/wm/OPStaticBroadcastObserver;-><init>(Ljava/lang/String;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->observer:Lcom/android/server/wm/IOPAppSwitchObserver;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "OPAppSwitchRuleInfo = { "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " pkgName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->pkgName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " observer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->observer:Lcom/android/server/wm/IOPAppSwitchObserver;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " observerFingerPrint = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OPAppSwitchRuleInfo;->config:Lcom/color/app/ColorAppSwitchConfig;

    iget p0, p0, Lcom/color/app/ColorAppSwitchConfig;->observerFingerPrint:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "}"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
