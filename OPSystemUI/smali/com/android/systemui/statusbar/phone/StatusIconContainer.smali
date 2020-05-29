.class public Lcom/android/systemui/statusbar/phone/StatusIconContainer;
.super Lcom/oneplus/systemui/statusbar/phone/OpStatusIconContainer;
.source "StatusIconContainer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;
    }
.end annotation


# static fields
.field private static final ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private static final ANIMATE_ALL_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

.field private static final X_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;


# instance fields
.field private final DELAY_INTERVAL:I

.field private final MAX_RETRY_TIMES:I

.field private mDotPadding:I

.field private final mHandler:Landroid/os/Handler;

.field private mIconDotFrameWidth:I

.field private mIgnoredSlots:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mLayoutStates:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasureViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedsUnderflow:Z

.field private mOpTag:Ljava/lang/String;

.field private mReRequestLayout:Ljava/lang/Runnable;

.field private mReRequestLayoutTimes:I

.field private mShouldRestrictIcons:Z

.field private mStaticDotDiameter:I

.field private mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mUnderflowStart:I

.field private mUnderflowWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$2;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$2;-><init>()V

    const-wide/16 v1, 0xc8

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    const-wide/16 v3, 0x32

    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDelay(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$3;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$3;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->X_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    new-instance v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$4;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$4;-><init>()V

    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->setDuration(J)Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    sput-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->ANIMATE_ALL_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/systemui/statusbar/phone/OpStatusIconContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/16 p1, 0x64

    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->DELAY_INTERVAL:I

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mReRequestLayoutTimes:I

    const/4 p2, 0x2

    iput p2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->MAX_RETRY_TIMES:I

    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowStart:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    const-string p2, ""

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mOpTag:Ljava/lang/String;

    new-instance p2, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;

    invoke-direct {p2, p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$1;-><init>(Lcom/android/systemui/statusbar/phone/StatusIconContainer;)V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mReRequestLayout:Ljava/lang/Runnable;

    new-instance p2, Landroid/os/Handler;

    invoke-direct {p2}, Landroid/os/Handler;-><init>()V

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mHandler:Landroid/os/Handler;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->initDimens()V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/statusbar/phone/StatusIconContainer;)Ljava/lang/Runnable;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mReRequestLayout:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/phone/StatusIconContainer;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/systemui/statusbar/phone/StatusIconContainer;)I
    .locals 0

    iget p0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mReRequestLayoutTimes:I

    return p0
.end method

