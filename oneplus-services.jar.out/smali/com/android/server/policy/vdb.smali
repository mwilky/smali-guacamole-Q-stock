.class Lcom/android/server/policy/vdb;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OpPhoneWindowManager$tsu;->updateSettings()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic QD:Z

.field final synthetic this$1:Lcom/android/server/policy/OpPhoneWindowManager$tsu;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OpPhoneWindowManager$tsu;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/vdb;->this$1:Lcom/android/server/policy/OpPhoneWindowManager$tsu;

    iput-boolean p2, p0, Lcom/android/server/policy/vdb;->QD:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/policy/vdb;->this$1:Lcom/android/server/policy/OpPhoneWindowManager$tsu;

    iget-object v0, v0, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v0}, Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;->getWindowManagerLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    new-array v2, v1, [I

    const/16 v3, 0x26

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/policy/vdb;->this$1:Lcom/android/server/policy/OpPhoneWindowManager$tsu;

    iget-object v2, v2, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    if-nez v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/policy/vdb;->this$1:Lcom/android/server/policy/OpPhoneWindowManager$tsu;

    iget-object v2, v2, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mDefaultDisplayPolicy:Lcom/android/server/wm/DisplayPolicy;

    iget-object v3, p0, Lcom/android/server/policy/vdb;->this$1:Lcom/android/server/policy/OpPhoneWindowManager$tsu;

    iget-object v3, v3, Lcom/android/server/policy/OpPhoneWindowManager$tsu;->this$0:Lcom/android/server/policy/OpPhoneWindowManager;

    invoke-virtual {v3}, Lcom/android/server/policy/OpPhoneWindowManager;->isGestureButtonEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    iget-boolean p0, p0, Lcom/android/server/policy/vdb;->QD:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    invoke-virtual {v2, v1}, Lcom/android/server/wm/DisplayPolicy;->updateNavigationBar(Z)V

    monitor-exit v0

    return-void

    :cond_2
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
