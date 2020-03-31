.class public Lcom/android/systemui/SystemUIFactory;
.super Ljava/lang/Object;
.source "SystemUIFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/SystemUIFactory$SystemUIRootComponent;,
        Lcom/android/systemui/SystemUIFactory$ContextHolder;
    }
.end annotation


# static fields
.field static mFactory:Lcom/android/systemui/SystemUIFactory;


# instance fields
.field private mRootComponent:Lcom/android/systemui/SystemUIFactory$SystemUIRootComponent;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromConfig(Landroid/content/Context;)V
    .locals 3

    sget v0, Lcom/android/systemui/R$string;->config_systemUIFactoryComponent:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/SystemUIFactory;

    sput-object v1, Lcom/android/systemui/SystemUIFactory;->mFactory:Lcom/android/systemui/SystemUIFactory;

    sget-object v1, Lcom/android/systemui/SystemUIFactory;->mFactory:Lcom/android/systemui/SystemUIFactory;

    invoke-virtual {v1, p0}, Lcom/android/systemui/SystemUIFactory;->init(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error creating SystemUIFactory component: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SystemUIFactory"

    invoke-static {v1, v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    const-string v0, "No SystemUIFactory component configured"

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static getInstance()Lcom/android/systemui/SystemUIFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/android/systemui/SystemUIFactory;",
            ">()TT;"
        }
    .end annotation

    sget-object v0, Lcom/android/systemui/SystemUIFactory;->mFactory:Lcom/android/systemui/SystemUIFactory;

    return-object v0
.end method


# virtual methods
.method public createKeyguardBouncer(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;)Lcom/android/systemui/statusbar/phone/KeyguardBouncer;
    .locals 11

    new-instance v10, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;

    invoke-static {p1}, Lcom/android/systemui/classifier/FalsingManagerFactory;->getInstance(Landroid/content/Context;)Lcom/android/systemui/plugins/FalsingManager;

    move-result-object v6

    invoke-static {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v8

    new-instance v9, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {v9, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    move-object v0, v10

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/phone/KeyguardBouncer;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;Landroid/view/ViewGroup;Lcom/android/systemui/keyguard/DismissCallbackRegistry;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/statusbar/phone/KeyguardBouncer$BouncerExpansionCallback;Lcom/android/keyguard/KeyguardUpdateMonitor;Landroid/os/Handler;)V

    return-object v10
.end method

.method public createKeyguardIndicationController(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;Lcom/android/keyguard/KeyguardStatusView;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)Lcom/android/systemui/statusbar/KeyguardIndicationController;
    .locals 6

    new-instance p0, Lcom/android/systemui/statusbar/KeyguardIndicationController;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/statusbar/KeyguardIndicationController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/LockIcon;Lcom/android/keyguard/KeyguardStatusView;Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;)V

    return-object p0
.end method

.method public createNotificationIconAreaController(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;)Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;
    .locals 1

    new-instance p0, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    const-class v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/NotificationMediaManager;

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;-><init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/StatusBar;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/NotificationMediaManager;)V

    return-object p0
.end method

.method public createScrimController(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;Lcom/android/internal/util/function/TriConsumer;Ljava/util/function/Consumer;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/app/AlarmManager;)Lcom/android/systemui/statusbar/phone/ScrimController;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/statusbar/ScrimView;",
            "Lcom/android/systemui/statusbar/ScrimView;",
            "Lcom/android/systemui/statusbar/phone/LockscreenWallpaper;",
            "Lcom/android/internal/util/function/TriConsumer<",
            "Lcom/android/systemui/statusbar/phone/ScrimState;",
            "Ljava/lang/Float;",
            "Lcom/android/internal/colorextraction/ColorExtractor$GradientColors;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/android/systemui/statusbar/phone/DozeParameters;",
            "Landroid/app/AlarmManager;",
            ")",
            "Lcom/android/systemui/statusbar/phone/ScrimController;"
        }
    .end annotation

    new-instance p0, Lcom/android/systemui/statusbar/phone/ScrimController;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p4

    move-object v4, p5

    move-object v5, p6

    move-object v6, p7

    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/statusbar/phone/ScrimController;-><init>(Lcom/android/systemui/statusbar/ScrimView;Lcom/android/systemui/statusbar/ScrimView;Lcom/android/internal/util/function/TriConsumer;Ljava/util/function/Consumer;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/app/AlarmManager;)V

    return-object p0
