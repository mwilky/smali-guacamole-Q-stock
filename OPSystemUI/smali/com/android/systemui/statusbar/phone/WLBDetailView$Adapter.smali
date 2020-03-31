.class public Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;
.super Lcom/android/systemui/statusbar/phone/WLBSwitchController$BaseUserAdapter;
.source "WLBDetailView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/WLBDetailView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Adapter"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field protected mController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

.field private mDetailView:Lcom/android/systemui/statusbar/phone/WLBDetailView;

.field private mFullyExpanded:Z

.field private mViewGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/WLBSwitchController;Lcom/android/systemui/statusbar/phone/WLBDetailView;)V
    .locals 0

    invoke-direct {p0, p2}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$BaseUserAdapter;-><init>(Lcom/android/systemui/statusbar/phone/WLBSwitchController;)V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mDetailView:Lcom/android/systemui/statusbar/phone/WLBDetailView;

    return-void
.end method

.method private getPositionByMode(I)I
    .locals 1

    const/4 p0, 0x2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    if-ne p1, p0, :cond_1

    move p0, v0

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/systemui/statusbar/phone/WLBDetailView;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string p1, "invalid position"

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private launchConfiguration(I)V
    .locals 2

    new-instance p0, Landroid/content/Intent;

    const-string v0, "com.oneplus.intent.ACTION_MODE_CONFIGURE"

    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "com.oneplus.opwlb"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v0, "is_setup_mode"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "extra_mode"

    invoke-virtual {p0, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-class p1, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    return-void
.end method

.method private sendBroadcastToApplication(I)V
    .locals 2

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.intent.WLB_MANUAL_SELECTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.oneplus.opwlb"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "extra_mode"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setDescVisibility(Landroid/view/View;IZF)V
    .locals 0

    if-eqz p1, :cond_0

    sget p0, Lcom/android/systemui/R$id;->layout_desc:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    if-eqz p3, :cond_1

    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->setAlpha(F)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/statusbar/phone/WLBDetailView;->access$100()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "updateExpansion: Item is null"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private setLayoutDescVisibility(IZF)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mViewGroup:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1, p1, p2, p3}, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->setDescVisibility(Landroid/view/View;IZF)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public createUserDetailItemView(Landroid/view/View;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;)Lcom/android/systemui/statusbar/phone/WLBDeatailItemView;
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/systemui/statusbar/phone/WLBDeatailItemView;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/statusbar/phone/WLBDeatailItemView;

    move-result-object p2

    if-eq p2, p1, :cond_0

    invoke-virtual {p2, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->getModeName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->getPicture()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->getTriggerName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/WLBDeatailItemView;->bind(Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->isActive()Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/WLBDeatailItemView;->updateThemeColor(Z)V

    invoke-virtual {p2, p3}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    iget-boolean p1, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mFullyExpanded:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    :goto_0
    const/4 p3, 0x1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mFullyExpanded:Z

    if-eqz v0, :cond_2

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-direct {p0, p2, p1, p3, v0}, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->setDescVisibility(Landroid/view/View;IZF)V

    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$BaseUserAdapter;->getItem(I)Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;

    move-result-object p1

    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->createUserDetailItemView(Landroid/view/View;Landroid/view/ViewGroup;Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;)Lcom/android/systemui/statusbar/phone/WLBDeatailItemView;

    move-result-object p0

    return-object p0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->getMode()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->updateActiveMode(IZ)V

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->isActive()Z

    move-result p1

    if-nez p1, :cond_0

    const-class p1, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/ShadeController;->collapsePanel()Z

    :cond_0
    const/4 p1, 0x3

    new-array p1, p1, [Z

    fill-array-data p1, :array_0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->getPositionByMode(I)I

    move-result v0

    aput-boolean v1, p1, v0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$BaseUserAdapter;->getCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$BaseUserAdapter;->getItem(I)Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;

    move-result-object v2

    aget-boolean v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->setActive(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mDetailView:Lcom/android/systemui/statusbar/phone/WLBDetailView;

    if-eqz p1, :cond_2

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/WLBDetailView;->access$000(Lcom/android/systemui/statusbar/phone/WLBDetailView;)F

    move-result p1

    float-to-double v1, p1

    const-wide/16 v3, 0x0

    cmpl-double p1, v1, v3

    if-nez p1, :cond_2

    const/16 p1, 0x8

    goto :goto_1

    :cond_2
    move p1, v0

    :goto_1
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->setLayoutDescVisibility(IZF)V

    :cond_3
    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public setFullyExpanded(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mFullyExpanded:Z

    return-void
.end method

.method public updateActiveMode(IZ)V
    .locals 6

    invoke-static {}, Lcom/android/systemui/statusbar/phone/WLBDetailView;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating mode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->getPositionByMode(I)I

    move-result v0

    const-string v1, "C22AG9UUDL"

    const-string v2, "1"

    const-string v3, "qt_mode_change_menu"

    if-eqz p1, :cond_4

    const/4 v4, 0x1

    const/4 v5, 0x2

    if-eq p1, v4, :cond_0

    if-eq p1, v5, :cond_1

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    const-string v4, "qt_menu_change_work"

    invoke-static {v3, v4, v2, v1}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    if-ne p1, v5, :cond_2

    const-string v4, "qt_menu_change_Life"

    invoke-static {v3, v4, v2, v1}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$BaseUserAdapter;->getItem(I)Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController$WLBModeItem;->isConfigured()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->setCurrentMode(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->doUnbindService()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->doBindService()V

    if-eqz p2, :cond_6

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->sendBroadcastToApplication(I)V

    goto :goto_0

    :cond_3
    const-class p2, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/statusbar/phone/ShadeController;

    invoke-interface {p2}, Lcom/android/systemui/statusbar/phone/ShadeController;->collapsePanel()Z

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->launchConfiguration(I)V

    goto :goto_0

    :cond_4
    if-eqz p2, :cond_5

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->sendBroadcastToApplication(I)V

    const-string p2, "qt_menu_change_none"

    invoke-static {v3, p2, v2, v1}, Lcom/oneplus/systemui/util/OpMdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->setCurrentMode(I)V

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {p1}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->doUnbindService()V

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mController:Lcom/android/systemui/statusbar/phone/WLBSwitchController;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/WLBSwitchController;->doBindService()V

    :cond_6
    :goto_0
    return-void
.end method

.method public updateExpansion(F)V
    .locals 4

    float-to-double v0, p1

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->setLayoutDescVisibility(IZF)V

    return-void
.end method

.method public updateUI(I)V
    .locals 6

    const/4 v0, 0x3

    new-array v0, v0, [Z

    fill-array-data v0, :array_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->getPositionByMode(I)I

    move-result p1

    const/4 v1, 0x1

    aput-boolean v1, v0, p1

    const/4 p1, 0x0

    :goto_0
    array-length v2, v0

    if-ge p1, v2, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mViewGroup:Landroid/view/ViewGroup;

    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/WLBDeatailItemView;

    sget v3, Lcom/android/systemui/R$id;->user_picture:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    aget-boolean v3, v0, p1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mContext:Landroid/content/Context;

    sget v4, Lcom/android/systemui/R$drawable;->wlb_avathar_bg_enabled:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/android/systemui/R$color;->oneplus_contorl_icon_color_accent_active_dark:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_2

    :cond_0
    invoke-static {}, Lcom/oneplus/util/ThemeColorUtils;->getCurrentTheme()I

    move-result v3

    if-eqz v3, :cond_2

    if-eq v3, v1, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    sget v3, Lcom/android/systemui/R$drawable;->wlb_avathar_bg_disabled_light:I

    sget v4, Lcom/android/systemui/R$color;->oneplus_contorl_icon_color_active_light:I

    goto :goto_1

    :cond_1
    sget v3, Lcom/android/systemui/R$drawable;->wlb_avathar_bg_disabled_dark:I

    sget v4, Lcom/android/systemui/R$color;->oneplus_contorl_icon_color_active_dark:I

    goto :goto_1

    :cond_2
    sget v3, Lcom/android/systemui/R$drawable;->wlb_avathar_bg_disabled_light:I

    sget v4, Lcom/android/systemui/R$color;->oneplus_contorl_icon_color_active_light:I

    :goto_1
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {v5, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/WLBDetailView$Adapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-static {}, Lcom/android/systemui/statusbar/phone/WLBDetailView;->access$100()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "updateUI: exception caught"

    invoke-static {p1, v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    return-void

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
    .end array-data
.end method
