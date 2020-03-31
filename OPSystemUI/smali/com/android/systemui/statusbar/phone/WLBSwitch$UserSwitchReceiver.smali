.class public Lcom/android/systemui/statusbar/phone/WLBSwitch$UserSwitchReceiver;
.super Landroid/content/BroadcastReceiver;
.source "WLBSwitch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/WLBSwitch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "UserSwitchReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/WLBSwitch;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/WLBSwitch;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch$UserSwitchReceiver;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitch;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string/jumbo v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    const-string v0, "android.intent.extra.user_handle"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-static {}, Lcom/android/systemui/statusbar/phone/WLBSwitch;->access$400()Ljava/lang/String;

    move-result-object p2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: isAdmin user "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result p1

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch$UserSwitchReceiver;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitch;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/WLBSwitch;->access$100(Lcom/android/systemui/statusbar/phone/WLBSwitch;)Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->setAdminUser(Z)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch$UserSwitchReceiver;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitch;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/WLBSwitch;->access$000(Lcom/android/systemui/statusbar/phone/WLBSwitch;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch$UserSwitchReceiver;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitch;

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch$UserSwitchReceiver;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitch;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/WLBSwitch;->access$100(Lcom/android/systemui/statusbar/phone/WLBSwitch;)Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch$UserSwitchReceiver;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitch;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/WLBSwitch;->access$200(Lcom/android/systemui/statusbar/phone/WLBSwitch;)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch$UserSwitchReceiver;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitch;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitch;->access$100(Lcom/android/systemui/statusbar/phone/WLBSwitch;)Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->onWLBModeChanged()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/WLBSwitch;->access$400()Ljava/lang/String;

    move-result-object p0

    const-string p1, "onReceive: Controller null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch$UserSwitchReceiver;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitch;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch$UserSwitchReceiver;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitch;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/WLBSwitch;->access$100(Lcom/android/systemui/statusbar/phone/WLBSwitch;)Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->setAdminUser(Z)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch$UserSwitchReceiver;->this$0:Lcom/android/systemui/statusbar/phone/WLBSwitch;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitch;->access$100(Lcom/android/systemui/statusbar/phone/WLBSwitch;)Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->hideStatusBarIcon()V

    :goto_0
    return-void
.end method