.end method

.method public createStatusBarKeyguardViewManager(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;
    .locals 0

    new-instance p0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;-><init>(Landroid/content/Context;Lcom/android/keyguard/ViewMediatorCallback;Lcom/android/internal/widget/LockPatternUtils;)V

    return-object p0
.end method

.method public createVolumeDialogComponent(Lcom/android/systemui/SystemUI;Landroid/content/Context;)Lcom/android/systemui/volume/VolumeDialogComponent;
    .locals 0

    new-instance p0, Lcom/android/systemui/volume/VolumeDialogComponent;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/volume/VolumeDialogComponent;-><init>(Lcom/android/systemui/SystemUI;Landroid/content/Context;)V

    return-object p0
.end method

.method public getRootComponent()Lcom/android/systemui/SystemUIFactory$SystemUIRootComponent;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/SystemUIFactory;->mRootComponent:Lcom/android/systemui/SystemUIFactory$SystemUIRootComponent;

    return-object p0
.end method

.method protected init(Landroid/content/Context;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent;->builder()Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->systemUIFactory(Lcom/android/systemui/SystemUIFactory;)Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;

    new-instance v1, Lcom/android/systemui/DependencyProvider;

    invoke-direct {v1}, Lcom/android/systemui/DependencyProvider;-><init>()V

    invoke-virtual {v0, v1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->dependencyProvider(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;

    new-instance v1, Lcom/android/systemui/SystemUIFactory$ContextHolder;

    invoke-direct {v1, p1}, Lcom/android/systemui/SystemUIFactory$ContextHolder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->contextHolder(Lcom/android/systemui/SystemUIFactory$ContextHolder;)Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;

    invoke-virtual {v0}, Lcom/android/systemui/DaggerSystemUIFactory_SystemUIRootComponent$Builder;->build()Lcom/android/systemui/SystemUIFactory$SystemUIRootComponent;

    move-result-object p1

    iput-object p1, p0, Lcom/android/systemui/SystemUIFactory;->mRootComponent:Lcom/android/systemui/SystemUIFactory$SystemUIRootComponent;

    return-void
.end method

.method public provideAllowNotificationLongPress()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public provideAssistManager(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/content/Context;)Lcom/android/systemui/assist/AssistManager;
    .locals 0

    new-instance p0, Lcom/android/systemui/assist/AssistManager;

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/assist/AssistManager;-><init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/content/Context;)V

    return-object p0
.end method

.method public provideDockManager(Landroid/content/Context;)Lcom/android/systemui/dock/DockManager;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public provideEnhancedEstimates(Landroid/content/Context;)Lcom/android/systemui/power/EnhancedEstimates;
    .locals 0

    new-instance p0, Lcom/android/systemui/power/EnhancedEstimatesImpl;

    invoke-direct {p0}, Lcom/android/systemui/power/EnhancedEstimatesImpl;-><init>()V

    return-object p0
.end method

.method public provideKeyguardEnvironment(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/collection/NotificationData$KeyguardEnvironment;
    .locals 0

    new-instance p0, Lcom/android/systemui/statusbar/phone/KeyguardEnvironmentImpl;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/KeyguardEnvironmentImpl;-><init>()V

    return-object p0
.end method

.method public provideLeakReportEmail()Ljava/lang/String;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public provideNotificationEntryManager(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/NotificationEntryManager;
    .locals 0

    new-instance p0, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationEntryManager;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public provideNotificationInterruptionStateProvider(Landroid/content/Context;)Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;
    .locals 0

    new-instance p0, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationInterruptionStateProvider;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public provideNotificationListener(Landroid/content/Context;)Lcom/android/systemui/statusbar/NotificationListener;
    .locals 0

    new-instance p0, Lcom/android/systemui/statusbar/NotificationListener;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationListener;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public provideNotificationLockscreenUserManager(Landroid/content/Context;)Lcom/android/systemui/statusbar/NotificationLockscreenUserManager;
    .locals 0

    new-instance p0, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/NotificationLockscreenUserManagerImpl;-><init>(Landroid/content/Context;)V

    return-object p0
.end method

.method public provideShadeController(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/ShadeController;
    .locals 0

    const-class p0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1, p0}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/ShadeController;

    return-object p0
.end method
