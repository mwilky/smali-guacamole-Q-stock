.class public Lcom/oneplus/systemui/statusbar/phone/OpCollapsedStatusBarFragment;
.super Landroid/app/Fragment;
.source "OpCollapsedStatusBarFragment.java"

# interfaces
.implements Lcom/oneplus/scene/OpSceneModeObserver$Callback;


# instance fields
.field private mOpSceneModeObserver:Lcom/oneplus/scene/OpSceneModeObserver;

.field protected mState1:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected adjustSystemIconAreaLayoutParams(Landroid/widget/LinearLayout;)V
    .locals 1

    invoke-static {}, Lcom/oneplus/util/OpUtils;->isSupportCustomStatusBar()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/oneplus/util/OpUtils;->isCutoutHide(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v0, -0x2

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public onBrickModeChanged()V
    .locals 8

    const-class v0, Lcom/android/systemui/statusbar/phone/CollapsedStatusBarFragment;

    const/4 v1, 0x4

    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v5, 0x1

    aput-object v3, v2, v5

    const/4 v6, 0x2

    aput-object v3, v2, v6

    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    const/4 v7, 0x3

    aput-object v3, v2, v7

    const-string v3, "disable"

    invoke-static {v0, v3, v2}, Lcom/oneplus/util/OpReflectionUtils;->getMethodWithParams(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getDisplayId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v4

    iget v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpCollapsedStatusBarFragment;->mState1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v5

    iget v2, p0, Lcom/oneplus/systemui/statusbar/phone/OpCollapsedStatusBarFragment;->mState1:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-static {p0, v0, v1}, Lcom/oneplus/util/OpReflectionUtils;->methodInvokeWithArgs(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected onCreateInternal()V
    .locals 1

    const-class v0, Lcom/oneplus/scene/OpSceneModeObserver;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/scene/OpSceneModeObserver;

    iput-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpCollapsedStatusBarFragment;->mOpSceneModeObserver:Lcom/oneplus/scene/OpSceneModeObserver;

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpCollapsedStatusBarFragment;->mOpSceneModeObserver:Lcom/oneplus/scene/OpSceneModeObserver;

    invoke-virtual {v0, p0}, Lcom/oneplus/scene/OpSceneModeObserver;->removeCallback(Lcom/oneplus/scene/OpSceneModeObserver$Callback;)V

    return-void
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    iget-object v0, p0, Lcom/oneplus/systemui/statusbar/phone/OpCollapsedStatusBarFragment;->mOpSceneModeObserver:Lcom/oneplus/scene/OpSceneModeObserver;

    invoke-virtual {v0, p0}, Lcom/oneplus/scene/OpSceneModeObserver;->addCallback(Lcom/oneplus/scene/OpSceneModeObserver$Callback;)V

    return-void
.end method

.method protected shouldHideNotificationIconsInternal()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/systemui/statusbar/phone/OpCollapsedStatusBarFragment;->mOpSceneModeObserver:Lcom/oneplus/scene/OpSceneModeObserver;

    invoke-virtual {p0}, Lcom/oneplus/scene/OpSceneModeObserver;->isInBrickMode()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
