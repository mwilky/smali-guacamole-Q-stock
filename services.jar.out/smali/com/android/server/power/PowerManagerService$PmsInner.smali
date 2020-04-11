.class public final Lcom/android/server/power/PowerManagerService$PmsInner;
.super Ljava/lang/Object;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PmsInner"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$PmsInner;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public GetConstants()Lcom/android/server/power/PowerManagerService$Constants;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PmsInner;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mConstants:Lcom/android/server/power/PowerManagerService$Constants;

    return-object v0
.end method

.method public GetContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PmsInner;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$100(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public GetDeviceIdleTempWhitelist()[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PmsInner;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleTempWhitelist:[I

    return-object v0
.end method

.method public GetDeviceIdleWhitelist()[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PmsInner;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mDeviceIdleWhitelist:[I

    return-object v0
.end method

.method public GetLock()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PmsInner;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$400(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public GetNotifyLongScheduled()J
    .locals 2

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PmsInner;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$800(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v0

    return-wide v0
.end method

.method public GetPowerManagerHandler()Lcom/android/server/power/PowerManagerService$PowerManagerHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PmsInner;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$000(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v0

    return-object v0
.end method

.method public GetWakelocks()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/power/PowerManagerService$WakeLock;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PmsInner;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$200(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceIdleMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PmsInner;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$300(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    return v0
.end method

.method public getForceSuspendActive()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PmsInner;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$600(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    return v0
.end method

.method public getLightDeviceIdleMode()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PmsInner;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$500(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    return v0
.end method

.method public updateWakeLockDisabledStatesLockedInner()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$PmsInner;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->access$700(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method
