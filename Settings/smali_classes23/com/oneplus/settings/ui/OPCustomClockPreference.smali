.class public Lcom/oneplus/settings/ui/OPCustomClockPreference;
.super Landroidx/preference/Preference;
.source "OPCustomClockPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;,
        Lcom/oneplus/settings/ui/OPCustomClockPreference$SpaceItemDecoration;,
        Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;,
        Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;
    }
.end annotation


# static fields
.field public static final CLOCK_TYPE_ANALOG:I = 0x6

.field public static final CLOCK_TYPE_ANALOG_1:I = 0x7

.field public static final CLOCK_TYPE_ANALOG_2:I = 0x8

.field public static final CLOCK_TYPE_BOLD:I = 0x5

.field public static final CLOCK_TYPE_DEFAULT:I = 0x0

.field public static final CLOCK_TYPE_DIGITAL:I = 0x2

.field public static final CLOCK_TYPE_DIGITAL_1:I = 0x3

.field public static final CLOCK_TYPE_MCL:I = 0x28

.field public static final CLOCK_TYPE_MINIMALISM:I = 0x9

.field public static final CLOCK_TYPE_MINIMALISM_1:I = 0xa

.field public static final CLOCK_TYPE_NONE:I = 0x1

.field public static final CLOCK_TYPE_TEXT_CLOCK:I = 0x4

.field public static final KEY_AOD_CLOCK_STYLE:Ljava/lang/String; = "aod_clock_style"

.field private static final KEY_AOD_ENABLED:Ljava/lang/String; = "prox_wake_enabled"

.field public static final KEY_SMART_DISPLAY_ENABLED:Ljava/lang/String; = "aod_smart_display_enabled"

.field private static final SUPPORT_FOD:Z


# instance fields
.field private mChooseStyleAdapter:Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;

.field private mCurrentVH:Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;

.field mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private final mItemEntities:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field protected mLastIndex:I

.field private mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

.field private mPreView:Landroid/widget/ImageView;

