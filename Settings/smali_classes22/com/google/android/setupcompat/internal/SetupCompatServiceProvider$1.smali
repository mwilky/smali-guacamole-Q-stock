.class Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$1;
.super Ljava/lang/Object;
.source "SetupCompatServiceProvider.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;


# direct methods
.method constructor <init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$1;->this$0:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBindingDied(Landroid/content/ComponentName;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$1;->this$0:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    new-instance v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    sget-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->REBIND_REQUIRED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;-><init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$1;)V

    invoke-static {v0, v1}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->access$200(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;)V

    return-void
.end method

.method public onNullBinding(Landroid/content/ComponentName;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$1;->this$0:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    new-instance v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    sget-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->SERVICE_NOT_USABLE:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;-><init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$1;)V

    invoke-static {v0, v1}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->access$200(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;)V

    return-void
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 5

    sget-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->CONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    if-nez p2, :cond_0

    sget-object v0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->DISCONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    const-string v1, "SucServiceProvider"

    const-string v2, "Binder is null when onServiceConnected was called!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$1;->this$0:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    new-instance v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    invoke-static {p2}, Lcom/google/android/setupcompat/ISetupCompatService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/android/setupcompat/ISetupCompatService;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v0, v3, v4}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;-><init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;Lcom/google/android/setupcompat/ISetupCompatService;Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$1;)V

    invoke-static {v1, v2}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->access$200(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;)V

    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4

    iget-object v0, p0, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$1;->this$0:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;

    new-instance v1, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;

    sget-object v2, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;->DISCONNECTED:Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;-><init>(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$State;Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$1;)V

    invoke-static {v0, v1}, Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;->access$200(Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider;Lcom/google/android/setupcompat/internal/SetupCompatServiceProvider$ServiceContext;)V

    return-void
.end method
