.class Lcom/oneplus/systemui/power/OpPowerUI$1;
.super Landroid/database/ContentObserver;
.source "OpPowerUI.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/systemui/power/OpPowerUI;->registerObserverInternal(Landroid/content/ContentResolver;Landroid/os/Handler;Landroid/os/PowerManager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/systemui/power/OpPowerUI;

.field final synthetic val$powerManager:Landroid/os/PowerManager;


# direct methods
.method constructor <init>(Lcom/oneplus/systemui/power/OpPowerUI;Landroid/os/Handler;Landroid/os/PowerManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/systemui/power/OpPowerUI$1;->this$0:Lcom/oneplus/systemui/power/OpPowerUI;

    iput-object p3, p0, Lcom/oneplus/systemui/power/OpPowerUI$1;->val$powerManager:Landroid/os/PowerManager;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    const-string p1, "screen_off_timeout"

    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onChange:SCREEN_OFF_TIMEOUT:mSelfChange="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/systemui/power/OpPowerUI$1;->this$0:Lcom/oneplus/systemui/power/OpPowerUI;

    invoke-static {v0}, Lcom/oneplus/systemui/power/OpPowerUI;->access$000(Lcom/oneplus/systemui/power/OpPowerUI;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", mSelfChangeRestore="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oneplus/systemui/power/OpPowerUI$1;->this$0:Lcom/oneplus/systemui/power/OpPowerUI;

    invoke-static {v0}, Lcom/oneplus/systemui/power/OpPowerUI;->access$100(Lcom/oneplus/systemui/power/OpPowerUI;)Z

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "OpPowerUI"

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/oneplus/systemui/power/OpPowerUI$1;->val$powerManager:Landroid/os/PowerManager;

    invoke-virtual {p2}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/oneplus/systemui/power/OpPowerUI$1;->this$0:Lcom/oneplus/systemui/power/OpPowerUI;

    invoke-static {p2}, Lcom/oneplus/systemui/power/OpPowerUI;->access$000(Lcom/oneplus/systemui/power/OpPowerUI;)Z

    move-result p2

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/oneplus/systemui/power/OpPowerUI$1;->this$0:Lcom/oneplus/systemui/power/OpPowerUI;

    invoke-static {p0, v1}, Lcom/oneplus/systemui/power/OpPowerUI;->access$002(Lcom/oneplus/systemui/power/OpPowerUI;Z)Z

    goto :goto_0

    :cond_0
    iget-object p2, p0, Lcom/oneplus/systemui/power/OpPowerUI$1;->this$0:Lcom/oneplus/systemui/power/OpPowerUI;

    invoke-static {p2}, Lcom/oneplus/systemui/power/OpPowerUI;->access$100(Lcom/oneplus/systemui/power/OpPowerUI;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p0, p0, Lcom/oneplus/systemui/power/OpPowerUI$1;->this$0:Lcom/oneplus/systemui/power/OpPowerUI;

    invoke-static {p0, v1}, Lcom/oneplus/systemui/power/OpPowerUI;->access$102(Lcom/oneplus/systemui/power/OpPowerUI;Z)Z

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/oneplus/systemui/power/OpPowerUI$1;->this$0:Lcom/oneplus/systemui/power/OpPowerUI;

    iget-object v2, p2, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v3, 0x7530

    iget-object v4, p0, Lcom/oneplus/systemui/power/OpPowerUI$1;->this$0:Lcom/oneplus/systemui/power/OpPowerUI;

    invoke-static {v4}, Lcom/oneplus/systemui/power/OpPowerUI;->access$300(Lcom/oneplus/systemui/power/OpPowerUI;)I

    move-result v4

    invoke-static {v2, p1, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p1

    invoke-static {p2, p1}, Lcom/oneplus/systemui/power/OpPowerUI;->access$202(Lcom/oneplus/systemui/power/OpPowerUI;I)I

    iget-object p1, p0, Lcom/oneplus/systemui/power/OpPowerUI$1;->this$0:Lcom/oneplus/systemui/power/OpPowerUI;

    invoke-static {p1, v1}, Lcom/oneplus/systemui/power/OpPowerUI;->access$400(Lcom/oneplus/systemui/power/OpPowerUI;I)V

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "SettingsObserver:onChange:User changed the timeout during power saving mode: mScreenTimeout="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/systemui/power/OpPowerUI$1;->this$0:Lcom/oneplus/systemui/power/OpPowerUI;

    invoke-static {p0}, Lcom/oneplus/systemui/power/OpPowerUI;->access$200(Lcom/oneplus/systemui/power/OpPowerUI;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
