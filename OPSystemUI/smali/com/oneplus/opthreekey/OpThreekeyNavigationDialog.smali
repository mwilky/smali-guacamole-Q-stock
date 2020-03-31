.class public Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;
.super Ljava/lang/Object;
.source "OpThreekeyNavigationDialog.java"

# interfaces
.implements Lcom/oneplus/opzenmode/OpZenModeController$Callback;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;
    }
.end annotation


# static fields
.field private static DEBUG:Z = false

.field private static TAG:Ljava/lang/String; = "OpThreekeyNavigationDialog"

.field private static mOpThreekeyNavigationDialog:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;


# instance fields
.field private layoutInflater:Landroid/view/LayoutInflater;

.field private mAccentColor:I

.field private final mClickThreeKeyNavigationGotItTextButton:Landroid/view/View$OnClickListener;

.field private final mClickThreeKeyNavigationNextTextButton:Landroid/view/View$OnClickListener;

.field private mContext:Landroid/content/Context;

.field private mDensity:I

.field private final mHandler:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;

.field private mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

.field private mMainView:Landroid/view/View;

.field mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mOpZenModeController:Lcom/oneplus/opzenmode/OpZenModeController;

.field mOrientationListener:Landroid/view/OrientationEventListener;

.field private mOrientationType:I

.field private mParentStatus:I

.field private mSecondView:Landroid/view/View;

.field private mShowing:Z

.field private mShowingType:I

.field private mTextSize:I

.field private mThemeBgColor:I

.field private mThemeColorMode:I

.field private mThemeIconColor:I

.field private mThemeTextColor:I

.field private mThreeKeyNavigationNextGotItButton:Landroid/widget/TextView;

.field private mThreeKeyNavigationNextTextButton:Landroid/widget/TextView;

.field private mThreeKeyNavigationTriangle:Landroid/widget/ImageView;

