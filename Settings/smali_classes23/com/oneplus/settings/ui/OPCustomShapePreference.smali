.class public Lcom/oneplus/settings/ui/OPCustomShapePreference;
.super Landroidx/preference/Preference;
.source "OPCustomShapePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;,
        Lcom/oneplus/settings/ui/OPCustomShapePreference$SpaceItemDecoration;,
        Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;,
        Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;
    }
.end annotation


# instance fields
.field private mAdaptiveAirplane:Landroid/view/View;

.field private mAdaptiveFlashlight:Landroid/view/View;

.field private mAdaptiveNfc:Landroid/view/View;

.field private mAdaptiveWifi:Landroid/view/View;

.field private mAm:Landroid/app/ActivityManager;

.field private mChooseStyleAdapter:Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;

.field private mCurrentVH:Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;

.field private mIndicator1:Landroid/view/View;

.field private mIndicator2:Landroid/view/View;

.field private final mItemEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field protected mLastIndex:I

.field private mNotificationGroup:Landroid/view/ViewGroup;

.field private mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

.field private mPowerPanelGroup:Landroid/view/ViewGroup;

.field private final mPreviewList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mPreviewViewPager:Lcom/android/internal/widget/ViewPager;

.field private mQuicklySettingsGroup:Landroid/view/ViewGroup;

.field protected mSelectedIndex:I

.field private mSoundPanelGroup:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/ui/OPCustomShapePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/ui/OPCustomShapePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/ui/OPCustomShapePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mItemEntities:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mPreviewList:Ljava/util/List;

    const v0, 0x7f0d018f

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->setLayoutResource(I)V

    const-string v0, "activity"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mAm:Landroid/app/ActivityManager;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ui/OPCustomShapePreference;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mPreviewList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ui/OPCustomShapePreference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->setIndicator(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ui/OPCustomShapePreference;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mItemEntities:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/ui/OPCustomShapePreference;)Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mCurrentVH:Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;

    return-object v0
.end method

.method static synthetic access$302(Lcom/oneplus/settings/ui/OPCustomShapePreference;Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;)Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mCurrentVH:Lcom/oneplus/settings/ui/OPCustomShapePreference$ShapeViewHolder;

    return-object p1
.end method

