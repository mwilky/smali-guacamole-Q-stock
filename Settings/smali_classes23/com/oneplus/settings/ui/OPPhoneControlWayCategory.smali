.class public Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;
.super Landroidx/preference/Preference;
.source "OPPhoneControlWayCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;
    }
.end annotation


# static fields
.field private static final BACK_ANIM_INDEX:I = 0x0

.field private static final HOME_ANIM_INDEX:I = 0x1

.field private static final KEY_OP_NAVIGATION_BAR_TYPE:Ljava/lang/String; = "op_navigation_bar_type"

.field private static final LAND_BACK_ANIM_INDEX:I = 0x4

.field private static final PREVIOUS_APP_ANIM_INDEX:I = 0x3

.field private static final RECENT_ANIM_INDEX:I = 0x2

.field private static final TYPE_ALWAYS_SHOW_NAVIGATION_BAR:I = 0x1

.field private static final TYPE_GESTURE_NAVIGATION_BAR:I = 0x2

.field private static final TYPE_GESTURE_NAVIGATION_BAR_DEPRECATED:I = 0x3

.field private static final TYPE_GESTURE_NAVIGATION_HIDE_BAR:I = 0x4


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private mAlwaysShowNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field private mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field private mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

.field private mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mCurrIndex:I

.field private mCurrentDrawable:Landroid/graphics/drawable/Drawable;

.field private mHasInited:Z

.field private mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field private mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

.field private mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

.field private mInstrucitonsTextView:Landroid/widget/TextView;

.field private mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field private mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

.field private mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

.field private mLayoutResId:I

.field private mNormalDrawable:Landroid/graphics/drawable/Drawable;

.field private mPage0:Landroid/widget/ImageView;

.field private mPage1:Landroid/widget/ImageView;

.field private mPage2:Landroid/widget/ImageView;

.field private mPage3:Landroid/widget/ImageView;

.field private mPage4:Landroid/widget/ImageView;

.field private mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

.field private mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field private mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

.field private mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

.field private mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field private mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

.field private mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

.field private mTempType:I

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;

.field private mViewPagerContainer:Landroid/view/View;

