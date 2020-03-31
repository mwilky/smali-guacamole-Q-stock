.class final Lcom/oneplus/scene/OpSceneModeObserver$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OpSceneModeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/scene/OpSceneModeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mOpBrickModeStatusUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/scene/OpSceneModeObserver;


# direct methods
.method constructor <init>(Lcom/oneplus/scene/OpSceneModeObserver;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/scene/OpSceneModeObserver$SettingsObserver;->this$0:Lcom/oneplus/scene/OpSceneModeObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "op_breath_mode_status"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/scene/OpSceneModeObserver$SettingsObserver;->mOpBrickModeStatusUri:Landroid/net/Uri;

    return-void
.end method

.method static synthetic lambda$update$0(Lcom/oneplus/scene/OpSceneModeObserver$Callback;)V
    .locals 0

    invoke-interface {p0}, Lcom/oneplus/scene/OpSceneModeObserver$Callback;->onBrickModeChanged()V

    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/scene/OpSceneModeObserver$SettingsObserver;->this$0:Lcom/oneplus/scene/OpSceneModeObserver;

    invoke-static {v0}, Lcom/oneplus/scene/OpSceneModeObserver;->access$000(Lcom/oneplus/scene/OpSceneModeObserver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/scene/OpSceneModeObserver$SettingsObserver;->mOpBrickModeStatusUri:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/scene/OpSceneModeObserver$SettingsObserver;->update(Landroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/oneplus/scene/OpSceneModeObserver$SettingsObserver;->update(Landroid/net/Uri;)V

    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/scene/OpSceneModeObserver$SettingsObserver;->this$0:Lcom/oneplus/scene/OpSceneModeObserver;

    invoke-static {v0}, Lcom/oneplus/scene/OpSceneModeObserver;->access$000(Lcom/oneplus/scene/OpSceneModeObserver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/oneplus/scene/OpSceneModeObserver$SettingsObserver;->mOpBrickModeStatusUri:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const/4 v1, -0x2

    const-string v2, "op_breath_mode_status"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iget-object v1, p0, Lcom/oneplus/scene/OpSceneModeObserver$SettingsObserver;->this$0:Lcom/oneplus/scene/OpSceneModeObserver;

    invoke-static {v1}, Lcom/oneplus/scene/OpSceneModeObserver;->access$100(Lcom/oneplus/scene/OpSceneModeObserver;)Z

    move-result v1

    if-eq v1, v0, :cond_3

    iget-object v1, p0, Lcom/oneplus/scene/OpSceneModeObserver$SettingsObserver;->this$0:Lcom/oneplus/scene/OpSceneModeObserver;

    invoke-static {v1, v0}, Lcom/oneplus/scene/OpSceneModeObserver;->access$102(Lcom/oneplus/scene/OpSceneModeObserver;Z)Z

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/oneplus/plugin/OpLsState;->getInstance()Lcom/oneplus/plugin/OpLsState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/plugin/OpLsState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->onBrickModeChanged(Z)V

    :cond_1
    iget-object v1, p0, Lcom/oneplus/scene/OpSceneModeObserver$SettingsObserver;->this$0:Lcom/oneplus/scene/OpSceneModeObserver;

    invoke-static {v1}, Lcom/oneplus/scene/OpSceneModeObserver;->access$200(Lcom/oneplus/scene/OpSceneModeObserver;)Lcom/android/systemui/statusbar/NavigationBarController;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/scene/OpSceneModeObserver$SettingsObserver;->this$0:Lcom/oneplus/scene/OpSceneModeObserver;

    invoke-static {v1}, Lcom/oneplus/scene/OpSceneModeObserver;->access$200(Lcom/oneplus/scene/OpSceneModeObserver;)Lcom/android/systemui/statusbar/NavigationBarController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NavigationBarController;->getDefaultNavigationBarFragment()Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-result-object v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/scene/OpSceneModeObserver$SettingsObserver;->this$0:Lcom/oneplus/scene/OpSceneModeObserver;

    invoke-static {v1}, Lcom/oneplus/scene/OpSceneModeObserver;->access$200(Lcom/oneplus/scene/OpSceneModeObserver;)Lcom/android/systemui/statusbar/NavigationBarController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/NavigationBarController;->getDefaultNavigationBarFragment()Lcom/android/systemui/statusbar/phone/NavigationBarFragment;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/systemui/statusbar/phone/NavigationBarFragment;->onBrickModeChanged(Z)V

    :cond_2
    iget-object v0, p0, Lcom/oneplus/scene/OpSceneModeObserver$SettingsObserver;->this$0:Lcom/oneplus/scene/OpSceneModeObserver;

    invoke-static {v0}, Lcom/oneplus/scene/OpSceneModeObserver;->access$300(Lcom/oneplus/scene/OpSceneModeObserver;)Ljava/util/ArrayList;

    move-result-object v0

    sget-object v1, Lcom/oneplus/scene/-$$Lambda$OpSceneModeObserver$SettingsObserver$TUm0l-cGRNGDHGc16Oivsv0ulDQ;->INSTANCE:Lcom/oneplus/scene/-$$Lambda$OpSceneModeObserver$SettingsObserver$TUm0l-cGRNGDHGc16Oivsv0ulDQ;

    invoke-static {v0, v1}, Lcom/android/systemui/util/Utils;->safeForeach(Ljava/util/List;Ljava/util/function/Consumer;)V

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update uri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " mIsInBrickMode: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/oneplus/scene/OpSceneModeObserver$SettingsObserver;->this$0:Lcom/oneplus/scene/OpSceneModeObserver;

    invoke-static {p0}, Lcom/oneplus/scene/OpSceneModeObserver;->access$100(Lcom/oneplus/scene/OpSceneModeObserver;)Z

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "OpSceneModeObserver"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
