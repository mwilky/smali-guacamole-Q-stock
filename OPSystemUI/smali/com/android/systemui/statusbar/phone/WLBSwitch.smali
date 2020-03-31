.class public Lcom/android/systemui/statusbar/phone/WLBSwitch;
.super Landroid/widget/FrameLayout;
.source "WLBSwitch.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBSwitchCallbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/WLBSwitch$UserSwitchReceiver;,
        Lcom/android/systemui/statusbar/phone/WLBSwitch$FeatureDisableObserver;,
        Lcom/android/systemui/statusbar/phone/WLBSwitch$SettingsObserver;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WLBSwitch"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFeatureDisableObr:Lcom/android/systemui/statusbar/phone/WLBSwitch$FeatureDisableObserver;

.field protected mQsPanel:Lcom/android/systemui/qs/QSPanel;

.field private mSettingsObserver:Lcom/android/systemui/statusbar/phone/WLBSwitch$SettingsObserver;

.field private final mTmpInt2:[I

.field private mUserSwitchReceiver:Lcom/android/systemui/statusbar/phone/WLBSwitch$UserSwitchReceiver;

.field private mWlbAvathar:Landroid/widget/ImageView;

.field private mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x2

    new-array p2, p2, [I

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mTmpInt2:[I

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/WLBSwitch;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitch;->readCurrentMode()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/WLBSwitch;)Lcom/android/systemui/statusbar/phone/WLBSwitchController;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/WLBSwitch;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitch;->updateSWitchToCurrentMode()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/phone/WLBSwitch;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitch;->handleFeature()V

    return-void
.end method

.method static synthetic access$400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private handleFeature()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string/jumbo v2, "worklife_feature_enable"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    goto :goto_1

    :cond_1
    :goto_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->setCurrentMode(I)V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->onWLBModeChanged()V

    :goto_1
    return-void
.end method

.method private readCurrentMode()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "oneplus_wlb_activated_mode"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->setCurrentMode(I)V

    return-void
.end method

.method private updateSWitchToCurrentMode()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->getCurrentMode()I

    move-result v0

    if-lez v0, :cond_0

    sget v0, Lcom/oneplus/util/ThemeColorUtils;->QS_ACCENT:I

    invoke-static {v0}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbAvathar:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    sget-object v0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current Mode changed to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->getCurrentMode()I

    move-result p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    sget v0, Lcom/oneplus/util/ThemeColorUtils;->QS_BUTTON:I

    invoke-static {v0}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbAvathar:Landroid/widget/ImageView;

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    return-void
.end method


# virtual methods
.method protected getUserDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->wlbDetailAdapter:Lcom/android/systemui/plugins/qs/DetailAdapter;

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    sget-object p1, Lcom/android/systemui/statusbar/phone/WLBSwitch;->TAG:Ljava/lang/String;

    const-string v0, "WLB switch clicked "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string p1, "qt_enter"

    const-string v0, "1"

    const-string v1, "C22AG9UUDL"

    invoke-static {p1, p1, v0, v1}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 v0, 0x0

    const-string v1, "oneplus_wlb_setup_done"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, p0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {v3}, Lcom/android/systemui/qs/QSPanel;->isExpanded()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->setIsFullyExpanded(Z)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mTmpInt2:[I

    invoke-virtual {p1, v2}, Landroid/view/View;->getLocationInWindow([I)V

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mTmpInt2:[I

    aget v3, v2, v0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    aput v3, v2, v0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mTmpInt2:[I

    aget v2, v0, v1

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    add-int/2addr v2, p1

    aput v2, v0, v1

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitch;->getUserDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;

    move-result-object v0

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mTmpInt2:[I

    invoke-virtual {p1, v1, v0, v2}, Lcom/android/systemui/qs/QSPanel;->showDetailAdapter(ZLcom/android/systemui/plugins/qs/DetailAdapter;[I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->getCurrentMode()I

    move-result p1

    if-nez p1, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitch;->readCurrentMode()V

    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->doUnbindService()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->doBindService()V

    goto :goto_1

    :cond_3
    new-instance p0, Landroid/content/Intent;

    const-string p1, "com.oneplus.intent.ACTION_WELCOME_PAGE"

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p1, "com.oneplus.opwlb"

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    :goto_1
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "worklife_feature_enable"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->onWLBModeChanged()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitch;->updateSWitchToCurrentMode()V

    goto :goto_0

    :cond_1
    sget-object p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->TAG:Ljava/lang/String;

    const-string p1, "onConfigurationChanged: Controller null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_2
    :goto_1
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0, p0}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v0, Lcom/android/systemui/R$id;->wlb_avatar:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbAvathar:Landroid/widget/ImageView;

    return-void
.end method

.method public setQsPanel(Lcom/android/systemui/qs/QSPanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    const-class p1, Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/WLBSwitch;->setUserSwitcherController(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)V

    return-void
.end method

.method public setUserSwitcherController(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)V
    .locals 3

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mQsPanel:Lcom/android/systemui/qs/QSPanel;

    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->setQSPanel(Lcom/android/systemui/qs/QSPanel;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mWlbSwitchController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->setSwitchCallbacks(Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBSwitchCallbacks;)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mSettingsObserver:Lcom/android/systemui/statusbar/phone/WLBSwitch$SettingsObserver;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    new-instance p1, Lcom/android/systemui/statusbar/phone/WLBSwitch$SettingsObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/statusbar/phone/WLBSwitch$SettingsObserver;-><init>(Lcom/android/systemui/statusbar/phone/WLBSwitch;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mSettingsObserver:Lcom/android/systemui/statusbar/phone/WLBSwitch$SettingsObserver;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "oneplus_wlb_activated_mode"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mSettingsObserver:Lcom/android/systemui/statusbar/phone/WLBSwitch$SettingsObserver;

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mFeatureDisableObr:Lcom/android/systemui/statusbar/phone/WLBSwitch$FeatureDisableObserver;

    if-nez p1, :cond_1

    new-instance p1, Lcom/android/systemui/statusbar/phone/WLBSwitch$FeatureDisableObserver;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v1}, Lcom/android/systemui/statusbar/phone/WLBSwitch$FeatureDisableObserver;-><init>(Lcom/android/systemui/statusbar/phone/WLBSwitch;Landroid/os/Handler;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mFeatureDisableObr:Lcom/android/systemui/statusbar/phone/WLBSwitch$FeatureDisableObserver;

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v1, "worklife_feature_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mFeatureDisableObr:Lcom/android/systemui/statusbar/phone/WLBSwitch$FeatureDisableObserver;

    invoke-virtual {p1, v1, v0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mUserSwitchReceiver:Lcom/android/systemui/statusbar/phone/WLBSwitch$UserSwitchReceiver;

    if-nez p1, :cond_2

    new-instance p1, Lcom/android/systemui/statusbar/phone/WLBSwitch$UserSwitchReceiver;

    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/phone/WLBSwitch$UserSwitchReceiver;-><init>(Lcom/android/systemui/statusbar/phone/WLBSwitch;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mUserSwitchReceiver:Lcom/android/systemui/statusbar/phone/WLBSwitch$UserSwitchReceiver;

    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.USER_SWITCHED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBSwitch;->mUserSwitchReceiver:Lcom/android/systemui/statusbar/phone/WLBSwitch$UserSwitchReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_2
    return-void
.end method

.method public updateSwitchState()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitch;->updateSWitchToCurrentMode()V

    return-void
.end method
