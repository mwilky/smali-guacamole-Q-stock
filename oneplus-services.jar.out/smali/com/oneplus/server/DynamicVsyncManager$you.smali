.class final Lcom/oneplus/server/DynamicVsyncManager$you;
.super Landroid/database/ContentObserver;
.source ""


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/DynamicVsyncManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "you"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/server/DynamicVsyncManager;


# direct methods
.method public constructor <init>(Lcom/oneplus/server/DynamicVsyncManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/DynamicVsyncManager$you;->this$0:Lcom/oneplus/server/DynamicVsyncManager;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object p1, p0, Lcom/oneplus/server/DynamicVsyncManager$you;->this$0:Lcom/oneplus/server/DynamicVsyncManager;

    invoke-static {p1}, Lcom/oneplus/server/DynamicVsyncManager;->rtg(Lcom/oneplus/server/DynamicVsyncManager;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x2

    const-string v0, "oneplus_screen_refresh_rate"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager$you;->this$0:Lcom/oneplus/server/DynamicVsyncManager;

    invoke-static {v0}, Lcom/oneplus/server/DynamicVsyncManager;->dma(Lcom/oneplus/server/DynamicVsyncManager;)I

    move-result v0

    if-eq p1, v0, :cond_2

    if-ne p1, p2, :cond_1

    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p2

    invoke-static {}, Lcom/oneplus/server/DynamicVsyncManager;->getInstance()Lcom/oneplus/server/DynamicVsyncManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/OnePlusUtil$zta;->zta(Lcom/android/server/OnePlusUtil$zta$you;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/OnePlusUtil$zta;->getInstance()Lcom/android/server/OnePlusUtil$zta;

    move-result-object p2

    invoke-static {}, Lcom/oneplus/server/DynamicVsyncManager;->getInstance()Lcom/oneplus/server/DynamicVsyncManager;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/server/OnePlusUtil$zta;->you(Lcom/android/server/OnePlusUtil$zta$you;)V

    :goto_0
    iget-object p2, p0, Lcom/oneplus/server/DynamicVsyncManager$you;->this$0:Lcom/oneplus/server/DynamicVsyncManager;

    invoke-static {p2}, Lcom/oneplus/server/DynamicVsyncManager;->igw(Lcom/oneplus/server/DynamicVsyncManager;)Ljava/lang/Object;

    move-result-object p2

    monitor-enter p2

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/server/DynamicVsyncManager$you;->this$0:Lcom/oneplus/server/DynamicVsyncManager;

    invoke-static {v0, p1}, Lcom/oneplus/server/DynamicVsyncManager;->rtg(Lcom/oneplus/server/DynamicVsyncManager;I)I

    iget-object p0, p0, Lcom/oneplus/server/DynamicVsyncManager$you;->this$0:Lcom/oneplus/server/DynamicVsyncManager;

    invoke-static {p0}, Lcom/oneplus/server/DynamicVsyncManager;->gck(Lcom/oneplus/server/DynamicVsyncManager;)V

    monitor-exit p2

    goto :goto_1

    :catchall_0
    move-exception p0

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    :goto_1
    return-void
.end method