.field private final mViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewsDeprecated:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mViewsNobar:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mTempType:I

    const v1, 0x7f0d01e1

    iput v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLayoutResId:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViews:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsNobar:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsDeprecated:Ljava/util/ArrayList;

    iput v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrIndex:I

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mTempType:I

    const v1, 0x7f0d01e1

    iput v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLayoutResId:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViews:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsNobar:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsDeprecated:Ljava/util/ArrayList;

    iput v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrIndex:I

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mTempType:I

    const v1, 0x7f0d01e1

    iput v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLayoutResId:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViews:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsNobar:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsDeprecated:Ljava/util/ArrayList;

    iput v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrIndex:I

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsDeprecated:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsNobar:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$1002(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViews:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPage0:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPage1:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPage2:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPage3:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPage4:Landroid/widget/ImageView;

    return-object v0
.end method

.method private initViewPage()V
    .locals 52

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-le v1, v2, :cond_0

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsNobar:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsDeprecated:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v2, :cond_0

    return-void

    :cond_0
    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsNobar:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsDeprecated:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d01c4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x7f0a029d

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v7, 0x7f120d5e

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    const v8, 0x7f0a029c

    invoke-virtual {v4, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const v10, 0x7f120d5c

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v11

    const v12, 0x7f120d8e

    if-eqz v11, :cond_1

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(I)V

    :cond_1
    const v11, 0x7f0a029b

    invoke-virtual {v4, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v13, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v13, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v13}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v13

    if-eqz v13, :cond_2

    iget-object v13, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v14, "op_back_gesture_dark_anim_o2.json"

    invoke-virtual {v13, v14}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v13, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v14, "op_back_gesture_dark_anim.json"

    invoke-virtual {v13, v14}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v13

    if-eqz v13, :cond_4

    iget-object v13, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v14, "op_back_gesture_light_anim_o2.json"

    invoke-virtual {v13, v14}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget-object v13, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v14, "op_back_gesture_light_anim.json"

    invoke-virtual {v13, v14}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_0
    iget-object v13, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    iget-object v13, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v13}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v13

    invoke-virtual {v13, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    invoke-virtual {v15, v7}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v13, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v8, v16

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(I)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(I)V

    :cond_5
    invoke-virtual {v13, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v10, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v10, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v10}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v10

    if-eqz v10, :cond_6

    iget-object v10, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v12, "op_back_gesture_dark_anim_no_bar_o2.json"

    invoke-virtual {v10, v12}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    iget-object v10, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v12, "op_back_gesture_dark_anim_no_bar.json"

    invoke-virtual {v10, v12}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v10

    if-eqz v10, :cond_8

    iget-object v10, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v12, "op_back_gesture_light_anim_no_bar_o2.json"

    invoke-virtual {v10, v12}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    iget-object v10, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v12, "op_back_gesture_light_anim_no_bar.json"

    invoke-virtual {v10, v12}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_1
    iget-object v10, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v10, v14}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    iget-object v10, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v10}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(I)V

    const v7, 0x7f0a029c

    invoke-virtual {v10, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v16

    move-object/from16 v7, v16

    check-cast v7, Landroid/widget/TextView;

    const v5, 0x7f120d5d

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {v10, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v5}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v11, "op_back_gesture_dark_anim_deprecated.json"

    invoke-virtual {v5, v11}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v11, "op_back_gesture_light_anim_deprecated.json"

    invoke-virtual {v5, v11}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_2
    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v5, v14}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    iget-object v5, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v5}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    const v11, 0x7f0a029d

    invoke-virtual {v5, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v11, v19

    check-cast v11, Landroid/widget/TextView;

    const v2, 0x7f120d68

    invoke-virtual {v11, v2}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f0a029c

    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v21

    move-object/from16 v2, v21

    check-cast v2, Landroid/widget/TextView;

    const v3, 0x7f120d66

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f0a029b

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v22

    move-object/from16 v3, v22

    check-cast v3, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_a

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v14, "op_home_gesture_dark_anim.json"

    invoke-virtual {v3, v14}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_3

    :cond_a
    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v14, "op_home_gesture_light_anim.json"

    invoke-virtual {v3, v14}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_3
    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v14, 0x1

    invoke-virtual {v3, v14}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    move-object/from16 v23, v2

    const v3, 0x7f0d01c4

    const/4 v14, 0x0

    invoke-virtual {v1, v3, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    const v3, 0x7f0a029d

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    move-object v3, v14

    check-cast v3, Landroid/widget/TextView;

    const v14, 0x7f120d68

    invoke-virtual {v3, v14}, Landroid/widget/TextView;->setText(I)V

    const v14, 0x7f0a029c

    invoke-virtual {v2, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v24

    move-object/from16 v14, v24

    check-cast v14, Landroid/widget/TextView;

    move-object/from16 v24, v3

    const v3, 0x7f120d66

    invoke-virtual {v14, v3}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f0a029b

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v25

    move-object/from16 v3, v25

    check-cast v3, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_b

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v25, v6

    const-string v6, "op_home_gesture_dark_anim_no_bar.json"

    invoke-virtual {v3, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    move-object/from16 v25, v6

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v6, "op_home_gesture_light_anim_no_bar.json"

    invoke-virtual {v3, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_4
    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    move-object/from16 v26, v7

    const v3, 0x7f0d01c4

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v3, 0x7f0a029d

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Landroid/widget/TextView;

    const v6, 0x7f120d68

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    const v6, 0x7f0a029c

    invoke-virtual {v7, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    move-object/from16 v6, v20

    check-cast v6, Landroid/widget/TextView;

    move-object/from16 v20, v3

    const v3, 0x7f120d67

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f0a029b

    invoke-virtual {v7, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v27

    move-object/from16 v3, v27

    check-cast v3, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_c

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v27, v6

    const-string v6, "op_home_gesture_dark_anim_deprecated.json"

    invoke-virtual {v3, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_5

    :cond_c
    move-object/from16 v27, v6

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v6, "op_home_gesture_light_anim_deprecated.json"

    invoke-virtual {v3, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_5
    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    move-object/from16 v28, v8

    const v3, 0x7f0d01c4

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v8

    const v3, 0x7f0a029d

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Landroid/widget/TextView;

    const v6, 0x7f120d75

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    const v6, 0x7f0a029c

    invoke-virtual {v8, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v30

    move-object/from16 v6, v30

    check-cast v6, Landroid/widget/TextView;

    move-object/from16 v30, v3

    const v3, 0x7f120d73

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f0a029b

    invoke-virtual {v8, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v31

    move-object/from16 v3, v31

    check-cast v3, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v31, v6

    const-string v6, "op_recent_gesture_dark_anim.json"

    invoke-virtual {v3, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    move-object/from16 v31, v6

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v6, "op_recent_gesture_light_anim.json"

    invoke-virtual {v3, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_6
    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    move-object/from16 v32, v9

    const v3, 0x7f0d01c4

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v9

    const v3, 0x7f0a029d

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Landroid/widget/TextView;

    const v6, 0x7f120d75

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    const v6, 0x7f0a029c

    invoke-virtual {v9, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v33

    move-object/from16 v6, v33

    check-cast v6, Landroid/widget/TextView;

    move-object/from16 v33, v3

    const v3, 0x7f120d73

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f0a029b

    invoke-virtual {v9, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v34

    move-object/from16 v3, v34

    check-cast v3, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_e

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v34, v6

    const-string v6, "op_recent_gesture_dark_anim_no_bar.json"

    invoke-virtual {v3, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    move-object/from16 v34, v6

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v6, "op_recent_gesture_light_anim_no_bar.json"

    invoke-virtual {v3, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_7
    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    move-object/from16 v35, v11

    const v3, 0x7f0d01c4

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    const v3, 0x7f0a029d

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Landroid/widget/TextView;

    const v6, 0x7f120d75

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    const v6, 0x7f0a029c

    invoke-virtual {v11, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v29

    move-object/from16 v6, v29

    check-cast v6, Landroid/widget/TextView;

    move-object/from16 v29, v3

    const v3, 0x7f120d74

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f0a029b

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v36

    move-object/from16 v3, v36

    check-cast v3, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_f

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v36, v6

    const-string v6, "op_recent_gesture_dark_anim_deprecated.json"

    invoke-virtual {v3, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_8

    :cond_f
    move-object/from16 v36, v6

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v6, "op_recent_gesture_light_anim_deprecated.json"

    invoke-virtual {v3, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_8
    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    move-object/from16 v37, v12

    const v3, 0x7f0d01c4

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v12

    const v3, 0x7f0a029d

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Landroid/widget/TextView;

    const v6, 0x7f120d70

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    const v6, 0x7f0a029c

    invoke-virtual {v12, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v38

    move-object/from16 v6, v38

    check-cast v6, Landroid/widget/TextView;

    move-object/from16 v38, v3

    const v3, 0x7f120d6e

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f0a029b

    invoke-virtual {v12, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v39

    move-object/from16 v3, v39

    check-cast v3, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_10

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v39, v6

    const-string v6, "op_previous_app_gesture_dark_anim.json"

    invoke-virtual {v3, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_9

    :cond_10
    move-object/from16 v39, v6

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v6, "op_previous_app_gesture_light_anim.json"

    invoke-virtual {v3, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_9
    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    move-object/from16 v40, v14

    const v3, 0x7f0d01c4

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v14

    const v3, 0x7f0a029d

    invoke-virtual {v14, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    move-object v3, v6

    check-cast v3, Landroid/widget/TextView;

    const v6, 0x7f120d72

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(I)V

    const v6, 0x7f0a029c

    invoke-virtual {v14, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v41

    move-object/from16 v6, v41

    check-cast v6, Landroid/widget/TextView;

    move-object/from16 v41, v3

    const v3, 0x7f120d71

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(I)V

    const v3, 0x7f0a029b

    invoke-virtual {v14, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v42

    move-object/from16 v3, v42

    check-cast v3, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_11

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v42, v6

    const-string v6, "op_previous_app_gesture_dark_anim_no_bar.json"

    invoke-virtual {v3, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_a

    :cond_11
    move-object/from16 v42, v6

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v6, "op_previous_app_gesture_light_anim_no_bar.json"

    invoke-virtual {v3, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_a
    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    const v3, 0x7f0d01c4

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v6, 0x7f0a029d

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v19

    move-object/from16 v6, v19

    check-cast v6, Landroid/widget/TextView;

    move-object/from16 v19, v15

    const v15, 0x7f120d72

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setText(I)V

    const v15, 0x7f0a029c

    invoke-virtual {v3, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v43

    move-object/from16 v15, v43

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v43, v6

    const v6, 0x7f120d6f

    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setText(I)V

    const v6, 0x7f0a029b

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v44

    move-object/from16 v6, v44

    check-cast v6, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v6, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v6, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v6}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v6

    if-eqz v6, :cond_12

    iget-object v6, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v44, v15

    const-string v15, "op_previous_app_gesture_dark_anim_deprecated.json"

    invoke-virtual {v6, v15}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_b

    :cond_12
    move-object/from16 v44, v15

    iget-object v6, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v15, "op_previous_app_gesture_light_anim_deprecated.json"

    invoke-virtual {v6, v15}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_b
    iget-object v6, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    iget-object v6, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v6}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    const v6, 0x7f0d01c5

    move-object/from16 v45, v3

    const/4 v15, 0x0

    invoke-virtual {v1, v6, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v15, 0x7f0a029d

    invoke-virtual {v3, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v46

    move-object/from16 v15, v46

    check-cast v15, Landroid/widget/TextView;

    const v6, 0x7f120d6b

    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setText(I)V

    const v6, 0x7f0a029c

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v47

    move-object/from16 v6, v47

    check-cast v6, Landroid/widget/TextView;

    move-object/from16 v47, v15

    const v15, 0x7f120d69

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setText(I)V

    const v15, 0x7f0a029b

    invoke-virtual {v3, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v48

    move-object/from16 v15, v48

    check-cast v15, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v15, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v15, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v15}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v15

    if-eqz v15, :cond_14

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v15

    if-eqz v15, :cond_13

    iget-object v15, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v48, v6

    const-string v6, "op_landscape_dark_anim_o2.json"

    invoke-virtual {v15, v6}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_c

    :cond_13
    move-object/from16 v48, v6

    iget-object v6, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v15, "op_landscape_dark_anim.json"

    invoke-virtual {v6, v15}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_c

    :cond_14
    move-object/from16 v48, v6

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v6

    if-eqz v6, :cond_15

    iget-object v6, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v15, "op_landscape_light_anim_o2.json"

    invoke-virtual {v6, v15}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_c

    :cond_15
    iget-object v6, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v15, "op_landscape_light_anim.json"

    invoke-virtual {v6, v15}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_c
    iget-object v6, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    iget-object v6, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v6}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    move-object/from16 v49, v3

    const v6, 0x7f0d01c5

    const/4 v15, 0x0

    invoke-virtual {v1, v6, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    const v6, 0x7f0a029d

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    move-object v6, v15

    check-cast v6, Landroid/widget/TextView;

    const v15, 0x7f120d6b

    invoke-virtual {v6, v15}, Landroid/widget/TextView;->setText(I)V

    const v15, 0x7f0a029c

    invoke-virtual {v3, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v50

    move-object/from16 v15, v50

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v50, v6

    const v6, 0x7f120d69

    invoke-virtual {v15, v6}, Landroid/widget/TextView;->setText(I)V

    const v6, 0x7f0a029b

    invoke-virtual {v3, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v51

    move-object/from16 v6, v51

    check-cast v6, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v6, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v6, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v6}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v6

    if-eqz v6, :cond_17

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v6

    if-eqz v6, :cond_16

    iget-object v6, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v51, v15

    const-string v15, "op_landscape_dark_anim_no_bar_o2.json"

    invoke-virtual {v6, v15}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_d

    :cond_16
    move-object/from16 v51, v15

    iget-object v6, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v15, "op_landscape_dark_anim_no_bar.json"

    invoke-virtual {v6, v15}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_d

    :cond_17
    move-object/from16 v51, v15

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v6

    if-eqz v6, :cond_18

    iget-object v6, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v15, "op_landscape_light_anim_no_bar_o2.json"

    invoke-virtual {v6, v15}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_d

    :cond_18
    iget-object v6, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v15, "op_landscape_light_anim_no_bar.json"

    invoke-virtual {v6, v15}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_d
    iget-object v6, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    iget-object v6, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v6}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    const v6, 0x7f0d01c5

    const/4 v15, 0x0

    invoke-virtual {v1, v6, v15}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v15, 0x7f0a029d

    invoke-virtual {v6, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Landroid/widget/TextView;

    move-object/from16 v16, v1

    const v1, 0x7f120d6b

    invoke-virtual {v15, v1}, Landroid/widget/TextView;->setText(I)V

    const v1, 0x7f0a029c

    invoke-virtual {v6, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    move-object/from16 v17, v15

    const v15, 0x7f120d69

    invoke-virtual {v1, v15}, Landroid/widget/TextView;->setText(I)V

    const v15, 0x7f0a029b

    invoke-virtual {v6, v15}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    check-cast v15, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v15, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v15, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v15}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v15

    if-eqz v15, :cond_19

    iget-object v15, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    move-object/from16 v18, v1

    const-string v1, "op_landscape_dark_anim_deprecated.json"

    invoke-virtual {v15, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_e

    :cond_19
    move-object/from16 v18, v1

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v15, "op_landscape_light_anim_deprecated.json"

    invoke-virtual {v1, v15}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_e
    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    const/4 v15, 0x1

    invoke-virtual {v1, v15}, Lcom/airbnb/lottie/LottieAnimationView;->loop(Z)V

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v1}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsNobar:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsDeprecated:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsNobar:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsDeprecated:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsNobar:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsDeprecated:Ljava/util/ArrayList;

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportNewGesture()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViews:Ljava/util/ArrayList;

    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsNobar:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsDeprecated:Ljava/util/ArrayList;

    move-object/from16 v15, v45

    invoke-virtual {v1, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_f

    :cond_1a
    move-object/from16 v15, v45

    :goto_f
    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViews:Ljava/util/ArrayList;

    move-object/from16 v21, v2

    move-object/from16 v2, v49

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsNobar:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewsDeprecated:Ljava/util/ArrayList;

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08057f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f08057e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    const-string v1, "#FFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    const-string v1, "#4CFFFFFF"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    const-string v1, "#969696"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    const-string v1, "#E6E6E6"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    :goto_0
    iget v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLayoutResId:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->setLayoutResource(I)V

    return-void
.end method

.method static is2ButtonEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static is3ButtonEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isGESTURALEnabled(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0085

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static isHideBarEnabled(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "oneplus_fullscreen_gesture_type"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method

.method static isSideEnabled(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "op_gesture_button_side_enabled"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    return v1
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0088

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "op_fix_navigation_bar_dark_anim.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "op_fix_navigation_bar_light_anim.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_0
    const v0, 0x7f0a032c

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mInstrucitonsTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mInstrucitonsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mInstrucitonsTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mInstrucitonsTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_1
    const v0, 0x7f0a04fc

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPage0:Landroid/widget/ImageView;

    const v0, 0x7f0a04fd

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPage1:Landroid/widget/ImageView;

    const v0, 0x7f0a04fe

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPage2:Landroid/widget/ImageView;

    const v0, 0x7f0a04ff

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPage3:Landroid/widget/ImageView;

    const v0, 0x7f0a0500

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPage4:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPage0:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPage1:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPage2:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPage3:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPage4:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mNormalDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportNewGesture()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPage4:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_2
    const v0, 0x7f0a02a2

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPagerContainer:Landroid/view/View;

    const v0, 0x7f0a02a1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v1, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$MyOnPageChangeListener;-><init>(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)V

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->initViewPage()V

    new-instance v0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;

    invoke-direct {v0, p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory$1;-><init>(Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;)V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrIndex:I

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->startAnim()V

    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    return-void
.end method

.method public playCurrentPageAnim(I)V
    .locals 1

    if-eqz p1, :cond_c

    const/4 v0, 0x1

    if-eq p1, v0, :cond_9

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    const/4 v0, 0x3

    if-eq p1, v0, :cond_3

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto/16 :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isSideEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isHideBarEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isSideEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isHideBarEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isSideEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isHideBarEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    :cond_8
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    :cond_9
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isSideEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_a

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    :cond_a
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isHideBarEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    :cond_c
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isSideEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto/16 :goto_0

    :cond_d
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isHideBarEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    goto :goto_0

    :cond_e
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    nop

    :goto_0
    return-void
.end method

.method public releaseAnim()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mTempType:I

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    return-void
.end method

.method public setViewType(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mTempType:I

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->stopAnim()V

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPagerContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    iget v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrIndex:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->playCurrentPageAnim(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPagerContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    nop

    :goto_0
    return-void
.end method

.method public setViewType(II)V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mTempType:I

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->stopAnim()V

    const/4 v0, 0x1

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eq p1, v0, :cond_3

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_2

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPagerContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    iget v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mCurrIndex:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->playCurrentPageAnim(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPagerContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPagerAdapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v0}, Landroidx/viewpager/widget/PagerAdapter;->notifyDataSetChanged()V

    invoke-virtual {p0, p2}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->playCurrentPageAnim(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v0, p2, v2}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(IZ)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0, v2}, Lcom/airbnb/lottie/LottieAnimationView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mViewPagerContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    nop

    :goto_0
    return-void
.end method

.method public startAnim()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mTempType:I

    if-nez v0, :cond_4

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isGESTURALEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->is2ButtonEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isGESTURALEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isSideEnabled(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isSideEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isHideBarEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v0, 0x4

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->isSideEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x2

    :cond_3
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->setViewType(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->setViewType(I)V

    :cond_5
    :goto_1
    return-void
.end method

.method public stopAnim()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHasInited:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mAlwaysShowNavigationBarAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimNoBar:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mHomeAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mRecentAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mPreviousAppAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPPhoneControlWayCategory;->mLandBackAnimDeprecated:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_0
    return-void
.end method
