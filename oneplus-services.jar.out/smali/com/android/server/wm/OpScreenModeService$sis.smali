.class public Lcom/android/server/wm/OpScreenModeService$sis;
.super Landroid/os/Handler;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/OpScreenModeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "sis"
.end annotation


# static fields
.field private static final MSG_GET_ONLINECONFIG:I = 0x1

.field private static final na:I = 0x2

.field private static final oa:I = 0x3

.field private static final pa:I = 0x4

.field private static final qa:I = 0x5


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/OpScreenModeService;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/OpScreenModeService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/OpScreenModeService$sis;->this$0:Lcom/android/server/wm/OpScreenModeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/OpScreenModeService$sis;->this$0:Lcom/android/server/wm/OpScreenModeService;

    iget-object v0, v0, Lcom/android/server/wm/OpScreenModeService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$sis;->this$0:Lcom/android/server/wm/OpScreenModeService;

    iget p0, p0, Lcom/android/server/wm/OpScreenModeService;->mResolotionSettings:I

    iget p1, p1, Landroid/os/Message;->arg2:I

    const-string v1, "oneplus_screen_resolution_backup"

    invoke-static {v0, v1, p0, p1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    :cond_1
    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$sis;->this$0:Lcom/android/server/wm/OpScreenModeService;

    iget p1, p1, Landroid/os/Message;->arg1:I

    invoke-static {p0, p1}, Lcom/android/server/wm/OpScreenModeService;->access$400(Lcom/android/server/wm/OpScreenModeService;I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/android/server/wm/OpScreenModeService$sis;->this$0:Lcom/android/server/wm/OpScreenModeService;

    iget v0, p1, Lcom/android/server/wm/OpScreenModeService;->mScreenRateSettings:I

    iget v1, p1, Lcom/android/server/wm/OpScreenModeService;->mResolotionSettings:I

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/OpScreenModeService;->getModeRecord(II)Lcom/android/server/wm/OpScreenModeService$zta;

    move-result-object v0

    iget-object v0, v0, Lcom/android/server/wm/OpScreenModeService$zta;->mode:Landroid/view/Display$Mode;

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getModeId()I

    move-result v0

    iput v0, p1, Lcom/android/server/wm/OpScreenModeService;->mCurrentModeId:I

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "updateResolution to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$sis;->this$0:Lcom/android/server/wm/OpScreenModeService;

    iget p0, p0, Lcom/android/server/wm/OpScreenModeService;->mResolotionSettings:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScreenModeService"

    invoke-static {p1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$sis;->this$0:Lcom/android/server/wm/OpScreenModeService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lcom/android/server/wm/AppWindowToken;

    invoke-static {p0, p1}, Lcom/android/server/wm/OpScreenModeService;->access$300(Lcom/android/server/wm/OpScreenModeService;Lcom/android/server/wm/AppWindowToken;)V

    goto :goto_0

    :cond_4
    iget-object p0, p0, Lcom/android/server/wm/OpScreenModeService$sis;->this$0:Lcom/android/server/wm/OpScreenModeService;

    invoke-static {p0}, Lcom/android/server/wm/OpScreenModeService;->access$200(Lcom/android/server/wm/OpScreenModeService;)V

    :goto_0
    return-void
.end method