.method static synthetic access$202(Lcom/android/systemui/statusbar/phone/StatusIconContainer;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mReRequestLayoutTimes:I

    return p1
.end method

.method static synthetic access$208(Lcom/android/systemui/statusbar/phone/StatusIconContainer;)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mReRequestLayoutTimes:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mReRequestLayoutTimes:I

    return v0
.end method

.method static synthetic access$300()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->ADD_ICON_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-object v0
.end method

.method static synthetic access$400()Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;
    .locals 1

    sget-object v0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->X_ANIMATION_PROPERTIES:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    return-object v0
.end method

.method private applyIconStates()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->applyToView(Landroid/view/View;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private calculateIconTranslations()V
    .locals 13

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getOpWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingEnd()I

    move-result v1

    int-to-float v1, v1

    sub-float v1, v0, v1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingStart()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v4, v3, -0x1

    :goto_0
    const/4 v5, 0x2

    const/4 v6, 0x0

    if-ltz v4, :cond_2

    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    move-object v8, v7

    check-cast v8, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    move-result-object v9

    invoke-interface {v8}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconVisible()Z

    move-result v10

    if-eqz v10, :cond_1

    invoke-interface {v8}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconBlocked()Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    invoke-interface {v8}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    goto :goto_1

    :cond_0
    iput v6, v9, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewTotalWidth(Landroid/view/View;)I

    move-result v5

    int-to-float v5, v5

    sub-float v5, v1, v5

    iput v5, v9, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    invoke-virtual {v5, v6, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    invoke-static {v7}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewTotalWidth(Landroid/view/View;)I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v1, v5

    goto :goto_2

    :cond_1
    :goto_1
    iput v5, v9, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    :goto_2
    add-int/lit8 v4, v4, -0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v4, 0x46

    if-gt v1, v4, :cond_3

    goto :goto_3

    :cond_3
    const/16 v4, 0x45

    :goto_3
    iput v6, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowStart:I

    const/4 v7, 0x1

    sub-int/2addr v1, v7

    move v8, v6

    :goto_4
    const/4 v9, -0x1

    if-ltz v1, :cond_6

    iget-object v10, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    invoke-virtual {v10, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    if-eqz v11, :cond_4

    iget v11, v10, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    iget v12, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    int-to-float v12, v12

    add-float/2addr v12, v2

    cmpg-float v11, v11, v12

    if-ltz v11, :cond_7

    :cond_4
    iget-boolean v11, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    if-eqz v11, :cond_5

    if-lt v8, v4, :cond_5

    goto :goto_5

    :cond_5
    iget v9, v10, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    iget v10, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    int-to-float v10, v10

    sub-float/2addr v9, v10

    invoke-static {v2, v9}, Ljava/lang/Math;->max(FF)F

    move-result v9

    float-to-int v9, v9

    iput v9, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowStart:I

    add-int/lit8 v8, v8, 0x1

    add-int/lit8 v1, v1, -0x1

    goto :goto_4

    :cond_6
    move v1, v9

    :cond_7
    :goto_5
    if-eq v1, v9, :cond_9

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mStaticDotDiameter:I

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mDotPadding:I

    add-int/2addr v2, v4

    iget v4, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowStart:I

    iget v8, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    add-int/2addr v4, v8

    iget v8, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconDotFrameWidth:I

    sub-int/2addr v4, v8

    move v8, v4

    move v4, v6

    :goto_6
    if-ltz v1, :cond_9

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mLayoutStates:Ljava/util/ArrayList;

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    sget v10, Lcom/oneplus/systemui/statusbar/phone/OpStatusIconContainer;->MAX_DOTS:I

    if-ge v4, v10, :cond_8

    int-to-float v10, v8

    iput v10, v9, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    iput v7, v9, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    sub-int/2addr v8, v2

    add-int/lit8 v4, v4, 0x1

    goto :goto_7

    :cond_8
    iput v5, v9, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->visibleState:I

    :goto_7
    add-int/lit8 v1, v1, -0x1

    goto :goto_6

    :cond_9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isLayoutRtl()Z

    move-result v1

    if-eqz v1, :cond_a

    :goto_8
    if-ge v6, v3, :cond_a

    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    move-result-object v2

    iget v4, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    sub-float v4, v0, v4

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v4, v1

    iput v4, v2, Lcom/android/systemui/statusbar/notification/stack/ViewState;->xTranslation:F

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_a
    return-void
.end method

.method private getOpMaxWidth(I)I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mOpTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mOpTag:Ljava/lang/String;

    const-string v1, "status_icon_container"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mOpTag:Ljava/lang/String;

    const-string v1, "demo_status_icon_container"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {v0, v1}, Lcom/android/systemui/SysUiServiceProvider;->getComponent(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mStatusBar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, p1}, Lcom/oneplus/systemui/statusbar/phone/OpStatusBar;->getSystemIconAreaMaxWidth(I)I

    move-result p0

    if-lez p0, :cond_2

    if-le p1, p0, :cond_2

    goto :goto_0

    :cond_2
    move p0, p1

    :goto_0
    return p0
.end method

.method private getOpWidth()I
    .locals 1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getOpMaxWidth(I)I

    move-result p0

    return p0
.end method

.method private static getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;
    .locals 1

    sget v0, Lcom/android/systemui/R$id;->status_bar_view_state_tag:I

    invoke-virtual {p0, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    return-object p0
.end method

.method private static getViewTotalMeasuredWidth(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private static getViewTotalWidth(Landroid/view/View;)I
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/view/View;->getPaddingEnd()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method private initDimens()V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050211

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconDotFrameWidth:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->overflow_icon_dot_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mDotPadding:I

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/systemui/R$dimen;->overflow_dot_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mStaticDotDiameter:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIconDotFrameWidth:I

    iget v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mStaticDotDiameter:I

    iget v2, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mDotPadding:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/oneplus/systemui/statusbar/phone/OpStatusIconContainer;->setUnderflowWidth(III)I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    return-void
.end method

.method private resetViewStates()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewStateFromChild(Landroid/view/View;)Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    move-result-object v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/notification/stack/ViewState;->initFrom(Landroid/view/View;)V

    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->alpha:F

    iput-boolean v0, v3, Lcom/android/systemui/statusbar/notification/stack/ViewState;->hidden:Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public isRestrictingIcons()Z
    .locals 0

    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    return p0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    move-result p1

    int-to-float p1, p1

    const/high16 p2, 0x40000000    # 2.0f

    div-float/2addr p1, p2

    const/4 p3, 0x0

    move p4, p3

    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p5

    if-ge p4, p5, :cond_0

    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p5

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    int-to-float v2, v1

    div-float/2addr v2, p2

    sub-float v2, p1, v2

    float-to-int v2, v2

    add-int/2addr v1, v2

    invoke-virtual {p5, p3, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 p4, p4, 0x1

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->resetViewStates()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->calculateIconTranslations()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->applyIconStates()V

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getOpWidth()I

    move-result p2

    if-le p1, p2, :cond_2

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onLayout, last, getWidth() > getOpWidth(),  getWidth():"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", getMeasuredWidth:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", getOpWidth():"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getOpWidth()I

    move-result p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", getParent().getParent():"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    invoke-interface {p2}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object p2

    goto :goto_1

    :cond_1
    const-string p2, "Null"

    :goto_1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "StatusIconContainer"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mReRequestLayout:Ljava/lang/Runnable;

    const-wide/16 p2, 0x64

    invoke-virtual {p1, p0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getOpMaxWidth(I)I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    invoke-virtual {p0, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/systemui/statusbar/StatusIconDisplayable;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->isIconBlocked()Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mIgnoredSlots:Ljava/util/ArrayList;

    invoke-interface {v4}, Lcom/android/systemui/statusbar/StatusIconDisplayable;->getSlot()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    check-cast v4, Landroid/view/View;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/16 v3, 0x46

    if-gt v1, v3, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    const/16 v4, 0x45

    :goto_1
    iget v5, p0, Landroid/widget/LinearLayout;->mPaddingLeft:I

    iget v6, p0, Landroid/widget/LinearLayout;->mPaddingRight:I

    add-int/2addr v5, v6

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_3

    if-le v1, v3, :cond_3

    move v3, v8

    goto :goto_2

    :cond_3
    move v3, v2

    :goto_2
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    move v3, v2

    move v7, v8

    :goto_3
    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v3, v9, :cond_7

    iget-object v9, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mMeasureViews:Ljava/util/ArrayList;

    sub-int v10, v1, v3

    sub-int/2addr v10, v8

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/View;

    invoke-virtual {p0, v9, v6, p2}, Landroid/widget/LinearLayout;->measureChild(Landroid/view/View;II)V

    iget-boolean v10, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    if-eqz v10, :cond_5

    if-ge v3, v4, :cond_4

    if-eqz v7, :cond_4

    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewTotalMeasuredWidth(Landroid/view/View;)I

    move-result v9

    goto :goto_4

    :cond_4
    if-eqz v7, :cond_6

    iget v7, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mUnderflowWidth:I

    add-int/2addr v5, v7

    move v7, v2

    goto :goto_5

    :cond_5
    invoke-static {v9}, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->getViewTotalMeasuredWidth(Landroid/view/View;)I

    move-result v9

    :goto_4
    add-int/2addr v5, v9

    :cond_6
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    const/high16 v1, 0x40000000    # 2.0f

    if-ne v0, v1, :cond_9

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    if-nez v0, :cond_8

    if-le v5, p1, :cond_8

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    :cond_8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    goto :goto_7

    :cond_9
    const/high16 v1, -0x80000000

    if-ne v0, v1, :cond_a

    if-le v5, p1, :cond_a

    iput-boolean v8, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mNeedsUnderflow:Z

    goto :goto_6

    :cond_a
    move p1, v5

    :goto_6
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    :goto_7
    return-void
.end method

.method public onViewAdded(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewAdded(Landroid/view/View;)V

    new-instance p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer$StatusIconState;->justAdded:Z

    sget v0, Lcom/android/systemui/R$id;->status_bar_view_state_tag:I

    invoke-virtual {p1, v0, p0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public onViewRemoved(Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onViewRemoved(Landroid/view/View;)V

    sget p0, Lcom/android/systemui/R$id;->status_bar_view_state_tag:I

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public setOpTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mOpTag:Ljava/lang/String;

    return-void
.end method

.method public setShouldRestrictIcons(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/StatusIconContainer;->mShouldRestrictIcons:Z

    return-void
.end method