.method static synthetic access$400(Lcom/oneplus/settings/ui/OPCustomShapePreference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->changeAdaptive(I)V

    return-void
.end method

.method private changeAdaptive(I)V
    .locals 3

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mQuicklySettingsGroup:Landroid/view/ViewGroup;

    const v1, 0x7f08064a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mNotificationGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mSoundPanelGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mPowerPanelGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mAdaptiveWifi:Landroid/view/View;

    const v1, 0x7f080329

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mAdaptiveFlashlight:Landroid/view/View;

    const v2, 0x7f080328

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mAdaptiveNfc:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mAdaptiveAirplane:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x2

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mQuicklySettingsGroup:Landroid/view/ViewGroup;

    const v1, 0x7f08064b

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mNotificationGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mSoundPanelGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mPowerPanelGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mAdaptiveWifi:Landroid/view/View;

    const v1, 0x7f08032d

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mAdaptiveFlashlight:Landroid/view/View;

    const v2, 0x7f08032c

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mAdaptiveNfc:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mAdaptiveAirplane:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mQuicklySettingsGroup:Landroid/view/ViewGroup;

    const v1, 0x7f08064c

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mNotificationGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mSoundPanelGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mPowerPanelGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mAdaptiveWifi:Landroid/view/View;

    const v1, 0x7f080336

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mAdaptiveFlashlight:Landroid/view/View;

    const v2, 0x7f080335

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mAdaptiveNfc:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mAdaptiveAirplane:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mQuicklySettingsGroup:Landroid/view/ViewGroup;

    const v1, 0x7f080649

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mNotificationGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mSoundPanelGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mPowerPanelGroup:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mAdaptiveWifi:Landroid/view/View;

    const v1, 0x7f080330

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mAdaptiveFlashlight:Landroid/view/View;

    const v2, 0x7f08032f

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mAdaptiveNfc:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mAdaptiveAirplane:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setBackgroundResource(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private setIndicator(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0806ba

    const v1, 0x7f0806b8

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mIndicator1:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mIndicator2:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mIndicator2:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mIndicator1:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f0806bb

    const v1, 0x7f0806b9

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mIndicator1:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mIndicator2:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mIndicator2:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mIndicator1:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public needShowWarningDialog()Z
    .locals 2

    iget v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mLastIndex:I

    iget v1, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mSelectedIndex:I

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAttached()V
    .locals 0

    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v2, 0x7f0a01b4

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    iput-object v2, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    new-instance v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setOrientation(I)V

    iget-object v4, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;->setLayoutManager(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)V

    iget-object v4, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    new-instance v5, Lcom/oneplus/settings/ui/OPCustomShapePreference$SpaceItemDecoration;

    invoke-direct {v5, v0, v3}, Lcom/oneplus/settings/ui/OPCustomShapePreference$SpaceItemDecoration;-><init>(Lcom/oneplus/settings/ui/OPCustomShapePreference;I)V

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;->addOPItemDecoration(Lcom/oneplus/lib/widget/recyclerview/OPItemDecoration;)V

    const v4, 0x7f0a0509

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mIndicator1:Landroid/view/View;

    const v4, 0x7f0a050a

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    iput-object v4, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mIndicator2:Landroid/view/View;

    invoke-direct {v0, v3}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->setIndicator(I)V

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x7f0d0191

    invoke-virtual {v4, v6, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    const v7, 0x7f0d0190

    invoke-virtual {v4, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    iget-object v7, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mPreviewList:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v7, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mPreviewList:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const v7, 0x7f0a0566

    invoke-virtual {v1, v7}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/internal/widget/ViewPager;

    iput-object v7, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mPreviewViewPager:Lcom/android/internal/widget/ViewPager;

    new-instance v7, Lcom/oneplus/settings/ui/OPCustomShapePreference$1;

    invoke-direct {v7, v0}, Lcom/oneplus/settings/ui/OPCustomShapePreference$1;-><init>(Lcom/oneplus/settings/ui/OPCustomShapePreference;)V

    iget-object v8, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mPreviewViewPager:Lcom/android/internal/widget/ViewPager;

    invoke-virtual {v8, v7}, Lcom/android/internal/widget/ViewPager;->setAdapter(Lcom/android/internal/widget/PagerAdapter;)V

    iget-object v8, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mPreviewViewPager:Lcom/android/internal/widget/ViewPager;

    new-instance v9, Lcom/oneplus/settings/ui/OPCustomShapePreference$2;

    invoke-direct {v9, v0}, Lcom/oneplus/settings/ui/OPCustomShapePreference$2;-><init>(Lcom/oneplus/settings/ui/OPCustomShapePreference;)V

    invoke-virtual {v8, v9}, Lcom/android/internal/widget/ViewPager;->setOnPageChangeListener(Lcom/android/internal/widget/ViewPager$OnPageChangeListener;)V

    const v8, 0x7f0a005f

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mAdaptiveWifi:Landroid/view/View;

    const v8, 0x7f0a005d

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mAdaptiveFlashlight:Landroid/view/View;

    const v8, 0x7f0a005e

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mAdaptiveNfc:Landroid/view/View;

    const v8, 0x7f0a005c

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    iput-object v8, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mAdaptiveAirplane:Landroid/view/View;

    const v8, 0x7f0a0593

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mQuicklySettingsGroup:Landroid/view/ViewGroup;

    const v8, 0x7f0a044c

    invoke-virtual {v6, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mNotificationGroup:Landroid/view/ViewGroup;

    const v8, 0x7f0a0657

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mSoundPanelGroup:Landroid/view/ViewGroup;

    const v8, 0x7f0a0552

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/view/ViewGroup;

    iput-object v8, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mPowerPanelGroup:Landroid/view/ViewGroup;

    new-instance v8, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->getContext()Landroid/content/Context;

    move-result-object v9

    const v10, 0x7f121017

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    const v11, 0x7f08032a

    invoke-direct {v8, v0, v9, v11, v10}, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomShapePreference;Ljava/lang/String;II)V

    new-instance v9, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->getContext()Landroid/content/Context;

    move-result-object v11

    const v12, 0x7f121019

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    const v13, 0x7f08032e

    invoke-direct {v9, v0, v11, v13, v12}, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomShapePreference;Ljava/lang/String;II)V

    new-instance v11, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->getContext()Landroid/content/Context;

    move-result-object v13

    const v14, 0x7f12101a

    invoke-virtual {v13, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x3

    const v15, 0x7f080337

    invoke-direct {v11, v0, v13, v15, v14}, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomShapePreference;Ljava/lang/String;II)V

    new-instance v13, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->getContext()Landroid/content/Context;

    move-result-object v15

    const v14, 0x7f121018

    invoke-virtual {v15, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x4

    const v12, 0x7f080331

    invoke-direct {v13, v0, v14, v12, v15}, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomShapePreference;Ljava/lang/String;II)V

    move-object v12, v13

    iget-object v13, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v13, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v13, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v13, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v13, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v13, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v13, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13}, Lcom/oneplus/settings/utils/OPThemeUtils;->getCurrentShape(Landroid/content/Context;)I

    move-result v13

    if-ne v13, v10, :cond_0

    iput-boolean v10, v8, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->selected:Z

    iput v3, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mLastIndex:I

    iput v3, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mSelectedIndex:I

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    if-ne v13, v3, :cond_1

    iput-boolean v10, v9, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->selected:Z

    iput v10, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mLastIndex:I

    iput v10, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mSelectedIndex:I

    goto :goto_0

    :cond_1
    const/4 v3, 0x3

    if-ne v13, v3, :cond_2

    iput-boolean v10, v11, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->selected:Z

    const/4 v3, 0x2

    iput v3, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mLastIndex:I

    iput v3, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mSelectedIndex:I

    goto :goto_0

    :cond_2
    if-ne v13, v15, :cond_3

    iput-boolean v10, v12, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->selected:Z

    const/4 v3, 0x3

    iput v3, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mLastIndex:I

    iput v3, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mSelectedIndex:I

    :cond_3
    :goto_0
    invoke-direct {v0, v13}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->changeAdaptive(I)V

    new-instance v3, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;

    invoke-direct {v3, v0}, Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;-><init>(Lcom/oneplus/settings/ui/OPCustomShapePreference;)V

    iput-object v3, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mChooseStyleAdapter:Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;

    iget-object v3, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    iget-object v10, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mChooseStyleAdapter:Lcom/oneplus/settings/ui/OPCustomShapePreference$ChooseStyleAdapter;

    invoke-virtual {v3, v10}, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;->setAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V

    iget v3, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mSelectedIndex:I

    if-ltz v3, :cond_4

    iget-object v10, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v3, v10, :cond_4

    iget v3, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mSelectedIndex:I

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollToPosition(I)V

    :cond_4
    return-void
.end method

.method public saveSelectedShape()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mAm:Landroid/app/ActivityManager;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPApplicationUtils;->killProcess(Landroid/app/ActivityManager;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mItemEntities:Ljava/util/List;

    iget v1, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mSelectedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;

    iget v0, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->index:I

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPThemeUtils;->getCurrentShapeByIndex(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "oneplus_shape"

    invoke-static {v2, v0, v1}, Lcom/oneplus/settings/utils/OPThemeUtils;->enableTheme(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPCustomShapePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mItemEntities:Ljava/util/List;

    iget v2, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mSelectedIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;

    iget v1, v1, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->index:I

    invoke-static {v0, v1}, Lcom/oneplus/settings/utils/OPThemeUtils;->setCurrentShape(Landroid/content/Context;I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mItemEntities:Ljava/util/List;

    iget v1, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mSelectedIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;

    iget v0, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->index:I

    const-string v1, "status"

    const-string v2, "shape"

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    const-string v0, "round"

    invoke-static {v2, v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mItemEntities:Ljava/util/List;

    iget v3, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mSelectedIndex:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;

    iget v0, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->index:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    const-string v0, "square"

    invoke-static {v2, v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mItemEntities:Ljava/util/List;

    iget v3, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mSelectedIndex:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;

    iget v0, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->index:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    const-string v0, "teardrop"

    invoke-static {v2, v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mItemEntities:Ljava/util/List;

    iget v3, p0, Lcom/oneplus/settings/ui/OPCustomShapePreference;->mSelectedIndex:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;

    iget v0, v0, Lcom/oneplus/settings/ui/OPCustomShapePreference$ItemEntity;->index:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    const-string v0, "rectangle"

    invoke-static {v2, v1, v0}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method