.field protected mSelectedIndex:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->SUPPORT_FOD:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 5

    invoke-direct {p0, p1, p2, p3, p4}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/settings/R$styleable;->VideoPreference:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    const-string v4, "aod_clock_style"

    invoke-static {v1, v4, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mLastIndex:I

    const v1, 0x7f0d0186

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->setLayoutResource(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mCurrentVH:Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oneplus/settings/ui/OPCustomClockPreference;Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;)Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mCurrentVH:Lcom/oneplus/settings/ui/OPCustomClockPreference$ClockViewHolder;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oneplus/settings/ui/OPCustomClockPreference;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    return-object v0
.end method


# virtual methods
.method public needShowNoneClockStyle()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public needShowWarningDialog()Z
    .locals 4

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iget-boolean v1, v1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mLastIndex:I

    iget-object v3, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iget v3, v3, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->type:I

    if-eq v1, v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method public onAttached()V
    .locals 0

    invoke-super {p0}, Landroidx/preference/Preference;->onAttached()V

    return-void
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-super/range {p0 .. p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v2, v1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const v2, 0x7f0a01b4

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    iput-object v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    const v2, 0x7f0a055c

    invoke-virtual {v1, v2}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    new-instance v2, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setOrientation(I)V

    iget-object v4, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;->setLayoutManager(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)V

    iget-object v4, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    new-instance v5, Lcom/oneplus/settings/ui/OPCustomClockPreference$SpaceItemDecoration;

    invoke-direct {v5, v0, v3}, Lcom/oneplus/settings/ui/OPCustomClockPreference$SpaceItemDecoration;-><init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;I)V

    invoke-virtual {v4, v5}, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;->addOPItemDecoration(Lcom/oneplus/lib/widget/recyclerview/OPItemDecoration;)V

    const v4, 0x7f0a055d

    invoke-virtual {v1, v4}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "#282828"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_0
    const-string v5, "#f5f5f5"

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    new-instance v5, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f12013e

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v7, 0x7f08009d

    invoke-direct {v5, v0, v6, v7, v3}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;Ljava/lang/String;II)V

    new-instance v6, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f120144

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    const v8, 0x7f0800a4

    const/4 v9, 0x1

    invoke-direct {v6, v0, v7, v8, v9}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;Ljava/lang/String;II)V

    new-instance v7, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    const v10, 0x7f12013f

    invoke-virtual {v8, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    const v10, 0x7f08009e

    const/4 v11, 0x2

    invoke-direct {v7, v0, v8, v10, v11}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;Ljava/lang/String;II)V

    new-instance v8, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->getContext()Landroid/content/Context;

    move-result-object v10

    const v12, 0x7f120140

    invoke-virtual {v10, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    const v12, 0x7f08009f

    const/4 v13, 0x3

    invoke-direct {v8, v0, v10, v12, v13}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;Ljava/lang/String;II)V

    new-instance v10, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->getContext()Landroid/content/Context;

    move-result-object v12

    const v14, 0x7f120146

    invoke-virtual {v12, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    const v14, 0x7f0800a9

    const/4 v15, 0x4

    invoke-direct {v10, v0, v12, v14, v15}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;Ljava/lang/String;II)V

    new-instance v12, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->getContext()Landroid/content/Context;

    move-result-object v14

    const v15, 0x7f12013d

    invoke-virtual {v14, v15}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v14

    const v15, 0x7f08009c

    const/4 v13, 0x5

    invoke-direct {v12, v0, v14, v15, v13}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;Ljava/lang/String;II)V

    new-instance v14, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->getContext()Landroid/content/Context;

    move-result-object v15

    const v13, 0x7f12013a

    invoke-virtual {v15, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v13

    const v15, 0x7f080099

    const/4 v11, 0x6

    invoke-direct {v14, v0, v13, v15, v11}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;Ljava/lang/String;II)V

    move-object v13, v14

    new-instance v14, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->getContext()Landroid/content/Context;

    move-result-object v15

    const v11, 0x7f12013b

    invoke-virtual {v15, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const v15, 0x7f08009a

    const/4 v9, 0x7

    invoke-direct {v14, v0, v11, v15, v9}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;Ljava/lang/String;II)V

    move-object v11, v14

    new-instance v14, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->getContext()Landroid/content/Context;

    move-result-object v15

    const v9, 0x7f12013c

    invoke-virtual {v15, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    const v15, 0x7f08009b

    const/16 v3, 0x8

    invoke-direct {v14, v0, v9, v15, v3}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;Ljava/lang/String;II)V

    move-object v9, v14

    new-instance v14, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->getContext()Landroid/content/Context;

    move-result-object v15

    const v3, 0x7f120142

    invoke-virtual {v15, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v15, 0x7f0800a2

    const/16 v1, 0x9

    invoke-direct {v14, v0, v3, v15, v1}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;Ljava/lang/String;II)V

    move-object v3, v14

    new-instance v14, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->getContext()Landroid/content/Context;

    move-result-object v15

    const v1, 0x7f120143

    invoke-virtual {v15, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const v15, 0x7f0800a3

    move-object/from16 v17, v4

    const/16 v4, 0xa

    invoke-direct {v14, v0, v1, v15, v4}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;Ljava/lang/String;II)V

    move-object v1, v14

    new-instance v14, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->getContext()Landroid/content/Context;

    move-result-object v15

    const v4, 0x7f120141

    invoke-virtual {v15, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v15, 0x7f0800a0

    move-object/from16 v18, v2

    const/16 v2, 0x28

    invoke-direct {v14, v0, v4, v15, v2}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;-><init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;Ljava/lang/String;II)V

    move-object v4, v14

    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportMclTheme()Z

    move-result v14

    const-string v15, "ro.boot.project_name"

    const-string v2, "18801"

    if-eqz v14, :cond_1

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v2, v14}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v14

    if-nez v14, :cond_1

    iget-object v14, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v14, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    iget-object v14, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v14, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v14, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v14, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v14, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v14, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v14, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v14, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v14, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v14, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v14, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v14, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v14, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v14, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v14, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v14, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v14, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v14, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->needShowNoneClockStyle()Z

    move-result v14

    if-eqz v14, :cond_2

    iget-object v14, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v14, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->getContext()Landroid/content/Context;

    move-result-object v14

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    move-object/from16 v19, v4

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v4

    move-object/from16 v20, v6

    const-string v6, "aod_clock_style"

    move-object/from16 v21, v1

    const/4 v1, 0x0

    invoke-static {v14, v6, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onBindViewHolder  clock curType = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v6, "OPCustomClockPreference"

    invoke-static {v6, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    invoke-static {}, Lcom/oneplus/settings/utils/OPThemeUtils;->isSupportMclTheme()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-static {v15}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    if-nez v4, :cond_4

    const/4 v2, 0x1

    iput-boolean v2, v5, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    add-int/lit8 v2, v1, 0x0

    iput v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    iget-object v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    const v6, 0x7f080631

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    move/from16 v16, v1

    move-object/from16 v6, v19

    move-object/from16 v14, v20

    move-object/from16 v2, v21

    goto/16 :goto_1

    :cond_4
    const/4 v2, 0x2

    if-ne v4, v2, :cond_5

    const/4 v2, 0x1

    iput-boolean v2, v7, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    add-int/lit8 v2, v1, 0x1

    iput v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    iget-object v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    const v6, 0x7f080632

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    move/from16 v16, v1

    move-object/from16 v6, v19

    move-object/from16 v14, v20

    move-object/from16 v2, v21

    goto/16 :goto_1

    :cond_5
    const/4 v2, 0x3

    if-ne v4, v2, :cond_6

    const/4 v2, 0x1

    iput-boolean v2, v8, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    add-int/lit8 v2, v1, 0x2

    iput v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    iget-object v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    const v6, 0x7f080633

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    move/from16 v16, v1

    move-object/from16 v6, v19

    move-object/from16 v14, v20

    move-object/from16 v2, v21

    goto/16 :goto_1

    :cond_6
    const/4 v2, 0x4

    if-ne v4, v2, :cond_7

    const/4 v2, 0x1

    iput-boolean v2, v10, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    add-int/lit8 v2, v1, 0x3

    iput v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    iget-object v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    const v6, 0x7f080639

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    move/from16 v16, v1

    move-object/from16 v6, v19

    move-object/from16 v14, v20

    move-object/from16 v2, v21

    goto/16 :goto_1

    :cond_7
    const/4 v2, 0x5

    if-ne v4, v2, :cond_8

    const/4 v2, 0x1

    iput-boolean v2, v12, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    add-int/lit8 v2, v1, 0x4

    iput v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    iget-object v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    const v6, 0x7f080630

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    move/from16 v16, v1

    move-object/from16 v6, v19

    move-object/from16 v14, v20

    move-object/from16 v2, v21

    goto/16 :goto_1

    :cond_8
    const/4 v2, 0x6

    if-ne v4, v2, :cond_9

    const/4 v2, 0x1

    iput-boolean v2, v13, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    add-int/lit8 v2, v1, 0x5

    iput v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    iget-object v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    const v6, 0x7f08062d

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    move/from16 v16, v1

    move-object/from16 v6, v19

    move-object/from16 v14, v20

    move-object/from16 v2, v21

    goto/16 :goto_1

    :cond_9
    const/4 v2, 0x7

    if-ne v4, v2, :cond_a

    const/4 v2, 0x1

    iput-boolean v2, v11, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    add-int/lit8 v2, v1, 0x6

    iput v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    iget-object v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    const v6, 0x7f08062e

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    move/from16 v16, v1

    move-object/from16 v6, v19

    move-object/from16 v14, v20

    move-object/from16 v2, v21

    goto/16 :goto_1

    :cond_a
    const/16 v2, 0x8

    if-ne v4, v2, :cond_b

    const/4 v2, 0x1

    iput-boolean v2, v9, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    add-int/lit8 v2, v1, 0x7

    iput v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    iget-object v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    const v6, 0x7f08062f

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    move/from16 v16, v1

    move-object/from16 v6, v19

    move-object/from16 v14, v20

    move-object/from16 v2, v21

    goto/16 :goto_1

    :cond_b
    const/16 v2, 0x9

    if-ne v4, v2, :cond_c

    const/4 v2, 0x1

    iput-boolean v2, v3, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    add-int/lit8 v2, v1, 0x8

    iput v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    iget-object v2, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    const v6, 0x7f080636

    invoke-virtual {v2, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    move/from16 v16, v1

    move-object/from16 v6, v19

    move-object/from16 v14, v20

    move-object/from16 v2, v21

    goto :goto_1

    :cond_c
    const/16 v2, 0xa

    if-ne v4, v2, :cond_d

    move-object/from16 v2, v21

    const/4 v6, 0x1

    iput-boolean v6, v2, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    add-int/lit8 v6, v1, 0x9

    iput v6, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    iget-object v6, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    const v14, 0x7f080637

    invoke-virtual {v6, v14}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    move/from16 v16, v1

    move-object/from16 v6, v19

    move-object/from16 v14, v20

    goto :goto_1

    :cond_d
    move-object/from16 v2, v21

    const/4 v6, 0x1

    if-ne v4, v6, :cond_e

    move-object/from16 v14, v20

    iput-boolean v6, v14, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    add-int/lit8 v6, v1, 0xa

    iput v6, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    iget-object v6, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    const v15, 0x7f080638

    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    move/from16 v16, v1

    move-object/from16 v6, v19

    goto :goto_1

    :cond_e
    move-object/from16 v14, v20

    const/16 v6, 0x28

    if-ne v4, v6, :cond_f

    move-object/from16 v6, v19

    const/4 v15, 0x1

    iput-boolean v15, v6, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->selected:Z

    const/4 v15, 0x0

    iput v15, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    iget-object v15, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mPreView:Landroid/widget/ImageView;

    move/from16 v16, v1

    const v1, 0x7f080634

    invoke-virtual {v15, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_1

    :cond_f
    move/from16 v16, v1

    move-object/from16 v6, v19

    :goto_1
    new-instance v1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;

    invoke-direct {v1, v0}, Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;-><init>(Lcom/oneplus/settings/ui/OPCustomClockPreference;)V

    iput-object v1, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mChooseStyleAdapter:Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;

    iget-object v1, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mOPRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    iget-object v15, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mChooseStyleAdapter:Lcom/oneplus/settings/ui/OPCustomClockPreference$ChooseStyleAdapter;

    invoke-virtual {v1, v15}, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;->setAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V

    iget v1, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    if-ltz v1, :cond_10

    iget-object v15, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-ge v1, v15, :cond_10

    iget v1, v0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    move-object/from16 v15, v18

    invoke-virtual {v15, v1}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollToPosition(I)V

    goto :goto_2

    :cond_10
    move-object/from16 v15, v18

    :goto_2
    return-void
.end method

.method public saveSelectedClock()V
    .locals 8

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    iget v3, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iget v2, v2, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->type:I

    const-string v3, "aod_clock_style"

    invoke-static {v1, v3, v2, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mItemEntities:Ljava/util/List;

    iget v2, p0, Lcom/oneplus/settings/ui/OPCustomClockPreference;->mSelectedIndex:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;

    iget v1, v1, Lcom/oneplus/settings/ui/OPCustomClockPreference$ItemEntity;->type:I

    const-string v2, "aod_smart_display_enabled"

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v1, v4, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v5, "doze_enabled"

    invoke-static {v1, v5, v3, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-ne v4, v1, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "prox_wake_enabled"

    invoke-static {v5, v6, v3, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v4, v5, :cond_2

    move v5, v4

    goto :goto_1

    :cond_2
    move v5, v3

    :goto_1
    sget-boolean v6, Lcom/oneplus/settings/ui/OPCustomClockPreference;->SUPPORT_FOD:Z

    if-eqz v6, :cond_6

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "oem_acc_blackscreen_gestrue_enable"

    invoke-static {v6, v7, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    const/16 v7, 0xb

    invoke-static {v6, v7}, Lcom/oneplus/settings/gestures/OPGestureUtils;->get(II)I

    move-result v6

    if-ne v6, v4, :cond_3

    move v3, v4

    :cond_3
    if-eqz v1, :cond_5

    if-nez v5, :cond_4

    if-eqz v3, :cond_5

    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v2, v4, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_5
    goto :goto_2

    :cond_6
    if-eqz v1, :cond_7

    if-eqz v5, :cond_7

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPCustomClockPreference;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v2, v4, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_7
    :goto_2
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForClockStyle()V

    return-void
.end method
