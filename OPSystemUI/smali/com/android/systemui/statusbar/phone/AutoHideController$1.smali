.class Lcom/android/systemui/statusbar/phone/AutoHideController$1;
.super Landroid/database/ContentObserver;
.source "AutoHideController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/AutoHideController;->getSwapNavObserver(Landroid/os/Handler;)Landroid/database/ContentObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/AutoHideController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/AutoHideController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController$1;->this$0:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController$1;->this$0:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->access$000(Lcom/android/systemui/statusbar/phone/AutoHideController;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "oem_acc_key_define"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "swap key from "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/AutoHideController$1;->this$0:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/AutoHideController;->access$100(Lcom/android/systemui/statusbar/phone/AutoHideController;)Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v2, "AutoHideController"

    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController$1;->this$0:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->access$100(Lcom/android/systemui/statusbar/phone/AutoHideController;)Z

    move-result p1

    if-eq p1, v1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController$1;->this$0:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->access$102(Lcom/android/systemui/statusbar/phone/AutoHideController;Z)Z

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoHideController$1;->this$0:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/AutoHideController;->access$200(Lcom/android/systemui/statusbar/phone/AutoHideController;)Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/AutoHideController$1;->this$0:Lcom/android/systemui/statusbar/phone/AutoHideController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/AutoHideController;->access$200(Lcom/android/systemui/statusbar/phone/AutoHideController;)Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-result-object p0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->refreshLayout(I)V

    :cond_1
    return-void
.end method
