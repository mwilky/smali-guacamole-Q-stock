.class Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;
.super Ljava/lang/Object;
.source "AttentionManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/attention/AttentionManagerService$UserState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AttentionServiceConnection"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/attention/AttentionManagerService$UserState;


# direct methods
.method private constructor <init>(Lcom/android/server/attention/AttentionManagerService$UserState;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;->this$0:Lcom/android/server/attention/AttentionManagerService$UserState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/attention/AttentionManagerService$UserState;Lcom/android/server/attention/AttentionManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;-><init>(Lcom/android/server/attention/AttentionManagerService$UserState;)V

    return-void
.end method

.method private init(Landroid/service/attention/IAttentionService;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;->this$0:Lcom/android/server/attention/AttentionManagerService$UserState;

    invoke-static {v0}, Lcom/android/server/attention/AttentionManagerService$UserState;->access$1500(Lcom/android/server/attention/AttentionManagerService$UserState;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;->this$0:Lcom/android/server/attention/AttentionManagerService$UserState;

    iput-object p1, v1, Lcom/android/server/attention/AttentionManagerService$UserState;->mService:Landroid/service/attention/IAttentionService;

    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;->this$0:Lcom/android/server/attention/AttentionManagerService$UserState;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/attention/AttentionManagerService$UserState;->access$1602(Lcom/android/server/attention/AttentionManagerService$UserState;Z)Z

    iget-object v1, p0, Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;->this$0:Lcom/android/server/attention/AttentionManagerService$UserState;

    invoke-static {v1}, Lcom/android/server/attention/AttentionManagerService$UserState;->access$1700(Lcom/android/server/attention/AttentionManagerService$UserState;)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method cleanupService()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;->init(Landroid/service/attention/IAttentionService;)V

    return-void
.end method

.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;->cleanupService()V

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;->cleanupService()V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 1

    invoke-static {p2}, Landroid/service/attention/IAttentionService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/attention/IAttentionService;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;->init(Landroid/service/attention/IAttentionService;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/attention/AttentionManagerService$UserState$AttentionServiceConnection;->cleanupService()V

    return-void
.end method
