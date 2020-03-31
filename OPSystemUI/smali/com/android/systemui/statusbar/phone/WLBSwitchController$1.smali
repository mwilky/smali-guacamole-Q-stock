.class Lcom/android/systemui/statusbar/phone/WLBSwitchController$1;
.super Ljava/lang/Object;
.source "WLBSwitchController.java"

# interfaces
.implements Lcom/android/systemui/plugins/qs/DetailAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/WLBSwitchController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

.field private wlbSettingsIntent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$1;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.oneplus.intent.ACTION_LAUNCH_WLB"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$1;->wlbSettingsIntent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    instance-of v0, p2, Lcom/android/systemui/statusbar/phone/WLBDetailView;

    if-nez v0, :cond_0

    const/4 p2, 0x0

    invoke-static {p1, p3, p2}, Lcom/android/systemui/statusbar/phone/WLBDetailView;->inflate(Landroid/content/Context;Landroid/view/ViewGroup;Z)Lcom/android/systemui/statusbar/phone/WLBDetailView;

    move-result-object p1

    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$1;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/WLBDetailView;->createAndSetAdapter(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)V

    goto :goto_0

    :cond_0
    move-object p1, p2

    check-cast p1, Lcom/android/systemui/statusbar/phone/WLBDetailView;

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$1;->getActiveMode()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/WLBDetailView;->refreshAdapter(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$1;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->access$100(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/WLBDetailView;->setIsFullyExpanded(Z)V

    return-object p1
.end method

.method public getActiveMode()I
    .locals 2

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$1;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->access$000(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "oneplus_wlb_activated_mode"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    const/16 p0, 0x7d6

    return p0
.end method

.method public getSettingsIntent()Landroid/content/Intent;
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$1;->wlbSettingsIntent:Landroid/content/Intent;

    const-string v1, "launch_from_system_ui"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$1;->wlbSettingsIntent:Landroid/content/Intent;

    return-object p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$1;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->access$000(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)Landroid/content/Context;

    move-result-object p0

    sget v0, Lcom/android/systemui/R$string;->work_life_balance_mode:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getToggleState()Ljava/lang/Boolean;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method public setToggleState(Z)V
    .locals 0

    return-void
.end method
