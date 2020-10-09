.class public Lcom/android/server/wm/OpScreenModeService$tsu;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpScreenModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "tsu"
.end annotation


# static fields
.field private static final Aa:I = 0x13

.field private static final Ba:I = 0x14

.field private static final Ca:I = 0x15

.field private static final MSG_GET_ONLINECONFIG:I = 0x1

.field private static final va:I = 0x2

.field private static final wa:I = 0x3

.field private static final xa:I = 0x4

.field private static final ya:I = 0x5

.field private static final za:I = 0x12


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/OpScreenModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/OpScreenModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpScreenModeService$tsu;->this$0:Lcom/android/server/wm/OpScreenModeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    const/4 p1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService$tsu;->this$0:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {v0}, Lcom/android/server/wm/OpScreenModeService;->access$700(Lcom/android/server/wm/OpScreenModeService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/wm/OpScreenModeService$tsu;->this$0:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {v1, p1}, Lcom/android/server/wm/OpScreenModeService;->access$802(Lcom/android/server/wm/OpScreenModeService;Z)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$tsu;->this$0:Lcom/android/server/wm/OpScreenModeService;

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    sget-boolean p0, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    if-eqz p0, :cond_5

    const-string p0, "ScreenModeService"

    const-string p1, " mAudioRecordStatus = false"

    goto :goto_0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :pswitch_1
    iget-object p1, p0, Lcom/android/server/wm/OpScreenModeService$tsu;->this$0:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {p1}, Lcom/android/server/wm/OpScreenModeService;->access$700(Lcom/android/server/wm/OpScreenModeService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_2
    iget-object p1, p0, Lcom/android/server/wm/OpScreenModeService$tsu;->this$0:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {p1, v1}, Lcom/android/server/wm/OpScreenModeService;->access$802(Lcom/android/server/wm/OpScreenModeService;Z)Z

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$tsu;->this$0:Lcom/android/server/wm/OpScreenModeService;

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    sget-boolean p0, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    if-eqz p0, :cond_5

    const-string p0, "ScreenModeService"

    const-string p1, " mAudioRecordStatus = true"

    goto :goto_0

    :catchall_1
    move-exception p0

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw p0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService$tsu;->this$0:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {v0}, Lcom/android/server/wm/OpScreenModeService;->access$500(Lcom/android/server/wm/OpScreenModeService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_4
    iget-object v1, p0, Lcom/android/server/wm/OpScreenModeService$tsu;->this$0:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {v1, p1}, Lcom/android/server/wm/OpScreenModeService;->access$602(Lcom/android/server/wm/OpScreenModeService;Z)Z

    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$tsu;->this$0:Lcom/android/server/wm/OpScreenModeService;

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    sget-boolean p0, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    if-eqz p0, :cond_5

    const-string p0, "ScreenModeService"

    const-string p1, " mInputMethodMode = false"

    goto :goto_0

    :catchall_2
    move-exception p0

    :try_start_5
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw p0

    :pswitch_3
    iget-object p1, p0, Lcom/android/server/wm/OpScreenModeService$tsu;->this$0:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {p1}, Lcom/android/server/wm/OpScreenModeService;->access$500(Lcom/android/server/wm/OpScreenModeService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_6
    iget-object p1, p0, Lcom/android/server/wm/OpScreenModeService$tsu;->this$0:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {p1, v1}, Lcom/android/server/wm/OpScreenModeService;->access$602(Lcom/android/server/wm/OpScreenModeService;Z)Z

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$tsu;->this$0:Lcom/android/server/wm/OpScreenModeService;

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    sget-boolean p0, Lcom/android/server/wm/OpScreenModeService;->DEBUG:Z

    if-eqz p0, :cond_5

    const-string p0, "ScreenModeService"

    const-string p1, " mInputMethodMode = true"

    :goto_0
    invoke-static {p0, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catchall_3
    move-exception p0

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw p0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService$tsu;->this$0:Lcom/android/server/wm/OpScreenModeService;

    iget-object v0, v0, Lcom/android/server/wm/OpScreenModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$tsu;->this$0:Lcom/android/server/wm/OpScreenModeService;

    iget p0, p0, Lcom/android/server/wm/OpScreenModeService;->mResolotionSettings:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v1, "oneplus_screen_resolution_backup"

    invoke-static {v0, v1, p0, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$tsu;->this$0:Lcom/android/server/wm/OpScreenModeService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/wm/OpScreenModeService;->access$400(Lcom/android/server/wm/OpScreenModeService;I)V

    goto :goto_1

    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/OpScreenModeService$tsu;->this$0:Lcom/android/server/wm/OpScreenModeService;

    iget v0, p1, Lcom/android/server/wm/OpScreenModeService;->mScreenRateSettings:I

    iget v1, p1, Lcom/android/server/wm/OpScreenModeService;->mResolotionSettings:I

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/OpScreenModeService;->getModeRecord(II)Lcom/android/server/wm/OpScreenModeService$you;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/OpScreenModeService$you;->mode:Landroid/view/Display$Mode;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getModeId()I

    move-result v0

    iput v0, p1, Lcom/android/server/wm/OpScreenModeService;->mCurrentModeId:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateResolution to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$tsu;->this$0:Lcom/android/server/wm/OpScreenModeService;

    iget p0, p0, Lcom/android/server/wm/OpScreenModeService;->mResolotionSettings:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScreenModeService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$tsu;->this$0:Lcom/android/server/wm/OpScreenModeService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/AppWindowToken;

    invoke-static {p0, p1}, Lcom/android/server/wm/OpScreenModeService;->access$300(Lcom/android/server/wm/OpScreenModeService;Lcom/android/server/wm/AppWindowToken;)V

    goto :goto_1

    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$tsu;->this$0:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {p0}, Lcom/android/server/wm/OpScreenModeService;->access$200(Lcom/android/server/wm/OpScreenModeService;)V

    :cond_5
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