.field mThreeKeyRowIcon:[Landroid/widget/ImageView;

.field mThreeKeyRowText:[Landroid/widget/TextView;

.field private mThreekeyNavigationFullBlueDialog:Landroid/widget/LinearLayout;

.field private mThreekeyType:I

.field mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private final mUserId:I

.field private mViewContainer:Landroid/widget/LinearLayout;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;

    invoke-direct {v0, p0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;-><init>(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;)V

    iput-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mParentStatus:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mShowing:Z

    iput v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mShowingType:I

    iput v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mOrientationType:I

    iput v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThemeIconColor:I

    iput v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThemeTextColor:I

    iput v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThemeBgColor:I

    iput v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mAccentColor:I

    iput v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThemeColorMode:I

    iput v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mTextSize:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mUserId:I

    new-instance v0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$2;

    invoke-direct {v0, p0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$2;-><init>(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;)V

    iput-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mClickThreeKeyNavigationNextTextButton:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$3;

    invoke-direct {v0, p0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$3;-><init>(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;)V

    iput-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mClickThreeKeyNavigationGotItTextButton:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$4;

    invoke-direct {v0, p0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$4;-><init>(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;)V

    iput-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    iput-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    const-class p1, Lcom/oneplus/opzenmode/OpZenModeController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oneplus/opzenmode/OpZenModeController;

    iput-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mOpZenModeController:Lcom/oneplus/opzenmode/OpZenModeController;

    new-instance p1, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$1;

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    const/4 v1, 0x3

    invoke-direct {p1, p0, v0, v1}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$1;-><init>(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mOrientationListener:Landroid/view/OrientationEventListener;

    iget-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/WindowManager;

    iput-object p1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mWindowManager:Landroid/view/WindowManager;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mOrientationType:I

    return p0
.end method

.method static synthetic access$002(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mOrientationType:I

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->stateChange(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mShowing:Z

    return p0
.end method

.method static synthetic access$1102(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mShowing:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->changeH()V

    return-void
.end method

.method static synthetic access$1300(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->rotateH()V

    return-void
.end method

.method static synthetic access$1400(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->updateTheme(Z)V

    return-void
.end method

.method static synthetic access$1500(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mSecondView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->inflateView()V

    return-void
.end method

.method static synthetic access$1800(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->show()V

    return-void
.end method

.method static synthetic access$1900(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->setAlphaH(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mShowingType:I

    return p0
.end method

.method static synthetic access$202(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mShowingType:I

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;)Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->change()V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->dismiss(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->setFinished(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$800(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->showH(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->dismissH(Landroid/view/View;)V

    return-void
.end method

.method private applyTheme()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mShowing:Z

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThemeColorMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mAccentColor:I

    iput v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThemeIconColor:I

    sget v1, Lcom/android/systemui/R$color;->oneplus_contorl_text_color_primary_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThemeTextColor:I

    sget v1, Lcom/android/systemui/R$color;->oneplus_contorl_bg_color_steppers_light:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThemeBgColor:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mAccentColor:I

    iput v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThemeIconColor:I

    sget v1, Lcom/android/systemui/R$color;->oneplus_contorl_text_color_primary_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThemeTextColor:I

    sget v1, Lcom/android/systemui/R$color;->oneplus_contorl_bg_color_steppers_dark:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThemeBgColor:I

    :goto_0
    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    sget v3, Lcom/android/systemui/R$id;->threekey_layout:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v3, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThemeBgColor:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    aget-object v0, v0, v2

    sget v3, Lcom/android/systemui/R$id;->threekey_layout:I

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v3, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThemeBgColor:I

    invoke-static {v3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    sget v4, Lcom/android/systemui/R$id;->threekey_layout:I

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget v4, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThemeBgColor:I

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThreeKeyRowText:[Landroid/widget/TextView;

    aget-object v0, v0, v1

    iget v4, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThemeTextColor:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThreeKeyRowText:[Landroid/widget/TextView;

    aget-object v0, v0, v2

    iget v4, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThemeTextColor:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThreeKeyRowText:[Landroid/widget/TextView;

    aget-object v0, v0, v3

    iget v4, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThemeTextColor:I

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThreeKeyRowIcon:[Landroid/widget/ImageView;

    aget-object v0, v0, v1

    iget v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThemeIconColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThreeKeyRowIcon:[Landroid/widget/ImageView;

    aget-object v0, v0, v2

    iget v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThemeIconColor:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThreeKeyRowIcon:[Landroid/widget/ImageView;

    aget-object v0, v0, v3

    iget p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThemeIconColor:I

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-void
.end method

.method private change()V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private changeH()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mSecondView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mSecondView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->checkShowPage()I

    invoke-direct {p0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->updateThreekeyLayout()V

    invoke-direct {p0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->initDialog()V

    :cond_0
    return-void
.end method

.method private checkShowPage()I
    .locals 4

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mSecondView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v2

    :goto_1
    if-eqz v0, :cond_2

    if-eqz v3, :cond_2

    sget-object v0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    const-string v1, "mShowingType Invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_2
    if-eqz v0, :cond_3

    if-nez v3, :cond_3

    iput v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mShowingType:I

    goto :goto_2

    :cond_3
    if-nez v0, :cond_4

    if-eqz v3, :cond_4

    const/4 v0, 0x2

    iput v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mShowingType:I

    goto :goto_2

    :cond_4
    if-nez v0, :cond_5

    if-nez v3, :cond_5

    iput v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mShowingType:I

    :cond_5
    :goto_2
    sget-object v0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkShowPage mShowingType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mShowingType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mShowingType:I

    return p0
.end method

.method private dismiss(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;

    const/4 v0, 0x2

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private dismissH(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    if-ne p1, v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {p0, p1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;
    .locals 3

    const-class v0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mOpThreekeyNavigationDialog:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    if-nez v1, :cond_0

    sget-object v1, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    const-string v2, "OpThreekeyNavigationDialog getInstance"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    invoke-direct {v1, p0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mOpThreekeyNavigationDialog:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    sget-object p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mOpThreekeyNavigationDialog:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    invoke-direct {p0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->init()V

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mOpThreekeyNavigationDialog:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method private inflateView()V
    .locals 10

    sget-boolean v0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inflateView mOrientationType == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mOrientationType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->layoutInflater:Landroid/view/LayoutInflater;

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->layoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->op_threekey_navigation_dialog_first:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->layoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->op_threekey_navigation_dialog_second:I

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mSecondView:Landroid/view/View;

    new-instance v0, Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x2

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0x3eb

    const v8, 0x1000128

    const/4 v9, -0x3

    move-object v2, v0

    invoke-direct/range {v2 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x7f6

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const-string v1, "OpThreekeyNavigationDialog"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v0, 0x1

    iput v0, p0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    return-void
.end method

.method private init()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$integer;->oneplus_config_threekey_type:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThreekeyType:I

    sget-object v0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "init / mThreekeyType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThreekeyType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThreekeyType:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->inflateView()V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->densityDpi:I

    iput v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mDensity:I

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mOpZenModeController:Lcom/oneplus/opzenmode/OpZenModeController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    const-class v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    return-void
.end method

.method private initDialog()V
    .locals 13

    sget-boolean v0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initDialog / mMainView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " / mSecondView:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mSecondView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    if-eqz v0, :cond_8

    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mSecondView:Landroid/view/View;

    if-nez v1, :cond_1

    goto/16 :goto_4

    :cond_1
    sget v1, Lcom/android/systemui/R$id;->threekey_navigation_full_blue_dialog:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThreekeyNavigationFullBlueDialog:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->threekey_navigation_next_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThreeKeyNavigationNextTextButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThreeKeyNavigationNextTextButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mClickThreeKeyNavigationNextTextButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->threekey_navigation_triangle_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThreeKeyNavigationTriangle:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mSecondView:Landroid/view/View;

    sget v1, Lcom/android/systemui/R$id;->threekey_navigation_gotit_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThreeKeyNavigationNextGotItButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThreeKeyNavigationNextGotItButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mClickThreeKeyNavigationGotItTextButton:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/4 v1, 0x3

    new-array v2, v1, [Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    sget v4, Lcom/android/systemui/R$id;->threekey_vurtual_silent:I

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    sget v5, Lcom/android/systemui/R$id;->threekey_vurtual_vibrate:I

    invoke-virtual {v3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    iget-object v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    sget v6, Lcom/android/systemui/R$id;->threekey_vurtual_ring:I

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    const/4 v6, 0x2

    aput-object v3, v2, v6

    iget-object v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v4

    sget v3, Lcom/android/systemui/R$id;->threekey_layout:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$drawable;->dialog_threekey_up_bg:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v5

    sget v3, Lcom/android/systemui/R$id;->threekey_layout:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$drawable;->dialog_threekey_middle_bg:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v6

    sget v3, Lcom/android/systemui/R$id;->threekey_layout:I

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    sget v3, Lcom/android/systemui/R$drawable;->dialog_threekey_down_bg:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    new-array v2, v1, [Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThreeKeyRowIcon:[Landroid/widget/ImageView;

    new-array v2, v1, [Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThreeKeyRowText:[Landroid/widget/TextView;

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_2

    iget-object v3, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThreeKeyRowIcon:[Landroid/widget/ImageView;

    iget-object v7, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    aget-object v7, v7, v2

    sget v8, Lcom/android/systemui/R$id;->threekey_icon:I

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    aput-object v7, v3, v2

    iget-object v3, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThreeKeyRowText:[Landroid/widget/TextView;

    iget-object v7, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    aget-object v7, v7, v2

    sget v8, Lcom/android/systemui/R$id;->threekey_text:I

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    aput-object v7, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThreeKeyRowIcon:[Landroid/widget/ImageView;

    aget-object v2, v2, v4

    sget v3, Lcom/android/systemui/R$drawable;->op_ic_silence:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThreeKeyRowIcon:[Landroid/widget/ImageView;

    aget-object v2, v2, v5

    sget v3, Lcom/android/systemui/R$drawable;->op_ic_vibrate:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThreeKeyRowIcon:[Landroid/widget/ImageView;

    aget-object v2, v2, v6

    sget v3, Lcom/android/systemui/R$drawable;->op_ic_ring:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThreeKeyRowText:[Landroid/widget/TextView;

    aget-object v2, v2, v4

    sget v3, Lcom/android/systemui/R$string;->volume_footer_slient:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThreeKeyRowText:[Landroid/widget/TextView;

    aget-object v2, v2, v5

    sget v3, Lcom/android/systemui/R$string;->volume_vibrate:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThreeKeyRowText:[Landroid/widget/TextView;

    aget-object v2, v2, v6

    sget v3, Lcom/android/systemui/R$string;->volume_footer_ring:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0, v5}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->updateTheme(Z)V

    iget v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mOrientationType:I

    const/16 v3, 0x8

    if-eq v2, v5, :cond_6

    if-eq v2, v6, :cond_8

    if-eq v2, v1, :cond_4

    sget v2, Lcom/android/systemui/R$dimen;->three_key_up_dialog_position:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    sget v7, Lcom/android/systemui/R$dimen;->three_key_middle_dialog_position:I

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    sget v8, Lcom/android/systemui/R$dimen;->three_key_down_dialog_position:I

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    sget v9, Lcom/android/systemui/R$dimen;->op_threekey_dialog_padding:I

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    const/4 v10, -0x2

    if-ne v2, v7, :cond_3

    if-ne v7, v8, :cond_3

    iget-object v11, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget v12, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mParentStatus:I

    sub-int/2addr v12, v5

    rem-int/2addr v12, v1

    aget-object v11, v11, v12

    invoke-virtual {v11, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v11, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget v12, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mParentStatus:I

    sub-int/2addr v12, v5

    add-int/2addr v12, v5

    rem-int/2addr v12, v1

    aget-object v11, v11, v12

    invoke-virtual {v11, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v11, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget v12, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mParentStatus:I

    sub-int/2addr v12, v5

    add-int/2addr v12, v6

    rem-int/2addr v12, v1

    aget-object v1, v11, v12

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sget v3, Lcom/android/systemui/R$dimen;->op_threekey_dialog_triangle_short:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sub-int/2addr v3, v9

    invoke-virtual {v1, v4, v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThreeKeyNavigationTriangle:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget v11, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mParentStatus:I

    sub-int/2addr v11, v5

    rem-int/2addr v11, v1

    aget-object v3, v3, v11

    sget v11, Lcom/android/systemui/R$id;->threekey_layout:I

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const/16 v11, 0x3e8

    invoke-direct {p0, v3, v11}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->setAlpha(Landroid/view/View;I)V

    iget-object v3, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget v11, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mParentStatus:I

    sub-int/2addr v11, v5

    add-int/2addr v11, v5

    rem-int/2addr v11, v1

    aget-object v3, v3, v11

    sget v11, Lcom/android/systemui/R$id;->threekey_layout:I

    invoke-virtual {v3, v11}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    const v11, 0x3e99999a    # 0.3f

    invoke-virtual {v3, v11}, Landroid/view/View;->setAlpha(F)V

    iget-object v3, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget v12, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mParentStatus:I

    sub-int/2addr v12, v5

    add-int/2addr v12, v6

    rem-int/2addr v12, v1

    aget-object v1, v3, v12

    sget v3, Lcom/android/systemui/R$id;->threekey_layout:I

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v11}, Landroid/view/View;->setAlpha(F)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sget v3, Lcom/android/systemui/R$dimen;->op_threekey_dialog_triangle_long:I

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    mul-int/lit8 v11, v9, 0x2

    sub-int/2addr v3, v11

    invoke-virtual {v1, v4, v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThreeKeyNavigationTriangle:Landroid/widget/ImageView;

    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    const v1, 0x105020e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThreekeyNavigationFullBlueDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThreekeyNavigationFullBlueDialog:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    neg-int v3, v9

    sub-int/2addr v2, v9

    add-int/2addr v2, v0

    invoke-virtual {v1, v3, v2, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v4

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sub-int/2addr v7, v9

    add-int/2addr v7, v0

    invoke-virtual {v1, v3, v7, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    aget-object v2, v2, v5

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v10, v10}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    sub-int/2addr v8, v9

    add-int/2addr v8, v0

    invoke-virtual {v1, v3, v8, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    aget-object p0, p0, v6

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_4

    :cond_4
    move v2, v4

    :goto_2
    if-ge v2, v1, :cond_5

    iget-object v6, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    aget-object v6, v6, v2

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mParentStatus:I

    sub-int/2addr v2, v5

    aget-object v1, v1, v2

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mParentStatus:I

    sub-int/2addr p0, v5

    aget-object p0, v1, p0

    sget v1, Lcom/android/systemui/R$id;->threekey_layout:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$drawable;->dialog_threekey_middle_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_4

    :cond_6
    move v2, v4

    :goto_3
    if-ge v2, v1, :cond_7

    iget-object v6, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    aget-object v6, v6, v2

    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mParentStatus:I

    sub-int/2addr v2, v5

    aget-object v1, v1, v2

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mInnerVirtualThreekeyView:[Landroid/widget/LinearLayout;

    iget p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mParentStatus:I

    sub-int/2addr p0, v5

    aget-object p0, v1, p0

    sget v1, Lcom/android/systemui/R$id;->threekey_layout:I

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object p0

    sget v1, Lcom/android/systemui/R$drawable;->dialog_threekey_middle_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    :goto_4
    return-void
.end method

.method private registerOrientationListener(Z)V
    .locals 3

    sget-object v0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "registerOrientationListener:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    const-string v0, "Can detect orientation"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->enable()V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    const-string v0, "Cannot detect orientation"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {p0}, Landroid/view/OrientationEventListener;->disable()V

    :goto_0
    return-void
.end method

.method private rotateH()V
    .locals 6

    sget-boolean v0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " rotateH /mOrientationType == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mOrientationType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mShowing:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;

    const/4 v3, 0x5

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    invoke-direct {p0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->updateThreekeyLayout()V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    iget v3, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mOrientationType:I

    const/4 v4, 0x0

    if-eq v3, v1, :cond_3

    if-eq v3, v2, :cond_4

    const/4 v5, 0x3

    if-eq v3, v5, :cond_2

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->layoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->op_threekey_navigation_dialog_first:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_2
    iget v3, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mShowingType:I

    if-ne v3, v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->layoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->op_threekey_navigation_dialog_first_right_land:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    :cond_3
    iget v3, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mShowingType:I

    if-ne v3, v1, :cond_4

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->layoutInflater:Landroid/view/LayoutInflater;

    sget v1, Lcom/android/systemui/R$layout;->op_threekey_navigation_dialog_first_left_land:I

    invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->initDialog()V

    return-void
.end method

.method private setAlpha(Landroid/view/View;I)V
    .locals 2

    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    int-to-long v0, p2

    invoke-virtual {p0, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method

.method private setAlphaH(Landroid/view/View;)V
    .locals 1

    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/os/Handler;->hasMessages(I)Z

    move-result p0

    if-eqz p0, :cond_0

    return-void

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {p1, p0}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method

.method private setFinished(Ljava/lang/String;I)V
    .locals 3

    sget-object v0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setFinished / UserHandle.myUserId():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mUpdateMonitor.getCurrentUser():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private show()V
    .locals 5

    sget-object v0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "show mShowingType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mShowingType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v0

    iget v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mOrientationType:I

    if-eq v0, v1, :cond_0

    iput v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mOrientationType:I

    :cond_0
    iget v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mShowingType:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v0, v3, :cond_2

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->layoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/android/systemui/R$layout;->op_threekey_navigation_dialog_second:I

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mSecondView:Landroid/view/View;

    iput-boolean v3, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mShowing:Z

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;

    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mSecondView:Landroid/view/View;

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_2
    :goto_0
    sget v0, Lcom/android/systemui/R$layout;->op_threekey_navigation_dialog_first:I

    iget v4, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mOrientationType:I

    if-eq v4, v3, :cond_4

    if-eq v4, v2, :cond_5

    const/4 v2, 0x3

    if-eq v4, v2, :cond_3

    goto :goto_1

    :cond_3
    sget v0, Lcom/android/systemui/R$layout;->op_threekey_navigation_dialog_first_right_land:I

    goto :goto_1

    :cond_4
    sget v0, Lcom/android/systemui/R$layout;->op_threekey_navigation_dialog_first_left_land:I

    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->layoutInflater:Landroid/view/LayoutInflater;

    invoke-virtual {v2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    iput-boolean v3, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mShowing:Z

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;

    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mMainView:Landroid/view/View;

    invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_6
    :goto_2
    invoke-direct {p0, v3}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->registerOrientationListener(Z)V

    return-void
.end method

.method private showH(Landroid/view/View;)V
    .locals 3

    sget-object v0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showH view.getParent():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mShowingType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->checkShowPage()I

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->updateThreekeyLayout()V

    invoke-direct {p0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->initDialog()V

    return-void
.end method

.method private stateChange(I)V
    .locals 3

    sget-boolean v0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "stateChange: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", parent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mParentStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mParentStatus:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mParentStatus:I

    invoke-direct {p0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->initDialog()V

    :cond_1
    return-void
.end method

.method private updateTheme(Z)V
    .locals 9

    iget-boolean v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mShowing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/util/OpUtils;->getThemeColor(Landroid/content/Context;)I

    move-result v0

    sget v1, Lcom/oneplus/util/ThemeColorUtils;->QS_ACCENT:I

    invoke-static {v1}, Lcom/oneplus/util/ThemeColorUtils;->getColor(I)I

    move-result v1

    iget v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThemeColorMode:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v0, :cond_2

    iget v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mAccentColor:I

    if-eq v2, v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v4

    :goto_1
    sget-object v5, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "updateTheme change:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " force:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " theme:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " accentColor:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v3

    const-string v8, "0x%08X"

    invoke-static {v8, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " mThemeColorMode:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThemeColorMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " mAccentColor:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-array v4, v4, [Ljava/lang/Object;

    iget v7, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mAccentColor:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v3

    invoke-static {v8, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v2, :cond_3

    if-eqz p1, :cond_4

    :cond_3
    iput v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThemeColorMode:I

    iput v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mAccentColor:I

    invoke-direct {p0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->applyTheme()V

    :cond_4
    return-void
.end method

.method private updateThreekeyLayout()V
    .locals 8

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_d

    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    if-nez v1, :cond_0

    goto/16 :goto_3

    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mShowing:Z

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    sget-boolean v0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->DEBUG:Z

    if-eqz v0, :cond_3

    sget-object v0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateThreekeyLayout() / mShowingType == "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mShowingType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mShowingType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const/16 v0, 0x31

    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void

    :cond_4
    const/4 v0, 0x0

    iget v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mThreekeyType:I

    const/4 v3, 0x1

    if-nez v2, :cond_5

    move v0, v3

    :cond_5
    iget v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mOrientationType:I

    const/16 v4, 0x55

    const/16 v5, 0x53

    const/16 v6, 0x35

    const/16 v7, 0x33

    if-eq v2, v3, :cond_a

    if-eq v2, v1, :cond_9

    const/4 v1, 0x3

    if-eq v2, v1, :cond_8

    if-eqz v0, :cond_7

    :cond_6
    move v4, v6

    goto :goto_2

    :cond_7
    :goto_0
    move v4, v7

    goto :goto_2

    :cond_8
    if-eqz v0, :cond_6

    goto :goto_2

    :cond_9
    if-eqz v0, :cond_c

    goto :goto_1

    :cond_a
    if-eqz v0, :cond_b

    goto :goto_0

    :cond_b
    :goto_1
    move v4, v5

    :cond_c
    :goto_2
    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v4, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mViewContainer:Landroid/widget/LinearLayout;

    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, p0}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_d
    :goto_3
    return-void
.end method


# virtual methods
.method public onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 3

    if-eqz p1, :cond_0

    sget-object v0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onConfigChanged, mShowingType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mShowingType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " / newConfig.toString():"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;

    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public onThreeKeyStatus(I)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    const/4 v2, 0x0

    const-string v3, "op_threekey_navigation_completed"

    invoke-static {v0, v3, v2, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sget-object v0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onThreeKeyStatus() / completed:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " / userId:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " / UserHandle.myUserId():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", threekey:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", mShowing:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mShowing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mParentStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mParentStatus:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v1, :cond_1

    return-void

    :cond_1
    sget-object v0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mOpThreekeyNavigationDialog:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;

    if-nez v0, :cond_2

    return-void

    :cond_2
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    if-eqz v0, :cond_3

    return-void

    :cond_3
    iget-object v0, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mHandler:Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog$H;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1, v2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    iget p1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mParentStatus:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_4

    iget-boolean p1, p0, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->mShowing:Z

    if-nez p1, :cond_4

    invoke-direct {p0}, Lcom/oneplus/opthreekey/OpThreekeyNavigationDialog;->show()V

    :cond_4
    return-void
.end method
