.class public Lcom/oneplus/settings/ui/OPCustomTonePreference;
.super Landroidx/preference/Preference;
.source "OPCustomTonePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;,
        Lcom/oneplus/settings/ui/OPCustomTonePreference$SpaceItemDecoration;,
        Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;,
        Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;
    }
.end annotation


# static fields
.field public static final KEY_DARK_MODE_ACTION:Ljava/lang/String; = "oem_black_mode"

.field private static final SELECT_COLOFUL:I = 0x0

.field private static final SELECT_DARK:I = 0x2

.field private static final SELECT_LIGTH:I = 0x1


# instance fields
.field private adapter:Landroidx/viewpager/widget/PagerAdapter;

.field private mChooseStyleAdapter:Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;

.field private mContext:Landroid/content/Context;

.field private mCurrentVH:Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;

.field private final mItemEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field protected mLastIndex:I

.field private mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

.field private final mPreviewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field protected mSelectedIndex:I

.field private mViewPager:Landroidx/viewpager/widget/ViewPager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mItemEntities:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mPreviewList:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/settings/R$styleable;->VideoPreference:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const v1, 0x7f0d018f

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->setLayoutResource(I)V

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mPreviewList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mItemEntities:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mCurrentVH:Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oneplus/settings/ui/OPCustomTonePreference;Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;)Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mCurrentVH:Lcom/oneplus/settings/ui/OPCustomTonePreference$ToneViewHolder;

    return-object p1
.end method

.method static synthetic access$300(Lcom/oneplus/settings/ui/OPCustomTonePreference;)Landroidx/viewpager/widget/PagerAdapter;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    return-object v0
.end method

.method private enableDarkTheme(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/UiModeManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    if-eqz p1, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/app/UiModeManager;->setNightMode(I)V

    return-void
.end method


# virtual methods
.method public needShowWarningDialog()Z
    .locals 2

    iget v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mLastIndex:I

    iget v1, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mSelectedIndex:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 13

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0705

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setOffscreenPageLimit(I)V

    const/4 v0, 0x0

    new-instance v2, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f120f91

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    const v5, 0x7f080539

    invoke-direct {v2, p0, v3, v5, v4}, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomTonePreference;Ljava/lang/String;II)V

    new-instance v3, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->getContext()Landroid/content/Context;

    move-result-object v5

    const v6, 0x7f120f93

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    const v7, 0x7f08053f

    invoke-direct {v3, p0, v5, v7, v6}, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomTonePreference;Ljava/lang/String;II)V

    new-instance v5, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f120f92

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f08053c

    invoke-direct {v5, p0, v7, v8, v1}, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomTonePreference;Ljava/lang/String;II)V

    move-object v0, v5

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "oem_black_mode"

    invoke-static {v1, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v5, 0x0

    if-ne v1, v6, :cond_0

    iget-object v6, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mPreviewList:Ljava/util/List;

    const v7, 0x7f08053a

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mPreviewList:Ljava/util/List;

    const v7, 0x7f08053b

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v5, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mLastIndex:I

    iput v5, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mSelectedIndex:I

    iput-boolean v4, v2, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;->selected:Z

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    iget-object v6, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mPreviewList:Ljava/util/List;

    const v7, 0x7f080540

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mPreviewList:Ljava/util/List;

    const v7, 0x7f080541

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v4, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mLastIndex:I

    iput v4, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mSelectedIndex:I

    iput-boolean v4, v3, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;->selected:Z

    goto :goto_0

    :cond_1
    if-ne v1, v4, :cond_2

    iget-object v7, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mPreviewList:Ljava/util/List;

    const v8, 0x7f08053d

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mPreviewList:Ljava/util/List;

    const v8, 0x7f08053e

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iput v6, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mLastIndex:I

    iput v6, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mSelectedIndex:I

    iput-boolean v4, v0, Lcom/oneplus/settings/ui/OPCustomTonePreference$ItemEntity;->selected:Z

    :cond_2
    :goto_0
    iget-object v4, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v4, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v8, v6, Landroid/content/res/Configuration;->screenWidthDp:I

    int-to-float v8, v8

    invoke-static {v7, v8}, Lcom/oneplus/settings/utils/OPUtils;->dp2Px(Landroid/util/DisplayMetrics;F)I

    move-result v8

    const/high16 v9, 0x43480000    # 200.0f

    invoke-static {v7, v9}, Lcom/oneplus/settings/utils/OPUtils;->dp2Px(Landroid/util/DisplayMetrics;F)I

    move-result v9

    sub-int v9, v8, v9

    neg-int v9, v9

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f070392

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-static {v7, v10}, Lcom/oneplus/settings/utils/OPUtils;->dp2Px(Landroid/util/DisplayMetrics;F)I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v10, v9}, Landroidx/viewpager/widget/ViewPager;->setPageMargin(I)V

    new-instance v10, Lcom/oneplus/settings/ui/OPCustomTonePreference$1;

    invoke-direct {v10, p0}, Lcom/oneplus/settings/ui/OPCustomTonePreference$1;-><init>(Lcom/oneplus/settings/ui/OPCustomTonePreference;)V

    iput-object v10, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    iget-object v10, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mViewPager:Landroidx/viewpager/widget/ViewPager;

    iget-object v11, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->adapter:Landroidx/viewpager/widget/PagerAdapter;

    invoke-virtual {v10, v11}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    const v10, 0x7f0a01b4

    invoke-virtual {p1, v10}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    iput-object v10, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    new-instance v10, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->getContext()Landroid/content/Context;

    move-result-object v11

    invoke-direct {v10, v11}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v10, v5}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setOrientation(I)V

    iget-object v11, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    invoke-virtual {v11, v10}, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;->setLayoutManager(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)V

    iget-object v11, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    new-instance v12, Lcom/oneplus/settings/ui/OPCustomTonePreference$SpaceItemDecoration;

    invoke-direct {v12, p0, v5}, Lcom/oneplus/settings/ui/OPCustomTonePreference$SpaceItemDecoration;-><init>(Lcom/oneplus/settings/ui/OPCustomTonePreference;I)V

    invoke-virtual {v11, v12}, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;->addOPItemDecoration(Lcom/oneplus/lib/widget/recyclerview/OPItemDecoration;)V

    new-instance v5, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;

    invoke-direct {v5, p0}, Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;-><init>(Lcom/oneplus/settings/ui/OPCustomTonePreference;)V

    iput-object v5, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mChooseStyleAdapter:Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;

    iget-object v5, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    iget-object v11, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mChooseStyleAdapter:Lcom/oneplus/settings/ui/OPCustomTonePreference$ChooseStyleAdapter;

    invoke-virtual {v5, v11}, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;->setAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V

    return-void
