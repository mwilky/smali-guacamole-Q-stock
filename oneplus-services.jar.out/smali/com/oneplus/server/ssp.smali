.class public Lcom/oneplus/server/ssp;
.super Ljava/lang/Object;
.source ""


# static fields
.field static final DEBUG:Z

.field private static final HAS_HW_KEYS:Z

.field private static Nja:Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController; = null

.field private static Oja:Lcom/oneplus/android/server/scene/OemSceneButtonController; = null

.field private static Pja:Lcom/oneplus/android/server/scene/OemSceneVibrationController; = null

.field private static Qja:Lcom/oneplus/android/server/scene/OemSceneActivityController; = null

.field private static Rja:Lcom/oneplus/android/server/scene/OemSceneLightsController; = null

.field private static Sja:Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController; = null

.field static final TAG:Ljava/lang/String; = "OIMCManagerUtil"

.field private static Tja:Lcom/oneplus/android/server/scene/OemSceneAudioController;

.field private static Uja:Lcom/oneplus/android/server/scene/ESportMode;

.field private static Vja:Lcom/oneplus/android/server/scene/qbh;

.field private static Wja:Landroid/content/BroadcastReceiver;

.field private static sOemSceneCallBlock:Lcom/oneplus/android/server/scene/OemSceneCallBlock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/server/ssp;->DEBUG:Z

    const-string v0, "qemu.hw.mainkeys"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/server/ssp;->HAS_HW_KEYS:Z

    new-instance v0, Lcom/oneplus/server/rtg;

    invoke-direct {v0}, Lcom/oneplus/server/rtg;-><init>()V

    sput-object v0, Lcom/oneplus/server/ssp;->Wja:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static cno(Landroid/content/Context;)V
    .locals 2

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    sget-object v1, Lcom/oneplus/server/ssp;->Wja:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public static sa(Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x50c07cbe

    const/4 v2, -0x1

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0xddf

    if-eq v0, v1, :cond_1

    const v1, 0x1ad6f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v4

    goto :goto_1

    :cond_1
    const-string v0, "on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    const/4 p0, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "config"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    move p0, v3

    goto :goto_1

    :cond_3
    :goto_0
    move p0, v2

    :goto_1
    if-eqz p0, :cond_6

    if-eq p0, v4, :cond_5

    if-eq p0, v3, :cond_4

    return v2

    :cond_4
    const/4 p0, 0x3

    return p0

    :cond_5
    return v3

    :cond_6
    return v4
.end method

.method public static sis(Landroid/content/Context;I)V
    .locals 1

    :try_start_0
    invoke-static {p0}, Lcom/oneplus/android/server/scene/qbh;->getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/qbh;

    move-result-object p0

    sput-object p0, Lcom/oneplus/server/ssp;->Vja:Lcom/oneplus/android/server/scene/qbh;

    sget-object p0, Lcom/oneplus/server/ssp;->Vja:Lcom/oneplus/android/server/scene/qbh;

    if-eqz p0, :cond_0

    sget-object p0, Lcom/oneplus/server/ssp;->Vja:Lcom/oneplus/android/server/scene/qbh;

    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/qbh;->mf()V

    sget-object p0, Lcom/oneplus/server/ssp;->Vja:Lcom/oneplus/android/server/scene/qbh;

    invoke-virtual {p0, p1}, Lcom/oneplus/android/server/scene/qbh;->Z(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerOIMCRules error "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OIMCManagerUtil"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public static you(Lcom/oneplus/core/oimc/IOIMCServiceManager;Landroid/content/Context;)V
    .locals 3

    :try_start_0
    sget-object v0, Lcom/oneplus/server/ssp;->Oja:Lcom/oneplus/android/server/scene/OemSceneButtonController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/server/ssp;->Oja:Lcom/oneplus/android/server/scene/OemSceneButtonController;

    invoke-virtual {v0, v1}, Lcom/oneplus/android/server/scene/OemSceneButtonController;->updateFunctionRule(I)V

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v2, 0xe

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oneplus/android/server/scene/OemSceneButtonController;->RULE_KEYBLOCKING_ZENMODE:Lcom/oneplus/core/oimc/OIMCRule;

    invoke-interface {p0, v0}, Lcom/oneplus/core/oimc/IOIMCServiceManager;->addFuncRuleGlobal(Lcom/oneplus/core/oimc/OIMCRule;)V

    :cond_1
    invoke-static {p1}, Lcom/oneplus/android/server/scene/qbh;->getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/qbh;

    move-result-object p0

    sput-object p0, Lcom/oneplus/server/ssp;->Vja:Lcom/oneplus/android/server/scene/qbh;

    sget-object p0, Lcom/oneplus/server/ssp;->Vja:Lcom/oneplus/android/server/scene/qbh;

    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/qbh;->mf()V

    sget-object p0, Lcom/oneplus/server/ssp;->Vja:Lcom/oneplus/android/server/scene/qbh;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/android/server/scene/qbh;->Z(I)V

    sget-boolean p0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->IN_USING:Z

    if-eqz p0, :cond_2

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/OemSceneAdModeController;

    move-result-object p0

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->updateFunctionRule()V

    :cond_2
    sget-boolean p0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->IN_USING:Z

    if-eqz p0, :cond_3

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    move-result-object p0

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->updateFunctionRule()V

    :cond_3
    sget-object p0, Lcom/oneplus/server/ssp;->Nja:Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;

    if-eqz p0, :cond_4

    sget-object p0, Lcom/oneplus/server/ssp;->Nja:Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;

    invoke-virtual {p0, v1}, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->updateFunctionRule(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerOIMCRules error "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OIMCManagerUtil"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method public static zta(Lcom/oneplus/core/oimc/IOIMCServiceManager;Landroid/content/Context;)V
    .locals 3

    const/4 v0, 0x1

    :try_start_0
    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0xe

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneButtonController;->getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/OemSceneButtonController;

    move-result-object v0

    sput-object v0, Lcom/oneplus/server/ssp;->Oja:Lcom/oneplus/android/server/scene/OemSceneButtonController;

    sget-object v0, Lcom/oneplus/server/ssp;->Oja:Lcom/oneplus/android/server/scene/OemSceneButtonController;

    if-eqz v0, :cond_0

    const-string v0, "KeyBlocking"

    sget-object v1, Lcom/oneplus/server/ssp;->Oja:Lcom/oneplus/android/server/scene/OemSceneButtonController;

    invoke-interface {p0, v0, v1}, Lcom/oneplus/core/oimc/IOIMCServiceManager;->registerRemoteAction(Ljava/lang/String;Lcom/oneplus/core/oimc/IOIMCRemoteAction;)V

    :cond_0
    const-string v0, "ZenModeObserver"

    invoke-static {}, Lcom/oneplus/android/server/scene/ZenModeObserver;->getInstance()Lcom/oneplus/android/server/scene/ZenModeObserver;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/oneplus/core/oimc/IOIMCServiceManager;->registerRemoteAction(Ljava/lang/String;Lcom/oneplus/core/oimc/IOIMCRemoteAction;)V

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneActivityController;->getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/OemSceneActivityController;

    move-result-object v0

    sput-object v0, Lcom/oneplus/server/ssp;->Qja:Lcom/oneplus/android/server/scene/OemSceneActivityController;

    sget-object v0, Lcom/oneplus/server/ssp;->Qja:Lcom/oneplus/android/server/scene/OemSceneActivityController;

    if-eqz v0, :cond_1

    const-string v0, "AllowWhiteActivity"

    sget-object v1, Lcom/oneplus/server/ssp;->Qja:Lcom/oneplus/android/server/scene/OemSceneActivityController;

    invoke-virtual {v1}, Lcom/oneplus/android/server/scene/OemSceneActivityController;->lf()Lcom/oneplus/android/server/scene/OemSceneActivityController$AllowWhiteActivity;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/oneplus/core/oimc/IOIMCServiceManager;->registerRemoteAction(Ljava/lang/String;Lcom/oneplus/core/oimc/IOIMCRemoteAction;)V

    :cond_1
    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneVibrationController;->getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/OemSceneVibrationController;

    move-result-object v0

    sput-object v0, Lcom/oneplus/server/ssp;->Pja:Lcom/oneplus/android/server/scene/OemSceneVibrationController;

    sget-object v0, Lcom/oneplus/server/ssp;->Pja:Lcom/oneplus/android/server/scene/OemSceneVibrationController;

    if-eqz v0, :cond_2

    const-string v0, "AllowWhiteVibration"

    sget-object v1, Lcom/oneplus/server/ssp;->Pja:Lcom/oneplus/android/server/scene/OemSceneVibrationController;

    invoke-virtual {v1}, Lcom/oneplus/android/server/scene/OemSceneVibrationController;->Ff()Lcom/oneplus/android/server/scene/OemSceneVibrationController$AllowWhiteVibration;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/oneplus/core/oimc/IOIMCServiceManager;->registerRemoteAction(Ljava/lang/String;Lcom/oneplus/core/oimc/IOIMCRemoteAction;)V

    :cond_2
    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneLightsController;->getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/OemSceneLightsController;

    move-result-object v0

    sput-object v0, Lcom/oneplus/server/ssp;->Rja:Lcom/oneplus/android/server/scene/OemSceneLightsController;

    sget-object v0, Lcom/oneplus/server/ssp;->Rja:Lcom/oneplus/android/server/scene/OemSceneLightsController;

    if-eqz v0, :cond_3

    const-string v0, "ZenModeLedController"

    sget-object v1, Lcom/oneplus/server/ssp;->Rja:Lcom/oneplus/android/server/scene/OemSceneLightsController;

    invoke-virtual {v1}, Lcom/oneplus/android/server/scene/OemSceneLightsController;->vf()Lcom/oneplus/android/server/scene/OemSceneLightsController$ZenModeLedController;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/oneplus/core/oimc/IOIMCServiceManager;->registerRemoteAction(Ljava/lang/String;Lcom/oneplus/core/oimc/IOIMCRemoteAction;)V

    :cond_3
    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;

    move-result-object v0

    sput-object v0, Lcom/oneplus/server/ssp;->Sja:Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;

    sget-object v0, Lcom/oneplus/server/ssp;->Sja:Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;

    if-eqz v0, :cond_4

    const-string v0, "FloatingWindowController"

    sget-object v1, Lcom/oneplus/server/ssp;->Sja:Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;

    invoke-virtual {v1}, Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController;->of()Lcom/oneplus/android/server/scene/OemSceneFloatingWindowController$FloatingWindowController;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/oneplus/core/oimc/IOIMCServiceManager;->registerRemoteAction(Ljava/lang/String;Lcom/oneplus/core/oimc/IOIMCRemoteAction;)V

    :cond_4
    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneAudioController;->getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/OemSceneAudioController;

    move-result-object v0

    sput-object v0, Lcom/oneplus/server/ssp;->Tja:Lcom/oneplus/android/server/scene/OemSceneAudioController;

    sget-object v0, Lcom/oneplus/server/ssp;->Tja:Lcom/oneplus/android/server/scene/OemSceneAudioController;

    if-eqz v0, :cond_5

    const-string v0, "AudioProcessesController"

    sget-object v1, Lcom/oneplus/server/ssp;->Tja:Lcom/oneplus/android/server/scene/OemSceneAudioController;

    invoke-virtual {v1}, Lcom/oneplus/android/server/scene/OemSceneAudioController;->nf()Lcom/oneplus/android/server/scene/OemSceneAudioController$AudioProcessesController;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lcom/oneplus/core/oimc/IOIMCServiceManager;->registerRemoteAction(Ljava/lang/String;Lcom/oneplus/core/oimc/IOIMCRemoteAction;)V

    :cond_5
    invoke-static {}, Lcom/oneplus/android/server/scene/OemSceneCallBlock;->getInstance()Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    move-result-object v0

    sput-object v0, Lcom/oneplus/server/ssp;->sOemSceneCallBlock:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    sget-object v0, Lcom/oneplus/server/ssp;->sOemSceneCallBlock:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    if-eqz v0, :cond_6

    const-string v0, "NotifyFor3PtyCallsBlocking"

    sget-object v1, Lcom/oneplus/server/ssp;->sOemSceneCallBlock:Lcom/oneplus/android/server/scene/OemSceneCallBlock;

    invoke-interface {p0, v0, v1}, Lcom/oneplus/core/oimc/IOIMCServiceManager;->registerRemoteAction(Ljava/lang/String;Lcom/oneplus/core/oimc/IOIMCRemoteAction;)V

    :cond_6
    invoke-static {p1}, Lcom/oneplus/android/server/scene/ESportMode;->getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/ESportMode;

    move-result-object v0

    sput-object v0, Lcom/oneplus/server/ssp;->Uja:Lcom/oneplus/android/server/scene/ESportMode;

    sget-object v0, Lcom/oneplus/server/ssp;->Uja:Lcom/oneplus/android/server/scene/ESportMode;

    if-eqz v0, :cond_7

    const-string v0, "ESportMode"

    sget-object v1, Lcom/oneplus/server/ssp;->Uja:Lcom/oneplus/android/server/scene/ESportMode;

    invoke-interface {p0, v0, v1}, Lcom/oneplus/core/oimc/IOIMCServiceManager;->registerRemoteAction(Ljava/lang/String;Lcom/oneplus/core/oimc/IOIMCRemoteAction;)V

    :cond_7
    new-instance v0, Lcom/oneplus/android/server/display/OpOIMCColorManager;

    invoke-direct {v0, p1}, Lcom/oneplus/android/server/display/OpOIMCColorManager;-><init>(Landroid/content/Context;)V

    const-string v1, "GrayColor"

    iget-object v2, v0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Kea:Lcom/oneplus/android/server/display/OpOIMCColorManager$GrayColor;

    invoke-interface {p0, v1, v2}, Lcom/oneplus/core/oimc/IOIMCServiceManager;->registerRemoteAction(Ljava/lang/String;Lcom/oneplus/core/oimc/IOIMCRemoteAction;)V

    const-string v1, "ColorBalance"

    iget-object v2, v0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Jea:Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorBalance;

    invoke-interface {p0, v1, v2}, Lcom/oneplus/core/oimc/IOIMCServiceManager;->registerRemoteAction(Ljava/lang/String;Lcom/oneplus/core/oimc/IOIMCRemoteAction;)V

    const-string v1, "ColorDisable"

    iget-object v2, v0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Mea:Lcom/oneplus/android/server/display/OpOIMCColorManager$ColorDisable;

    invoke-interface {p0, v1, v2}, Lcom/oneplus/core/oimc/IOIMCServiceManager;->registerRemoteAction(Ljava/lang/String;Lcom/oneplus/core/oimc/IOIMCRemoteAction;)V

    const-string v1, "PaperColor"

    iget-object v2, v0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Lea:Lcom/oneplus/android/server/display/OpOIMCColorManager$PaperColor;

    invoke-interface {p0, v1, v2}, Lcom/oneplus/core/oimc/IOIMCServiceManager;->registerRemoteAction(Ljava/lang/String;Lcom/oneplus/core/oimc/IOIMCRemoteAction;)V

    const-string v1, "gooleMatrix"

    iget-object v0, v0, Lcom/oneplus/android/server/display/OpOIMCColorManager;->Nea:Lcom/oneplus/android/server/display/OpOIMCColorManager$GoogleMatrix;

    invoke-interface {p0, v1, v0}, Lcom/oneplus/core/oimc/IOIMCServiceManager;->registerRemoteAction(Ljava/lang/String;Lcom/oneplus/core/oimc/IOIMCRemoteAction;)V

    invoke-static {}, Lcom/oneplus/android/server/scene/GameModeObserver;->getInstance()Lcom/oneplus/android/server/scene/GameModeObserver;

    move-result-object v0

    if-eqz v0, :cond_8

    const-string v1, "GameModeObserver"

    invoke-interface {p0, v1, v0}, Lcom/oneplus/core/oimc/IOIMCServiceManager;->registerRemoteAction(Ljava/lang/String;Lcom/oneplus/core/oimc/IOIMCRemoteAction;)V

    :cond_8
    sget-boolean v0, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->IN_USING:Z

    if-eqz v0, :cond_9

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneAdModeController;->getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/OemSceneAdModeController;

    move-result-object v0

    if-eqz v0, :cond_9

    const-string v1, "AdModeController"

    invoke-interface {p0, v1, v0}, Lcom/oneplus/core/oimc/IOIMCServiceManager;->registerRemoteAction(Ljava/lang/String;Lcom/oneplus/core/oimc/IOIMCRemoteAction;)V

    :cond_9
    sget-boolean v0, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->IN_USING:Z

    if-eqz v0, :cond_a

    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;->getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/OemSceneXLinearVibrationMotorController;

    move-result-object v0

    if-eqz v0, :cond_a

    const-string v1, "XLVMotorController"

    invoke-interface {p0, v1, v0}, Lcom/oneplus/core/oimc/IOIMCServiceManager;->registerRemoteAction(Ljava/lang/String;Lcom/oneplus/core/oimc/IOIMCRemoteAction;)V

    :cond_a
    invoke-static {p1}, Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;->getInstance(Landroid/content/Context;)Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;

    move-result-object p1

    sput-object p1, Lcom/oneplus/server/ssp;->Nja:Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;

    sget-object p1, Lcom/oneplus/server/ssp;->Nja:Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;

    if-eqz p1, :cond_b

    const-string p1, "TurnOffAutoBacklight"

    sget-object v0, Lcom/oneplus/server/ssp;->Nja:Lcom/oneplus/android/server/scene/OemSceneAutoBrightnessController;

    invoke-interface {p0, p1, v0}, Lcom/oneplus/core/oimc/IOIMCServiceManager;->registerRemoteAction(Ljava/lang/String;Lcom/oneplus/core/oimc/IOIMCRemoteAction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "registerOIMCFunctions error "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OIMCManagerUtil"

    invoke-static {p1, p0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_b
    :goto_0
    return-void
.end method
