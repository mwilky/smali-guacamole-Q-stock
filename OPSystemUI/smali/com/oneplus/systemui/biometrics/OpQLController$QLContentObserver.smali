.class final Lcom/oneplus/systemui/biometrics/OpQLController$QLContentObserver;
.super Landroid/database/ContentObserver;
.source "OpQLController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/systemui/biometrics/OpQLController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "QLContentObserver"
.end annotation


# instance fields
.field private final mQLAppsUri:Landroid/net/Uri;

.field private final mQLEnableUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/systemui/biometrics/OpQLController;


# direct methods
.method public constructor <init>(Lcom/oneplus/systemui/biometrics/OpQLController;)V
    .locals 4

    iput-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLController$QLContentObserver;->this$0:Lcom/oneplus/systemui/biometrics/OpQLController;

    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpQLController;->access$000(Lcom/oneplus/systemui/biometrics/OpQLController;)Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "op_quickpay_enable"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLController$QLContentObserver;->mQLEnableUri:Landroid/net/Uri;

    const-string v0, "op_quick_launch_apps"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLController$QLContentObserver;->mQLAppsUri:Landroid/net/Uri;

    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpQLController;->access$100(Lcom/oneplus/systemui/biometrics/OpQLController;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/systemui/biometrics/OpQLController$QLContentObserver;->mQLEnableUri:Landroid/net/Uri;

    const/4 v2, -0x1

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-static {p1}, Lcom/oneplus/systemui/biometrics/OpQLController;->access$100(Lcom/oneplus/systemui/biometrics/OpQLController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLController$QLContentObserver;->mQLAppsUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/oneplus/systemui/biometrics/OpQLController$QLContentObserver;->onChange()V

    return-void
.end method

.method private updateQuickLaunchApps()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLController$QLContentObserver;->this$0:Lcom/oneplus/systemui/biometrics/OpQLController;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpQLController;->access$100(Lcom/oneplus/systemui/biometrics/OpQLController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_quick_launch_apps"

    invoke-static {v1, v2}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/systemui/biometrics/OpQLController;->access$402(Lcom/oneplus/systemui/biometrics/OpQLController;Ljava/lang/String;)Ljava/lang/String;

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpQLController;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "op_quick_launch_apps change "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLController$QLContentObserver;->this$0:Lcom/oneplus/systemui/biometrics/OpQLController;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpQLController;->access$400(Lcom/oneplus/systemui/biometrics/OpQLController;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpQLController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateQuickpayEnable()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/systemui/biometrics/OpQLController$QLContentObserver;->this$0:Lcom/oneplus/systemui/biometrics/OpQLController;

    invoke-static {v0}, Lcom/oneplus/systemui/biometrics/OpQLController;->access$100(Lcom/oneplus/systemui/biometrics/OpQLController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x0

    const-string v3, "op_quickpay_enable"

    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    move v2, v3

    :cond_0
    invoke-static {v0, v2}, Lcom/oneplus/systemui/biometrics/OpQLController;->access$202(Lcom/oneplus/systemui/biometrics/OpQLController;Z)Z

    invoke-static {}, Lcom/oneplus/systemui/biometrics/OpQLController;->access$300()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "op_quickpay_enable "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/systemui/biometrics/OpQLController$QLContentObserver;->this$0:Lcom/oneplus/systemui/biometrics/OpQLController;

    invoke-static {p0}, Lcom/oneplus/systemui/biometrics/OpQLController;->access$200(Lcom/oneplus/systemui/biometrics/OpQLController;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "OpQLController"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method


# virtual methods
.method public onChange()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpQLController$QLContentObserver;->updateQuickpayEnable()V

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpQLController$QLContentObserver;->updateQuickLaunchApps()V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLController$QLContentObserver;->mQLEnableUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpQLController$QLContentObserver;->updateQuickpayEnable()V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/oneplus/systemui/biometrics/OpQLController$QLContentObserver;->mQLAppsUri:Landroid/net/Uri;

    invoke-virtual {p1, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/oneplus/systemui/biometrics/OpQLController$QLContentObserver;->updateQuickLaunchApps()V

    :cond_1
    :goto_0
    return-void
.end method
