.class Lcom/android/server/power/OnePlusLoggingService$MDMRunnable;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/OnePlusLoggingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MDMRunnable"
.end annotation


# static fields
.field private static final MDM_APPID:Ljava/lang/String; = "NYNCG4I0TI"

.field private static final MDM_EVENT:Ljava/lang/String; = "usersleep"

.field private static final MDM_OPSM_CONFIG:Ljava/lang/String; = "oc"

.field private static final OPSM_DISABLED_BY_SYSTEM:I = -0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mJobService:Landroid/app/job/JobService;

.field private mParams:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private finishJob(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/OnePlusLoggingService$MDMRunnable;->mJobService:Landroid/app/job/JobService;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/server/power/OnePlusLoggingService$MDMRunnable;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v0, p0, p1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/android/server/power/OnePlusLoggingService;->access$000()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/android/server/power/OnePlusLoggingService;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "run the scheduled job, elapsedTime="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/power/OnePlusLoggingService$MDMRunnable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    const-string v2, "optimal_power_save_mode_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lnet/oneplus/odm/OpDeviceManagerInjector;->getInstance()Lnet/oneplus/odm/OpDeviceManagerInjector;

    move-result-object v1

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v3, "oc"

    invoke-virtual {v2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v3, "appid"

    const-string v4, "NYNCG4I0TI"

    invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/android/server/power/OnePlusLoggingService$MDMRunnable;->mContext:Landroid/content/Context;

    const-string v4, "usersleep"

    invoke-virtual {v1, v3, v4, v2, v0}, Lnet/oneplus/odm/OpDeviceManagerInjector;->preserveOsData(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/power/OnePlusLoggingService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/android/server/power/OnePlusLoggingService;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Not report MDM this time!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/power/OnePlusLoggingService$MDMRunnable;->finishJob(Z)V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/OnePlusLoggingService$MDMRunnable;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setJobService(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/OnePlusLoggingService$MDMRunnable;->mJobService:Landroid/app/job/JobService;

    iput-object p2, p0, Lcom/android/server/power/OnePlusLoggingService$MDMRunnable;->mParams:Landroid/app/job/JobParameters;

    return-void
.end method