.end method

.method public saveSelectedTone()V
    .locals 11

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    new-instance v1, Lcom/oneplus/sdk/utils/OpTheme;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/oneplus/sdk/utils/OpTheme;-><init>(Landroid/content/Context;)V

    iget v2, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mSelectedIndex:I

    const/4 v3, 0x2

    const-string v4, "#"

    const-string v5, "persist.sys.theme.accentcolor"

    const-string v6, "oneplus_accent_color"

    const/4 v7, 0x1

    const-string v8, ""

    const-string v9, "theme_theme"

    if-ne v2, v3, :cond_1

    const-string v2, "3"

    invoke-static {v9, v9, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    invoke-static {v2, v7}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentBasicColorMode(Landroid/content/Context;I)V

    invoke-direct {p0, v7}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->enableDarkTheme(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_black_mode_accent_color"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-static {v3, v6, v2, v7}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_0
    invoke-static {v5, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v10, 0x0

    if-ne v2, v7, :cond_3

    const-string v2, "2"

    invoke-static {v9, v9, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    invoke-static {v2, v10}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentBasicColorMode(Landroid/content/Context;I)V

    invoke-direct {p0, v10}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->enableDarkTheme(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "oem_white_mode_accent_color"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-static {v3, v6, v2, v7}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    invoke-static {v5, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v2, "1"

    invoke-static {v9, v9, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentBasicColorMode(Landroid/content/Context;I)V

    invoke-direct {p0, v10}, Lcom/oneplus/settings/ui/OPCustomTonePreference;->enableDarkTheme(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    const v3, 0x7f0603d2

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/ui/OPCustomTonePreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    invoke-static {v3, v6, v2, v7}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-virtual {v2, v4, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :cond_4
    invoke-static {v5, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const-string v2, "oneplus_accentcolor"

    invoke-virtual {v0, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1, v0}, Lcom/oneplus/sdk/utils/OpTheme;->enableTheme(Ljava/util/HashMap;)I

    return-void
.end method
