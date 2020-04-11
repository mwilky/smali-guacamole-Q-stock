.class public Lcom/google/android/setupcompat/internal/LifecycleFragment;
.super Landroid/app/Fragment;
.source "LifecycleFragment.java"


# static fields
.field private static final FRAGMENT_ID:Ljava/lang/String; = "lifecycle_monitor"

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private durationInNanos:J

.field private metricKey:Lcom/google/android/setupcompat/logging/MetricKey;

.field private startInNanos:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/google/android/setupcompat/internal/LifecycleFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->durationInNanos:J

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/setupcompat/internal/LifecycleFragment;->setRetainInstance(Z)V

    return-void
.end method

.method public static attachNow(Landroid/app/Activity;)Lcom/google/android/setupcompat/internal/LifecycleFragment;
    .locals 7

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isAnySetupWizard(Landroid/content/Intent;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;

    move-result-object v0

    invoke-static {p0}, Lcom/google/android/setupcompat/internal/LayoutBindBackHelper;->getScreenName(Landroid/app/Activity;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p0}, Lcom/google/android/setupcompat/internal/LayoutBindBackHelper;->getExtraBundle(Landroid/app/Activity;)Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/google/android/setupcompat/internal/SetupCompatServiceInvoker;->bindBack(Ljava/lang/String;Landroid/os/Bundle;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-le v0, v2, :cond_2

    invoke-virtual {p0}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/app/FragmentManager;->isDestroyed()Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "lifecycle_monitor"

    invoke-virtual {v0, v2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v3

    if-nez v3, :cond_0

    new-instance v1, Lcom/google/android/setupcompat/internal/LifecycleFragment;

    invoke-direct {v1}, Lcom/google/android/setupcompat/internal/LifecycleFragment;-><init>()V

    :try_start_0
    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/app/FragmentTransaction;->add(Landroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->commitNow()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v1

    goto :goto_0

    :catch_0
    move-exception v2

    sget-object v4, Lcom/google/android/setupcompat/internal/LifecycleFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error occurred when attach to Activity:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/app/Activity;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    instance-of v2, v3, Lcom/google/android/setupcompat/internal/LifecycleFragment;

    if-nez v2, :cond_1

    sget-object v2, Lcom/google/android/setupcompat/internal/LifecycleFragment;->LOG_TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Incorrect instance on lifecycle fragment."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return-object v1

    :cond_1
    :goto_0
    nop

    move-object v1, v3

    check-cast v1, Lcom/google/android/setupcompat/internal/LifecycleFragment;

    return-object v1

    :cond_2
    return-object v1
.end method


# virtual methods
.method public onAttach(Landroid/content/Context;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/google/android/setupcompat/internal/LifecycleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ScreenDuration"

    invoke-static {v1, v0}, Lcom/google/android/setupcompat/logging/MetricKey;->get(Ljava/lang/String;Ljava/lang/String;)Lcom/google/android/setupcompat/logging/MetricKey;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->metricKey:Lcom/google/android/setupcompat/logging/MetricKey;

    return-void
.end method

.method public onDetach()V
    .locals 5

    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    invoke-virtual {p0}, Lcom/google/android/setupcompat/internal/LifecycleFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->metricKey:Lcom/google/android/setupcompat/logging/MetricKey;

    sget-object v2, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v3, p0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->durationInNanos:J

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/google/android/setupcompat/logging/SetupMetricsLogger;->logDuration(Landroid/content/Context;Lcom/google/android/setupcompat/logging/MetricKey;J)V

    return-void
.end method

.method public onPause()V
    .locals 6

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-wide v0, p0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->durationInNanos:J

    invoke-static {}, Lcom/google/android/setupcompat/internal/ClockProvider;->timeInNanos()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->startInNanos:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->durationInNanos:J

    return-void
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    invoke-static {}, Lcom/google/android/setupcompat/internal/ClockProvider;->timeInNanos()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/setupcompat/internal/LifecycleFragment;->startInNanos:J

    return-void
.end method
