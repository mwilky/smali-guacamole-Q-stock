.class public Lcom/android/server/job/JobSchedulerServiceInjector;
.super Ljava/lang/Object;
.source "JobSchedulerServiceInjector.java"


# static fields
.field private static final DEBUG:Z

.field private static final DEBUG_INJECTOR:Z

.field private static final TAG:Ljava/lang/String; = "JobSchedulerServiceInjector"

.field private static mInner:Lcom/android/server/job/JobSchedulerService$JobSchedulerServiceInner;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/job/JobSchedulerServiceInjector;->DEBUG:Z

    const-string v0, "JobSchedulerServiceInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/job/JobSchedulerServiceInjector;->DEBUG_INJECTOR:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static onDeviceIdleStateChanged(Z)V
    .locals 1

    sget-object v0, Lcom/android/server/job/JobSchedulerServiceInjector;->mInner:Lcom/android/server/job/JobSchedulerService$JobSchedulerServiceInner;

    invoke-virtual {v0, p0}, Lcom/android/server/job/JobSchedulerService$JobSchedulerServiceInner;->onDeviceIdleStateChanged(Z)V

    return-void
.end method

.method static prepare(Lcom/android/server/job/JobSchedulerService$JobSchedulerServiceInner;)V
    .locals 0

    sput-object p0, Lcom/android/server/job/JobSchedulerServiceInjector;->mInner:Lcom/android/server/job/JobSchedulerService$JobSchedulerServiceInner;

    return-void
.end method
