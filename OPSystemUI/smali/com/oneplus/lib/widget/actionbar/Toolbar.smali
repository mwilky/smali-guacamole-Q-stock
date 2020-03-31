.class public Lcom/oneplus/lib/widget/actionbar/Toolbar;
.super Landroid/widget/Toolbar;
.source "Toolbar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;,
        Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;,
        Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    }
.end annotation


# static fields
.field private static final ACTION_BAR_DIVIDER_ATTR:[I

.field private static final ICON_MIN_WIDTH:I

.field private static final ICON_SIZE_STANDARD:I

.field private static final MAX_ICON_SIZE:I


# instance fields
.field private mActionBarDividerColor:I

.field private mActionMenuPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

.field private mButtonGravity:I

.field private mCollapseButtonView:Landroid/widget/ImageButton;

.field private mCollapseDescription:Ljava/lang/CharSequence;

.field private mCollapseIcon:Landroid/graphics/drawable/Drawable;

.field private mCollapsed:Z

.field private mCollapsible:Z

.field private mContentInsetEndWithActions:I

.field private mContentInsetStartWithNavigation:I

.field private mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

.field private mEatingTouch:Z

.field mExpandedActionView:Landroid/view/View;

.field private mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

.field private mGravity:I

.field private mHasActionBarLineColor:Z

.field private mHeightWithGestureBar:I

.field private final mHiddenViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInsetPaddingTopInGestureMode:Z

.field private mLogoView:Landroid/widget/ImageView;

.field private mMaxButtonHeight:I

.field private mMaxIconSize:I

.field private mMeasuredGestureBar:Z

.field private mMenuBuilderCallback:Lcom/oneplus/lib/menu/MenuBuilder$Callback;

.field private mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

.field private final mMenuViewItemClickListener:Lcom/oneplus/lib/menu/ActionMenuView$OnMenuItemClickListener;

.field private mMyNavButtonView:Landroid/widget/ImageButton;

.field private mNavButtonStyle:I

.field private mNeedResetPadding:Z

.field private mOnMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

.field private mOrientation:I

.field private mPaddingTopOffset:I

.field private mPopupContext:Landroid/content/Context;

.field private mPopupTheme:I

.field private mRealPaddingBottom:I

.field private mRealTitleMarginBottom:I

.field private final mShowOverflowMenuRunnable:Ljava/lang/Runnable;

.field private mStatusBarHeight:I

.field private mSubTitleMarginBottom:I

.field private mSubtitleText:Ljava/lang/CharSequence;

.field private mSubtitleTextAppearance:I

.field private mSubtitleTextColor:I

.field private mSubtitleTextView:Landroid/widget/TextView;

.field private final mTempMargins:[I

.field private final mTempViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleMarginBottom:I

.field private mTitleMarginEnd:I

.field private mTitleMarginStart:I

.field private mTitleMarginTop:I

.field private mTitleText:Ljava/lang/CharSequence;

.field private mTitleTextAppearance:I

.field private mTitleTextColor:I

.field private mTitleTextView:Landroid/widget/TextView;

.field private final mTmpStatesArray:[I

.field private mWrapper:Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget v0, Lcom/oneplus/commonctrl/R$dimen;->toolbar_icon_min_width:I

    sput v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ICON_MIN_WIDTH:I

    sget v0, Lcom/oneplus/commonctrl/R$dimen;->oneplus_contorl_icon_size_button:I

    sput v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ICON_SIZE_STANDARD:I

    sget v0, Lcom/oneplus/commonctrl/R$dimen;->abc_action_menu_icon_size:I

    sput v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->MAX_ICON_SIZE:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    sget v1, Lcom/oneplus/commonctrl/R$attr;->onePlusActionbarLineColor:I

    const/4 v2, 0x0

    aput v1, v0, v2

    sput-object v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ACTION_BAR_DIVIDER_ATTR:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/oneplus/commonctrl/R$attr;->toolbarStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/Toolbar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mNeedResetPadding:Z

    const v1, 0x800013

    iput v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mGravity:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    const/4 v1, 0x2

    new-array v2, v1, [I

    iput-object v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempMargins:[I

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTmpStatesArray:[I

    new-instance v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$1;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar$1;-><init>(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuViewItemClickListener:Lcom/oneplus/lib/menu/ActionMenuView$OnMenuItemClickListener;

    new-instance v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$2;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar$2;-><init>(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    sget-object v1, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ACTION_BAR_DIVIDER_ATTR:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    invoke-virtual {p0, p1, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getDividerColor(Landroid/content/Context;I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mActionBarDividerColor:I

    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_op_collapsible:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p3

    iput-boolean p3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapsible:Z

    iget-boolean p3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapsible:Z

    if-eqz p3, :cond_0

    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p4, 0x15

    if-lt p3, p4, :cond_0

    sget p3, Lcom/oneplus/commonctrl/R$anim;->op_design_appbar_state_list_animator:I

    invoke-static {p1, p3}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object p3

    invoke-virtual {p0, p3}, Landroid/widget/Toolbar;->setStateListAnimator(Landroid/animation/StateListAnimator;)V

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setCollapsedState(Z)Z

    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p3

    iget p3, p3, Landroid/content/res/Configuration;->orientation:I

    iput p3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mOrientation:I

    sget p3, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_titleTextAppearance:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextAppearance:I

    sget p3, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_subtitleTextAppearance:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextAppearance:I

    sget p3, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_opNavigationButtonStyle:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    iput p3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mNavButtonStyle:I

    sget p3, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_android_gravity:I

    iget p4, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mGravity:I

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mGravity:I

    sget p3, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_opButtonGravity:I

    const/16 p4, 0x30

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result p3

    iput p3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mButtonGravity:I

    sget p3, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_titleMargin:I

    invoke-virtual {p2, p3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    iput p3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginBottom:I

    iput p3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginTop:I

    iput p3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginEnd:I

    iput p3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginStart:I

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    sget p4, Lcom/oneplus/lib/widget/actionbar/Toolbar;->MAX_ICON_SIZE:I

    invoke-virtual {p3, p4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMaxIconSize:I

    sget p3, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_titleMarginStart:I

    const/4 p4, -0x1

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p3

    if-ltz p3, :cond_1

    iput p3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginStart:I

    :cond_1
    invoke-static {p1}, Lcom/oneplus/support/annotation/GestureBarAdapterPolicy;->getStatusBarHeight(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mStatusBarHeight:I

    sget p1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_titleMarginEnd:I

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    if-ltz p1, :cond_2

    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginEnd:I

    :cond_2
    sget p1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_titleMarginTop:I

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    if-ltz p1, :cond_3

    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginTop:I

    :cond_3
    sget p1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_titleMarginBottom:I

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    if-ltz p1, :cond_4

    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginBottom:I

    :cond_4
    sget p1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_subTitleMarginBottom:I

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    if-lez p1, :cond_5

    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubTitleMarginBottom:I

    :cond_5
    sget p1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_realPaddingBottom:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mRealPaddingBottom:I

    sget p1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_realTitleMarginBottom:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mRealTitleMarginBottom:I

    sget p1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_maxButtonHeight:I

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMaxButtonHeight:I

    sget p1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_contentInsetStart:I

    const/high16 p3, -0x80000000

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_contentInsetEnd:I

    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result v1

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_contentInsetLeft:I

    invoke-virtual {p2, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_contentInsetRight:I

    invoke-virtual {p2, v4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureContentInsets()V

    iget-object v5, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    invoke-virtual {v5, v3, v4}, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->setAbsolute(II)V

    if-ne p1, p3, :cond_6

    if-eq v1, p3, :cond_7

    :cond_6
    iget-object v3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    invoke-virtual {v3, p1, v1}, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->setRelative(II)V

    :cond_7
    sget p1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_contentInsetStartWithNavigation:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsetStartWithNavigation:I

    sget p1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_contentInsetEndWithActions:I

    invoke-virtual {p2, p1, p3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p1

    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsetEndWithActions:I

    sget p1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_collapseIcon:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    sget p1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_collapseContentDescription:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    sget p1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_title:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_8

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    :cond_8
    sget p1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_subtitle:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_9

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    :cond_9
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupContext:Landroid/content/Context;

    sget p1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_android_popupTheme:I

    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setPopupTheme(I)V

    sget p1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_navigationIcon:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    sget p1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_navigationContentDescription:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_b

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    :cond_b
    sget p1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_android_logo:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    :cond_c
    sget p1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_logoDescription:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_d

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    :cond_d
    sget p1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_titleTextColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_e

    sget p1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_titleTextColor:I

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setTitleTextColor(I)V

    :cond_e
    sget p1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_subtitleTextColor:I

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p1

    if-eqz p1, :cond_f

    sget p1, Lcom/oneplus/commonctrl/R$styleable;->Toolbar_subtitleTextColor:I

    invoke-virtual {p2, p1, p4}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setSubtitleTextColor(I)V

    :cond_f
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getFitsSystemWindows()Z

    move-result p1

    if-nez p1, :cond_10

    goto :goto_0

    :cond_10
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mNeedResetPadding:Z

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/widget/actionbar/Toolbar;)Landroid/widget/Toolbar$OnMenuItemClickListener;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mOnMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureCollapseButtonView()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/lib/widget/actionbar/Toolbar;)Landroid/widget/ImageButton;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oneplus/lib/widget/actionbar/Toolbar;)I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mButtonGravity:I

    return p0
.end method

.method private addCustomViewsWithGravity(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getChildCount()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getLayoutDirection()I

    move-result v4

    invoke-static {p2, v4}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p2

    invoke-interface {p1}, Ljava/util/List;->clear()V

    if-eqz v0, :cond_2

    sub-int/2addr v3, v2

    :goto_1
    if-ltz v3, :cond_4

    invoke-virtual {p0, v3}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    iget v2, v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->mViewType:I

    if-nez v2, :cond_1

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, v1, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildHorizontalGravity(I)I

    move-result v1

    if-ne v1, p2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    if-ge v1, v3, :cond_4

    invoke-virtual {p0, v1}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    iget v4, v2, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->mViewType:I

    if-nez v4, :cond_3

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v2, v2, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildHorizontalGravity(I)I

    move-result v2

    if-ne v2, p2, :cond_3

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    return-void
.end method

.method private addSystemView(Landroid/view/View;Z)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateDefaultLayoutParams()Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object v0

    goto :goto_0

    :cond_1
    check-cast v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    :goto_0
    const/4 v1, 0x1

    iput v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->mViewType:I

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    if-eqz p2, :cond_2

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    invoke-virtual {p0, p1, v0}, Landroid/widget/Toolbar;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_1
    return-void
.end method

.method private ensureCollapseButtonView()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mNavButtonStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateDefaultLayoutParams()Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object v0

    const v1, 0x800003

    iget v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    const/4 v1, 0x2

    iput v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->mViewType:I

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    new-instance v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$3;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar$3;-><init>(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method private ensureContentInsets()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    invoke-direct {v0}, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    :cond_0
    return-void
.end method

.method private ensureLogoView()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    :cond_0
    return-void
.end method

.method private ensureMenu()V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureMenuView()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->peekMenu()Lcom/oneplus/lib/menu/MenuBuilder;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;-><init>(Lcom/oneplus/lib/widget/actionbar/Toolbar;Lcom/oneplus/lib/widget/actionbar/Toolbar$1;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/menu/ActionMenuView;->setExpandedActionViewsExclusive(Z)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupContext:Landroid/content/Context;

    invoke-virtual {v0, v1, p0}, Lcom/oneplus/lib/menu/MenuBuilder;->addMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;Landroid/content/Context;)V

    :cond_1
    return-void
.end method

.method private ensureMenuView()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/lib/menu/ActionMenuView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/menu/ActionMenuView;->setToolbar(Lcom/oneplus/lib/widget/actionbar/Toolbar;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    iget v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupTheme:I

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/ActionMenuView;->setPopupTheme(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuViewItemClickListener:Lcom/oneplus/lib/menu/ActionMenuView$OnMenuItemClickListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/ActionMenuView;->setOnMenuItemClickListener(Lcom/oneplus/lib/menu/ActionMenuView$OnMenuItemClickListener;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mActionMenuPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuBuilderCallback:Lcom/oneplus/lib/menu/MenuBuilder$Callback;

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/lib/menu/ActionMenuView;->setMenuCallbacks(Lcom/oneplus/lib/menu/MenuPresenter$Callback;Lcom/oneplus/lib/menu/MenuBuilder$Callback;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateDefaultLayoutParams()Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object v0

    const v1, 0x800005

    iget v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addSystemView(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method private ensureNavButtonView()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    if-nez v0, :cond_0

    new-instance v0, Landroid/widget/ImageButton;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mNavButtonStyle:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateDefaultLayoutParams()Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object v0

    const v1, 0x800003

    iget v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mButtonGravity:I

    and-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    iput v1, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private getChildHorizontalGravity(I)I
    .locals 3

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getLayoutDirection()I

    move-result p0

    invoke-static {p1, p0}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result p1

    and-int/lit8 p1, p1, 0x7

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v2, 0x5

    if-eq p1, v2, :cond_1

    if-ne p0, v0, :cond_0

    move v1, v2

    :cond_0
    return v1

    :cond_1
    return p1
.end method

.method private getChildTop(Landroid/view/View;I)I
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result p1

    const/4 v1, 0x0

    if-lez p2, :cond_0

    sub-int p2, p1, p2

    div-int/lit8 p2, p2, 0x2

    goto :goto_0

    :cond_0
    move p2, v1

    :goto_0
    iget v2, v0, Landroid/widget/Toolbar$LayoutParams;->gravity:I

    invoke-direct {p0, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildVerticalGravity(I)I

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_5

    const/16 v3, 0x50

    if-eq v2, v3, :cond_4

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result p2

    iget v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    add-int/2addr p2, v2

    iget-boolean v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mInsetPaddingTopInGestureMode:Z

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mStatusBarHeight:I

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    add-int/2addr p2, v2

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getHeight()I

    move-result p0

    sub-int v3, p0, p2

    sub-int/2addr v3, v2

    sub-int/2addr v3, p1

    div-int/lit8 v3, v3, 0x2

    iget v4, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    if-ge v3, v4, :cond_2

    iget v3, v0, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    goto :goto_2

    :cond_2
    sub-int/2addr p0, v2

    sub-int/2addr p0, p1

    sub-int/2addr p0, v3

    sub-int/2addr p0, p2

    iget p1, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    if-ge p0, p1, :cond_3

    iget p1, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr p1, p0

    sub-int/2addr v3, p1

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    :cond_3
    :goto_2
    add-int/2addr p2, v3

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingBottom()I

    move-result p0

    sub-int/2addr v1, p0

    sub-int/2addr v1, p1

    iget p0, v0, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v1, p0

    sub-int p2, v1, p2

    goto :goto_4

    :cond_5
    iget-boolean p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mInsetPaddingTopInGestureMode:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result p1

    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    add-int/2addr p1, v0

    iget p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mStatusBarHeight:I

    goto :goto_3

    :cond_6
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result p1

    iget p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    :goto_3
    add-int/2addr p1, p0

    sub-int p2, p1, p2

    :goto_4
    return p2
.end method

.method private getChildVerticalGravity(I)I
    .locals 2

    const/16 v0, 0x10

    and-int/2addr p1, v0

    if-eq p1, v0, :cond_0

    const/16 v1, 0x30

    if-eq p1, v1, :cond_0

    const/16 v1, 0x50

    if-eq p1, v1, :cond_0

    iget p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mGravity:I

    and-int/2addr p0, v0

    return p0

    :cond_0
    return p1
.end method

.method private getHorizontalMargins(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    move-result p1

    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    move-result p0

    add-int/2addr p1, p0

    return p1
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 1

    new-instance v0, Landroid/view/MenuInflater;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Landroid/view/MenuInflater;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method private getVerticalMargins(Landroid/view/View;)I
    .locals 0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget p1, p0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    iget p0, p0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p1, p0

    return p1
.end method

.method private getViewListMeasuredWidth(Ljava/util/List;[I)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;[I)I"
        }
    .end annotation

    const/4 p0, 0x0

    aget v0, p2, p0

    const/4 v1, 0x1

    aget p2, p2, v1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    move v3, p2

    move v2, v0

    move p2, p0

    move v0, p2

    :goto_0
    if-ge p2, v1, :cond_0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    iget v6, v5, Landroid/widget/Toolbar$LayoutParams;->leftMargin:I

    sub-int/2addr v6, v2

    iget v2, v5, Landroid/widget/Toolbar$LayoutParams;->rightMargin:I

    sub-int/2addr v2, v3

    invoke-static {p0, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result v5

    neg-int v6, v6

    invoke-static {p0, v6}, Ljava/lang/Math;->max(II)I

    move-result v6

    neg-int v2, v2

    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v3, v5

    add-int/2addr v0, v3

    add-int/lit8 p2, p2, 0x1

    move v3, v2

    move v2, v6

    goto :goto_0

    :cond_0
    return v0
.end method

.method private isChildOrHidden(Landroid/view/View;)Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eq v0, p0, :cond_1

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    :cond_1
    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private layoutChildLeft(Landroid/view/View;I[II)I
    .locals 4

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    iget v1, v0, Landroid/widget/Toolbar$LayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p3, v2

    sub-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    add-int/2addr p2, v3

    neg-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v2

    invoke-direct {p0, p1, p4}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    add-int p4, p2, p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p0

    invoke-virtual {p1, p2, p0, p4, v1}, Landroid/view/View;->layout(IIII)V

    iget p0, v0, Landroid/widget/Toolbar$LayoutParams;->rightMargin:I

    add-int/2addr p3, p0

    add-int/2addr p2, p3

    return p2
.end method

.method private layoutChildRight(Landroid/view/View;I[II)I
    .locals 5

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    iget v1, v0, Landroid/widget/Toolbar$LayoutParams;->rightMargin:I

    const/4 v2, 0x1

    aget v3, p3, v2

    sub-int/2addr v1, v3

    const/4 v3, 0x0

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v4

    sub-int/2addr p2, v4

    neg-int v1, v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p3, v2

    invoke-direct {p0, p1, p4}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getChildTop(Landroid/view/View;I)I

    move-result p0

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    sub-int p4, p2, p3

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    add-int/2addr v1, p0

    invoke-virtual {p1, p4, p0, p2, v1}, Landroid/view/View;->layout(IIII)V

    iget p0, v0, Landroid/widget/Toolbar$LayoutParams;->leftMargin:I

    add-int/2addr p3, p0

    sub-int/2addr p2, p3

    return p2
.end method

.method private measureChildCollapseMargins(Landroid/view/View;IIII[I)I
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p6, v2

    sub-int/2addr v1, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v4, 0x1

    aget v5, p6, v4

    sub-int/2addr v3, v5

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v5, v6

    neg-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v2

    neg-int v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v4

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingLeft()I

    move-result p6

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingRight()I

    move-result v1

    add-int/2addr p6, v1

    add-int/2addr p6, v5

    add-int/2addr p6, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, p6, p3}, Landroid/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result p3

    iget p6, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    add-int/2addr p3, p6

    iget-boolean p6, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mInsetPaddingTopInGestureMode:Z

    if-eqz p6, :cond_0

    iget v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mStatusBarHeight:I

    :cond_0
    add-int/2addr p3, v2

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingBottom()I

    move-result p0

    add-int/2addr p3, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p0

    add-int/2addr p3, p5

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, p3, p0}, Landroid/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    add-int/2addr p0, v5

    return p0
.end method

.method private measureChildConstrained(Landroid/view/View;IIIII)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    add-int/2addr v1, v2

    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    add-int/2addr v1, p3

    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    invoke-static {p2, v1, p3}, Landroid/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result p3

    iget v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    add-int/2addr p3, v1

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mInsetPaddingTopInGestureMode:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mStatusBarHeight:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr p3, v1

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingBottom()I

    move-result p0

    add-int/2addr p3, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p0

    add-int/2addr p3, p5

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, p3, p0}, Landroid/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result p0

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p3

    const/high16 p4, 0x40000000    # 2.0f

    if-eq p3, p4, :cond_2

    if-ltz p6, :cond_2

    if-eqz p3, :cond_1

    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p0

    invoke-static {p0, p6}, Ljava/lang/Math;->min(II)I

    move-result p6

    :cond_1
    invoke-static {p6, p4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    :cond_2
    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    return-void
.end method

.method private measureSearchChildCollapseMargins(Landroid/view/View;IIII[I)I
    .locals 7

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    const/4 v2, 0x0

    aget v3, p6, v2

    sub-int/2addr v1, v3

    iget v3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    const/4 v4, 0x1

    aget v5, p6, v4

    sub-int/2addr v3, v5

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v6

    add-int/2addr v5, v6

    neg-int v1, v1

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v2

    neg-int v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    aput v1, p6, v4

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingLeft()I

    move-result p6

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingRight()I

    move-result v1

    add-int/2addr p6, v1

    add-int/2addr p6, v5

    add-int/2addr p6, p3

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getMeasuredWidth()I

    move-result p3

    sub-int/2addr p3, p6

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr p3, v1

    invoke-static {p2, p6, p3}, Landroid/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result p3

    iget p6, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    add-int/2addr p3, p6

    iget-boolean p6, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mInsetPaddingTopInGestureMode:Z

    if-eqz p6, :cond_0

    iget v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mStatusBarHeight:I

    :cond_0
    add-int/2addr p3, v2

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getPaddingBottom()I

    move-result p0

    add-int/2addr p3, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    add-int/2addr p3, p0

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr p3, p0

    add-int/2addr p3, p5

    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-static {p4, p3, p0}, Landroid/widget/Toolbar;->getChildMeasureSpec(III)I

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/view/View;->measure(II)V

    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result p0

    add-int/2addr p0, v5

    return p0
.end method

.method private postShowOverflowMenu()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private shouldCollapse()Z
    .locals 5

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapsible:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getChildCount()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    invoke-virtual {p0, v2}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    if-lez v4, :cond_1

    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    move-result v3

    if-lez v3, :cond_1

    return v1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private shouldLayout(Landroid/view/View;)Z
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-ne v0, p0, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p0

    const/16 p1, 0x8

    if-eq p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private shouldShowInsetInGestureBarMode()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/support/annotation/GestureBarAdapterPolicy;->gestureButtonEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    const-class v0, Lcom/oneplus/support/annotation/GestureBarAdapter;

    invoke-virtual {p0, v0}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method addChildrenForExpandedActionView()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    invoke-virtual {p0, v1}, Landroid/widget/Toolbar;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method public canShowOverflowMenu()Z
    .locals 1

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->isOverflowReserved()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result p0

    if-eqz p0, :cond_0

    instance-of p0, p1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public collapseActionView()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/oneplus/lib/menu/MenuItemImpl;

    :goto_0
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuItemImpl;->collapseActionView()Z

    :cond_1
    return-void
.end method

.method public dismissPopupMenus()V
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->dismissPopupMenus()V

    :cond_0
    return-void
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateDefaultLayoutParams()Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateDefaultLayoutParams()Landroid/widget/Toolbar$LayoutParams;
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateDefaultLayoutParams()Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected generateDefaultLayoutParams()Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .locals 1

    new-instance p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    const/4 v0, -0x2

    invoke-direct {p0, v0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;-><init>(II)V

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/Toolbar$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/Toolbar$LayoutParams;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .locals 1

    new-instance v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;
    .locals 0

    instance-of p0, p1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    if-eqz p0, :cond_0

    new-instance p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    check-cast p1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;-><init>(Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;)V

    return-object p0

    :cond_0
    instance-of p0, p1, Landroid/app/ActionBar$LayoutParams;

    if-eqz p0, :cond_1

    new-instance p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    check-cast p1, Landroid/app/ActionBar$LayoutParams;

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;-><init>(Landroid/app/ActionBar$LayoutParams;)V

    return-object p0

    :cond_1
    instance-of p0, p1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz p0, :cond_2

    new-instance p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    check-cast p1, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object p0

    :cond_2
    new-instance p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object p0
.end method

.method public getContentInsetEnd()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->getEnd()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getContentInsetEndWithActions()I
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsetEndWithActions:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContentInsetEnd()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getContentInsetLeft()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->getLeft()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getContentInsetRight()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->getRight()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getContentInsetStart()I
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->getStart()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getContentInsetStartWithNavigation()I
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsetStartWithNavigation:I

    const/high16 v1, -0x80000000

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContentInsetStart()I

    move-result v0

    :goto_0
    return v0
.end method

.method public getCurrentContentInsetEnd()I
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->peekMenu()Lcom/oneplus/lib/menu/MenuBuilder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuBuilder;->hasVisibleItems()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContentInsetEnd()I

    move-result v0

    iget p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsetEndWithActions:I

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContentInsetEnd()I

    move-result p0

    :goto_1
    return p0
.end method

.method public getCurrentContentInsetLeft()I
    .locals 1

    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getCurrentContentInsetEnd()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getCurrentContentInsetStart()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getCurrentContentInsetRight()I
    .locals 1

    invoke-static {p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getCurrentContentInsetStart()I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getCurrentContentInsetEnd()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getCurrentContentInsetStart()I
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContentInsetStart()I

    move-result v0

    iget p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsetStartWithNavigation:I

    const/4 v1, 0x0

    invoke-static {p0, v1}, Ljava/lang/Math;->max(II)I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getContentInsetStart()I

    move-result p0

    :goto_0
    return p0
.end method

.method public getDividerColor(Landroid/content/Context;I)I
    .locals 2

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {p1, p2, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iget p2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHasActionBarLineColor:Z
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHasActionBarLineColor:Z

    :cond_0
    iget p0, v0, Landroid/util/TypedValue;->data:I

    return p0
.end method

.method public getLogo()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getLogoDescription()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureMenu()V

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getMenu()Landroid/view/Menu;

    move-result-object p0

    return-object p0
.end method

.method public getNavigationContentDescription()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getNavigationIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/widget/ImageButton;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public getNavigationView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    return-object p0
.end method

.method public getOverflowIcon()Landroid/graphics/drawable/Drawable;
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureMenu()V

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->getOverflowIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0
.end method

.method getPopupContext()Landroid/content/Context;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupContext:Landroid/content/Context;

    return-object p0
.end method

.method public getPopupTheme()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupTheme:I

    return p0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getSupportWrap()Lcom/oneplus/lib/widget/actionbar/DecorToolbar;
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mWrapper:Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;-><init>(Lcom/oneplus/lib/widget/actionbar/Toolbar;Z)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mWrapper:Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mWrapper:Lcom/oneplus/lib/widget/actionbar/ToolbarWidgetWrapper;

    return-object p0
.end method

.method public getTitieTopWithoutOffset()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getTop()I

    move-result v0

    iget p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    mul-int/lit8 p0, p0, 0x2

    sub-int/2addr v0, p0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public getTitleMarginBottom()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginBottom:I

    return p0
.end method

.method public getTitleMarginEnd()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginEnd:I

    return p0
.end method

.method public getTitleMarginStart()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginStart:I

    return p0
.end method

.method public getTitleMarginTop()I
    .locals 0

    iget p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginTop:I

    return p0
.end method

.method public hasExpandedActionView()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz p0, :cond_0

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/oneplus/lib/menu/MenuItemImpl;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hideOverflowMenu()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->hideOverflowMenu()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public inflateMenu(I)V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getMenu()Landroid/view/Menu;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    return-void
.end method

.method public isOverflowMenuShowPending()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->isOverflowMenuShowPending()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isOverflowMenuShowing()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->isOverflowMenuShowing()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isTitleTruncated()Z
    .locals 4

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object p0

    if-nez p0, :cond_1

    return v0

    :cond_1
    invoke-virtual {p0}, Landroid/text/Layout;->getLineCount()I

    move-result v1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_3

    invoke-virtual {p0, v2}, Landroid/text/Layout;->getEllipsisCount(I)I

    move-result v3

    if-lez v3, :cond_2

    const/4 p0, 0x1

    return p0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/Toolbar;->onAttachedToWindow()V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/widget/Toolbar;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mOrientation:I

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mOrientation:I

    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x10102eb

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Landroid/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, p1}, Landroid/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method protected onCreateDrawableState(I)[I
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapsible:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTmpStatesArray:[I

    array-length v1, v0

    add-int/2addr p1, v1

    invoke-super {p0, p1}, Landroid/widget/Toolbar;->onCreateDrawableState(I)[I

    move-result-object p1

    const/4 v1, 0x0

    iget-boolean v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapsible:Z

    if-eqz v2, :cond_0

    sget v2, Lcom/oneplus/commonctrl/R$attr;->op_state_collapsible:I

    goto :goto_0

    :cond_0
    sget v2, Lcom/oneplus/commonctrl/R$attr;->op_state_collapsible:I

    neg-int v2, v2

    :goto_0
    aput v2, v0, v1

    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapsible:Z

    if-eqz v2, :cond_1

    iget-boolean p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapsed:Z

    if-eqz p0, :cond_1

    sget p0, Lcom/oneplus/commonctrl/R$attr;->op_state_collapsed:I

    neg-int p0, p0

    goto :goto_1

    :cond_1
    sget p0, Lcom/oneplus/commonctrl/R$attr;->op_state_collapsed:I

    :goto_1
    aput p0, v0, v1

    invoke-static {p1, v0}, Landroid/widget/Toolbar;->mergeDrawableStates([I[I)[I

    move-result-object p0

    return-object p0

    :cond_2
    invoke-super {p0, p1}, Landroid/widget/Toolbar;->onCreateDrawableState(I)[I

    move-result-object p0

    return-object p0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/Toolbar;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mShowOverflowMenuRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 18

    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    iget-object v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v4}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v4

    iget-object v5, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v5}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v5

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingLeft()I

    move-result v6

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingRight()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingBottom()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getWidth()I

    move-result v9

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getHeight()I

    move-result v10

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result v11

    iget v12, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    add-int/2addr v11, v12

    iget-boolean v12, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mInsetPaddingTopInGestureMode:Z

    if-eqz v12, :cond_1

    iget v12, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mStatusBarHeight:I

    goto :goto_1

    :cond_1
    move v12, v3

    :goto_1
    add-int/2addr v11, v12

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingLeft()I

    move-result v12

    sub-int v13, v9, v7

    iget-object v14, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempMargins:[I

    aput v3, v14, v2

    aput v3, v14, v3

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getMinimumHeight()I

    move-result v15

    if-ltz v15, :cond_2

    sub-int v2, p5, p3

    invoke-static {v15, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    if-eqz v4, :cond_4

    if-eqz v1, :cond_3

    iget-object v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v4, v13, v14, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v4

    goto :goto_3

    :cond_3
    iget-object v4, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v4, v12, v14, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v12

    :cond_4
    move v4, v13

    :goto_3
    if-eqz v5, :cond_6

    if-eqz v1, :cond_5

    iget-object v5, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v5, v4, v14, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v4

    goto :goto_4

    :cond_5
    iget-object v5, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v0, v5, v12, v14, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v12

    :cond_6
    :goto_4
    iget-object v5, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-direct {v0, v5}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_8

    if-eqz v1, :cond_7

    iget-object v5, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-direct {v0, v5, v12, v14, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v12

    goto :goto_5

    :cond_7
    iget-object v5, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-direct {v0, v5, v4, v14, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v4

    :cond_8
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getCurrentContentInsetLeft()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getCurrentContentInsetRight()I

    move-result v15

    move/from16 p2, v7

    sub-int v7, v5, v12

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    aput v7, v14, v3

    sub-int v7, v13, v4

    sub-int v7, v15, v7

    invoke-static {v3, v7}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/16 v16, 0x1

    aput v7, v14, v16

    invoke-static {v12, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int/2addr v13, v15

    invoke-static {v4, v13}, Ljava/lang/Math;->min(II)I

    move-result v4

    iget-object v7, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v7}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_a

    if-eqz v1, :cond_9

    iget-object v7, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v7, v4, v14, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v4

    goto :goto_6

    :cond_9
    iget-object v7, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v0, v7, v5, v14, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v5

    :cond_a
    :goto_6
    iget-object v7, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v7}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_c

    if-eqz v1, :cond_b

    iget-object v7, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v7, v4, v14, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v4

    goto :goto_7

    :cond_b
    iget-object v7, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v0, v7, v5, v14, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v5

    :cond_c
    :goto_7
    iget-object v7, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v0, v7}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v7

    iget-object v12, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v0, v12}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v12

    if-eqz v7, :cond_d

    iget-object v13, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v13}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v13

    check-cast v13, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    iget v15, v13, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    iget-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v15, v3

    iget v3, v13, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v15, v3

    const/4 v3, 0x0

    add-int/lit8 v13, v15, 0x0

    goto :goto_8

    :cond_d
    const/4 v13, 0x0

    :goto_8
    if-eqz v12, :cond_e

    iget-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    iget v15, v3, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 v16, v6

    iget-object v6, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v15, v6

    iget v3, v3, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int/2addr v15, v3

    add-int/2addr v13, v15

    goto :goto_9

    :cond_e
    move/from16 v16, v6

    :goto_9
    if-nez v7, :cond_10

    if-eqz v12, :cond_f

    goto :goto_b

    :cond_f
    move/from16 p3, v2

    move/from16 v17, v9

    :goto_a
    const/4 v1, 0x0

    goto/16 :goto_18

    :cond_10
    :goto_b
    if-eqz v7, :cond_11

    iget-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    goto :goto_c

    :cond_11
    iget-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    :goto_c
    if-eqz v12, :cond_12

    iget-object v6, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    goto :goto_d

    :cond_12
    iget-object v6, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    :goto_d
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    if-eqz v7, :cond_13

    iget-object v15, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v15

    if-gtz v15, :cond_14

    :cond_13
    if-eqz v12, :cond_15

    iget-object v15, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v15

    if-lez v15, :cond_15

    :cond_14
    move/from16 v17, v9

    const/4 v15, 0x1

    goto :goto_e

    :cond_15
    move/from16 v17, v9

    const/4 v15, 0x0

    :goto_e
    iget v9, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mGravity:I

    and-int/lit8 v9, v9, 0x10

    move/from16 p3, v2

    const/16 v2, 0x30

    if-eq v9, v2, :cond_19

    const/16 v2, 0x50

    if-eq v9, v2, :cond_18

    sub-int v2, v10, v11

    sub-int/2addr v2, v8

    sub-int/2addr v2, v13

    div-int/lit8 v2, v2, 0x2

    iget v9, v3, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    move/from16 p5, v5

    iget v5, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginTop:I

    add-int/2addr v9, v5

    if-ge v2, v9, :cond_16

    iget v2, v3, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    iget v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginTop:I

    add-int/2addr v2, v3

    goto :goto_f

    :cond_16
    sub-int/2addr v10, v8

    sub-int/2addr v10, v13

    sub-int/2addr v10, v2

    sub-int/2addr v10, v11

    iget v3, v3, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    iget v5, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginBottom:I

    add-int/2addr v3, v5

    if-ge v10, v3, :cond_17

    iget v3, v6, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    iget v5, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginBottom:I

    add-int/2addr v3, v5

    sub-int/2addr v3, v10

    sub-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    :cond_17
    :goto_f
    add-int/2addr v11, v2

    goto :goto_11

    :cond_18
    move/from16 p5, v5

    sub-int/2addr v10, v8

    iget v2, v6, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    sub-int/2addr v10, v2

    iget v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginBottom:I

    sub-int/2addr v10, v2

    sub-int v11, v10, v13

    goto :goto_11

    :cond_19
    move/from16 p5, v5

    iget-boolean v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mInsetPaddingTopInGestureMode:Z

    if-eqz v2, :cond_1a

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result v2

    iget v5, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    add-int/2addr v2, v5

    iget v5, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mStatusBarHeight:I

    add-int/2addr v2, v5

    iget v3, v3, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginTop:I

    goto :goto_10

    :cond_1a
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result v2

    iget v5, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    add-int/2addr v2, v5

    iget v3, v3, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v2, v3

    iget v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginTop:I

    :goto_10
    add-int v11, v2, v3

    :goto_11
    if-eqz v1, :cond_1f

    if-eqz v15, :cond_1b

    iget v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginStart:I

    const/4 v1, 0x1

    goto :goto_12

    :cond_1b
    const/4 v1, 0x1

    const/4 v3, 0x0

    :goto_12
    aget v2, v14, v1

    sub-int/2addr v3, v2

    const/4 v2, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v5

    sub-int/2addr v4, v5

    neg-int v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    aput v3, v14, v1

    if-eqz v7, :cond_1c

    iget-object v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    iget-object v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v2

    sub-int v2, v4, v2

    iget-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v3

    add-int/2addr v3, v11

    iget-object v5, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5, v2, v11, v4, v3}, Landroid/widget/TextView;->layout(IIII)V

    iget v5, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginEnd:I

    sub-int/2addr v2, v5

    iget v1, v1, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v11, v3, v1

    goto :goto_13

    :cond_1c
    move v2, v4

    :goto_13
    if-eqz v12, :cond_1d

    iget-object v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    iget v3, v1, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v11, v3

    iget-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    sub-int v3, v4, v3

    iget-object v5, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v5, v11

    iget-object v6, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v3, v11, v4, v5}, Landroid/widget/TextView;->layout(IIII)V

    iget v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginEnd:I

    sub-int v3, v4, v3

    iget v1, v1, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    goto :goto_14

    :cond_1d
    move v3, v4

    :goto_14
    if-eqz v15, :cond_1e

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    move v4, v1

    :cond_1e
    move/from16 v5, p5

    goto/16 :goto_a

    :cond_1f
    if-eqz v15, :cond_20

    iget v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginStart:I

    const/4 v1, 0x0

    goto :goto_15

    :cond_20
    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_15
    aget v2, v14, v1

    sub-int/2addr v3, v2

    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v5, p5, v2

    neg-int v2, v3

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, v14, v1

    if-eqz v7, :cond_21

    iget-object v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    iget-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v5

    iget-object v6, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v11

    iget-object v7, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7, v5, v11, v3, v6}, Landroid/widget/TextView;->layout(IIII)V

    iget v7, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginEnd:I

    add-int/2addr v3, v7

    iget v2, v2, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    add-int v11, v6, v2

    goto :goto_16

    :cond_21
    move v3, v5

    :goto_16
    if-eqz v12, :cond_22

    iget-object v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    iget v6, v2, Landroid/widget/Toolbar$LayoutParams;->topMargin:I

    add-int/2addr v11, v6

    iget-object v6, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    add-int/2addr v6, v5

    iget-object v7, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v7, v11

    iget-object v8, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v5, v11, v6, v7}, Landroid/widget/TextView;->layout(IIII)V

    iget v7, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginEnd:I

    add-int/2addr v6, v7

    iget v2, v2, Landroid/widget/Toolbar$LayoutParams;->bottomMargin:I

    goto :goto_17

    :cond_22
    move v6, v5

    :goto_17
    if-eqz v15, :cond_23

    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    :cond_23
    :goto_18
    iget-object v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    iget-object v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_19
    if-ge v3, v2, :cond_24

    iget-object v6, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    move/from16 v7, p3

    invoke-direct {v0, v6, v5, v14, v7}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v5

    add-int/lit8 v3, v3, 0x1

    goto :goto_19

    :cond_24
    move/from16 v7, p3

    iget-object v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v3, 0x5

    invoke-direct {v0, v2, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    iget-object v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v1

    :goto_1a
    if-ge v3, v2, :cond_25

    iget-object v6, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;

    invoke-direct {v0, v6, v4, v14, v7}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildRight(Landroid/view/View;I[II)I

    move-result v4

    add-int/lit8 v3, v3, 0x1

    goto :goto_1a

    :cond_25
    iget-object v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addCustomViewsWithGravity(Ljava/util/List;I)V

    iget-object v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-direct {v0, v2, v14}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getViewListMeasuredWidth(Ljava/util/List;[I)I

    move-result v2

    sub-int v9, v17, v16

    sub-int v9, v9, p2

    div-int/lit8 v9, v9, 0x2

    add-int v6, v16, v9

    div-int/lit8 v3, v2, 0x2

    sub-int v3, v6, v3

    add-int/2addr v2, v3

    if-ge v3, v5, :cond_26

    goto :goto_1b

    :cond_26
    if-le v2, v4, :cond_27

    sub-int/2addr v2, v4

    sub-int v5, v3, v2

    goto :goto_1b

    :cond_27
    move v5, v3

    :goto_1b
    iget-object v2, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    :goto_1c
    if-ge v1, v2, :cond_28

    iget-object v3, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-direct {v0, v3, v5, v14, v7}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->layoutChildLeft(Landroid/view/View;I[II)I

    move-result v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    :cond_28
    iget-object v0, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 17

    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    iget-object v8, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTempMargins:[I

    invoke-static/range {p0 .. p0}, Lcom/oneplus/lib/widget/util/ViewUtils;->isLayoutRtl(Landroid/view/View;)Z

    move-result v1

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-eqz v1, :cond_0

    move v11, v9

    move v12, v10

    goto :goto_0

    :cond_0
    move v12, v9

    move v11, v10

    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMaxButtonHeight:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iget-object v2, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v2}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v2

    invoke-static {v10, v2}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v2

    move v13, v1

    move v14, v2

    goto :goto_1

    :cond_1
    move v0, v10

    move v13, v0

    move v14, v13

    :goto_1
    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    iget v6, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMaxButtonHeight:I

    const/4 v3, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-direct {v7, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapseButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getMeasuredState()I

    move-result v1

    invoke-static {v14, v1}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v14

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getCurrentContentInsetStart()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v15, v10, v2

    sub-int/2addr v1, v0

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v8, v11

    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-direct {v7, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    const/4 v5, 0x0

    iget v6, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMaxButtonHeight:I

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v15

    move/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->measureChildConstrained(Landroid/view/View;IIIII)V

    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-direct {v7, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-direct {v7, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v13

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getMeasuredState()I

    move-result v1

    invoke-static {v14, v1}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v14

    goto :goto_2

    :cond_3
    move v0, v10

    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getCurrentContentInsetEnd()I

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int v11, v15, v2

    sub-int/2addr v1, v0

    invoke-static {v10, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    aput v0, v8, v12

    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v7, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    instance-of v0, v0, Landroid/view/CollapsibleActionView;

    if-eqz v0, :cond_4

    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ne v0, v9, :cond_4

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v11

    move/from16 v4, p2

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->measureSearchChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    goto :goto_3

    :cond_4
    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v11

    move/from16 v4, p2

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    :goto_3
    add-int/2addr v11, v0

    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-direct {v7, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedActionView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredState()I

    move-result v0

    invoke-static {v14, v0}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v14

    :cond_5
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v7, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    move/from16 v2, p1

    move v3, v11

    move/from16 v4, p2

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v11, v0

    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {v7, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v13, v0}, Ljava/lang/Math;->max(II)I

    move-result v13

    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredState()I

    move-result v0

    invoke-static {v14, v0}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v14

    :cond_6
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getChildCount()I

    move-result v12

    move v15, v13

    move v13, v11

    move v11, v10

    :goto_4
    if-ge v11, v12, :cond_9

    invoke-virtual {v7, v11}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    iget v0, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->mViewType:I

    if-nez v0, :cond_8

    invoke-direct {v7, v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_5

    :cond_7
    const/4 v5, 0x0

    move-object/from16 v0, p0

    move-object v1, v6

    move/from16 v2, p1

    move v3, v13

    move/from16 v4, p2

    move-object/from16 v16, v6

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    add-int/2addr v13, v0

    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    move-object/from16 v1, v16

    invoke-direct {v7, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v0, v2

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredState()I

    move-result v1

    invoke-static {v14, v1}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v1

    move v15, v0

    move v14, v1

    :cond_8
    :goto_5
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    :cond_9
    iget v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginTop:I

    iget v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginBottom:I

    add-int v11, v0, v1

    iget v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginStart:I

    iget v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginEnd:I

    add-int v12, v0, v1

    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    add-int v3, v13, v12

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v5, v11

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v0

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getHorizontalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    iget-object v2, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v2

    add-int/2addr v1, v2

    iget-object v2, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v2

    invoke-static {v14, v2}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v14

    move/from16 v16, v1

    move v6, v14

    move v14, v0

    goto :goto_6

    :cond_a
    move/from16 v16, v10

    move v6, v14

    move/from16 v14, v16

    :goto_6
    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldLayout(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    add-int v3, v13, v12

    add-int v5, v16, v11

    move-object/from16 v0, p0

    move/from16 v2, p1

    move/from16 v4, p2

    move v11, v6

    move-object v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->measureChildCollapseMargins(Landroid/view/View;IIII[I)I

    move-result v0

    invoke-static {v14, v0}, Ljava/lang/Math;->max(II)I

    move-result v14

    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v0

    iget-object v1, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {v7, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getVerticalMargins(Landroid/view/View;)I

    move-result v1

    add-int/2addr v0, v1

    add-int v16, v16, v0

    iget-object v0, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v0

    invoke-static {v11, v0}, Landroid/widget/Toolbar;->combineMeasuredStates(II)I

    move-result v6

    goto :goto_7

    :cond_b
    move v11, v6

    :goto_7
    move/from16 v0, v16

    add-int/2addr v13, v14

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingLeft()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingRight()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v13, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingTop()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getPaddingBottom()I

    move-result v2

    add-int/2addr v1, v2

    add-int/2addr v0, v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v13, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/high16 v2, -0x1000000

    and-int/2addr v2, v6

    move/from16 v3, p1

    invoke-static {v1, v3, v2}, Landroid/widget/Toolbar;->resolveSizeAndState(III)I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getSuggestedMinimumHeight()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    shl-int/lit8 v2, v6, 0x10

    move/from16 v3, p2

    invoke-static {v0, v3, v2}, Landroid/widget/Toolbar;->resolveSizeAndState(III)I

    move-result v0

    iget-boolean v2, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mNeedResetPadding:Z

    if-eqz v2, :cond_d

    iget v2, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMaxButtonHeight:I

    sub-int v2, v0, v2

    div-int/lit8 v2, v2, 0x2

    iput v2, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    iget v2, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    iget v3, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mRealPaddingBottom:I

    if-ge v2, v3, :cond_c

    sub-int/2addr v3, v2

    add-int/2addr v2, v3

    iput v2, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    goto :goto_8

    :cond_c
    sub-int v3, v2, v3

    sub-int/2addr v2, v3

    iput v2, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    :cond_d
    :goto_8
    invoke-virtual/range {p0 .. p0}, Landroid/widget/Toolbar;->getFitsSystemWindows()Z

    move-result v2

    if-eqz v2, :cond_e

    iget v2, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPaddingTopOffset:I

    add-int/2addr v0, v2

    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldShowInsetInGestureBarMode()Z

    move-result v2

    iput-boolean v2, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mInsetPaddingTopInGestureMode:Z

    iget-boolean v2, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mInsetPaddingTopInGestureMode:Z

    if-eqz v2, :cond_f

    iget-boolean v2, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMeasuredGestureBar:Z

    if-nez v2, :cond_f

    iget v2, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mStatusBarHeight:I

    add-int/2addr v2, v0

    iput v2, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHeightWithGestureBar:I

    iput-boolean v9, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMeasuredGestureBar:Z

    move v0, v2

    goto :goto_9

    :cond_f
    const v2, 0xffffff

    and-int/2addr v2, v0

    iget v3, v7, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHeightWithGestureBar:I

    if-ge v2, v3, :cond_10

    move v0, v3

    :cond_10
    :goto_9
    invoke-direct/range {p0 .. p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->shouldCollapse()Z

    move-result v2

    if-eqz v2, :cond_11

    move v0, v10

    :cond_11
    invoke-virtual {v7, v1, v0}, Landroid/widget/Toolbar;->setMeasuredDimension(II)V

    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3

    check-cast p1, Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;

    invoke-virtual {p1}, Landroid/view/View$BaseSavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/widget/Toolbar;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ActionMenuView;->peekMenu()Lcom/oneplus/lib/menu/MenuBuilder;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget v1, p1, Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;->expandedMenuItemId:I

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/view/MenuItem;->expandActionView()Z

    :cond_1
    iget-boolean p1, p1, Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;->isOverflowOpen:Z

    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->postShowOverflowMenu()V

    :cond_2
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/Toolbar;->onRtlPropertiesChanged(I)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureContentInsets()V

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->setDirection(Z)V

    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;

    invoke-super {p0}, Landroid/widget/Toolbar;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mExpandedMenuPresenter:Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;

    if-eqz v1, :cond_0

    iget-object v1, v1, Lcom/oneplus/lib/widget/actionbar/Toolbar$ExpandedActionViewMenuPresenter;->mCurrentExpandedItem:Lcom/oneplus/lib/menu/MenuItemImpl;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/oneplus/lib/menu/MenuItemImpl;->getItemId()I

    move-result v1

    iput v1, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;->expandedMenuItemId:I

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->isOverflowMenuShowing()Z

    move-result p0

    iput-boolean p0, v0, Lcom/oneplus/lib/widget/actionbar/Toolbar$SavedState;->isOverflowOpen:Z

    return-object v0
.end method

.method protected onSetLayoutParams(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mEatingTouch:Z

    :cond_0
    iget-boolean v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mEatingTouch:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    invoke-super {p0, p1}, Landroid/widget/Toolbar;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    iput-boolean v3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mEatingTouch:Z

    :cond_1
    if-eq v0, v3, :cond_2

    const/4 p1, 0x3

    if-ne v0, p1, :cond_3

    :cond_2
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mEatingTouch:Z

    :cond_3
    return v3
.end method

.method removeChildrenForExpandedActionView()V
    .locals 4

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;

    iget v2, v2, Lcom/oneplus/lib/widget/actionbar/Toolbar$LayoutParams;->mViewType:I

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-eq v1, v2, :cond_0

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeViewAt(I)V

    iget-object v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public setCollapsedState(Z)Z
    .locals 5

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHasActionBarLineColor:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapsed:Z

    if-eq v0, p1, :cond_3

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapsed:Z

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v2, v0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0, v3}, Landroid/graphics/drawable/LayerDrawable;->getId(I)I

    move-result v0

    sget v4, Lcom/oneplus/commonctrl/R$id;->actionbar_divider:I

    if-ne v0, v4, :cond_2

    if-eqz p1, :cond_1

    iget v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mActionBarDividerColor:I

    :cond_1
    sget-object p1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v1, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    :cond_2
    invoke-virtual {p0}, Landroid/widget/Toolbar;->refreshDrawableState()V

    invoke-virtual {p0}, Landroid/widget/Toolbar;->jumpDrawablesToCurrentState()V

    return v3

    :cond_3
    return v1
.end method

.method public setCollapsible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mCollapsible:Z

    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    return-void
.end method

.method public setContentInsetEndWithActions(I)V
    .locals 1

    if-gez p1, :cond_0

    const/high16 p1, -0x80000000

    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsetEndWithActions:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsetEndWithActions:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setContentInsetStartWithNavigation(I)V
    .locals 1

    if-gez p1, :cond_0

    const/high16 p1, -0x80000000

    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsetStartWithNavigation:I

    if-eq p1, v0, :cond_1

    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsetStartWithNavigation:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getNavigationIcon()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    :cond_1
    return-void
.end method

.method public setContentInsetsAbsolute(II)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureContentInsets()V

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->setAbsolute(II)V

    return-void
.end method

.method public setContentInsetsRelative(II)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureContentInsets()V

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mContentInsets:Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;

    invoke-virtual {p0, p1, p2}, Lcom/oneplus/lib/widget/actionbar/RtlSpacingHelper;->setRelative(II)V

    return-void
.end method

.method public setLogo(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setLogo(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureLogoView()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setLogoDescription(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setLogoDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setLogoDescription(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureLogoView()V

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mLogoView:Landroid/widget/ImageView;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setNavigationContentDescription(I)V
    .locals 1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setNavigationContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setNavigationContentDescription(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureNavButtonView()V

    :cond_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setNavigationIcon(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setNavigationIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setNavigationIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureNavButtonView()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    if-eqz v0, :cond_1

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    if-eqz p0, :cond_2

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    return-void
.end method

.method public setNavigationOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureNavButtonView()V

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMyNavButtonView:Landroid/widget/ImageButton;

    invoke-virtual {p0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/Toolbar;->setOnMenuItemClickListener(Landroid/widget/Toolbar$OnMenuItemClickListener;)V

    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mOnMenuItemClickListener:Landroid/widget/Toolbar$OnMenuItemClickListener;

    return-void
.end method

.method public setOverflowIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->ensureMenu()V

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/menu/ActionMenuView;->setOverflowIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setPopupTheme(I)V
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupTheme:I

    if-eq v0, p1, :cond_1

    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupTheme:I

    if-nez p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mPopupContext:Landroid/content/Context;

    :cond_1
    :goto_0
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setSubtitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextAppearance:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextColor:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setSubtitleTextAppearance(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextAppearance:I

    iget-object p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public setSubtitleTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextColor:I

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mSubtitleTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public setTitle(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    sget-object v1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextAppearance:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextAppearance:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextColor:I

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->addSystemView(Landroid/view/View;Z)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->isChildOrHidden(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Landroid/widget/Toolbar;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mHiddenViews:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_4

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_4
    iput-object p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleText:Ljava/lang/CharSequence;

    return-void
.end method

.method public setTitleMargin(IIII)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginStart:I

    iput p2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginTop:I

    iput p3, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginEnd:I

    iput p4, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginBottom:I

    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    return-void
.end method

.method public setTitleMarginBottom(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginBottom:I

    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    return-void
.end method

.method public setTitleMarginEnd(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginEnd:I

    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    return-void
.end method

.method public setTitleMarginStart(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginStart:I

    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    return-void
.end method

.method public setTitleMarginTop(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleMarginTop:I

    invoke-virtual {p0}, Landroid/widget/Toolbar;->requestLayout()V

    return-void
.end method

.method public setTitleTextAppearance(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextAppearance:I

    iget-object p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/Toolbar;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p1, p0, p2}, Landroid/widget/TextView;->setTextAppearance(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public setTitleTextColor(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextColor:I

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mTitleTextView:Landroid/widget/TextView;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public showOverflowMenu()Z
    .locals 0

    iget-object p0, p0, Lcom/oneplus/lib/widget/actionbar/Toolbar;->mMenuView:Lcom/oneplus/lib/menu/ActionMenuView;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/ActionMenuView;->showOverflowMenu()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
