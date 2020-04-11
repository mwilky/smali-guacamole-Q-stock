.class public Landroidx/slice/widget/RowView;
.super Landroidx/slice/widget/SliceChildView;
.source "RowView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation build Landroidx/annotation/RequiresApi;
    value = 0x13
.end annotation

.annotation build Landroidx/annotation/RestrictTo;
    value = {
        .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
    }
.end annotation


# static fields
.field private static final MAX_END_ITEMS:I = 0x3

.field private static final SLIDER_INTERVAL:I = 0xc8

.field private static final TAG:Ljava/lang/String; = "RowView"

.field private static final sCanSpecifyLargerRangeBarHeight:Z


# instance fields
.field private mActionDivider:Landroid/view/View;

.field private mActionSpinner:Landroid/widget/ProgressBar;

.field private mActions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroidx/slice/core/SliceActionImpl;",
            "Landroidx/slice/widget/SliceActionView;",
            ">;"
        }
    .end annotation
.end field

.field private mAllowTwoLines:Z

.field private mBottomDivider:Landroid/view/View;

.field private mContent:Landroid/widget/LinearLayout;

.field private mEndContainer:Landroid/widget/LinearLayout;

.field mHandler:Landroid/os/Handler;

.field private mHeaderActions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;"
        }
    .end annotation
.end field

.field private mIconSize:I

.field private mImageSize:I

.field private mIsHeader:Z

.field mIsRangeSliding:Z

.field mLastSentRangeUpdate:J

.field private mLastUpdatedText:Landroid/widget/TextView;

.field protected mLoadingActions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasuredRangeHeight:I

.field private mPrimaryText:Landroid/widget/TextView;

.field private mRangeBar:Landroid/widget/ProgressBar;

.field mRangeHasPendingUpdate:Z

.field private mRangeItem:Landroidx/slice/SliceItem;

.field mRangeMaxValue:I

.field mRangeMinValue:I

.field mRangeUpdater:Ljava/lang/Runnable;

.field mRangeUpdaterRunning:Z

.field mRangeValue:I

.field private mRootView:Landroid/widget/LinearLayout;

.field private mRowAction:Landroidx/slice/core/SliceActionImpl;

.field mRowContent:Landroidx/slice/widget/RowContent;

.field mRowIndex:I

.field private mSecondaryText:Landroid/widget/TextView;

.field private mSeeMoreView:Landroid/view/View;

.field private mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mSelectionItem:Landroidx/slice/SliceItem;

.field private mSelectionOptionKeys:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionOptionValues:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectionSpinner:Landroid/widget/Spinner;

.field mShowActionSpinner:Z

.field private mStartContainer:Landroid/widget/LinearLayout;

.field private mStartItem:Landroidx/slice/SliceItem;

.field private mToggles:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroidx/slice/core/SliceActionImpl;",
            "Landroidx/slice/widget/SliceActionView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroidx/slice/widget/RowView;->sCanSpecifyLargerRangeBarHeight:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    new-instance v0, Landroidx/slice/widget/RowView$2;

    invoke-direct {v0, p0}, Landroidx/slice/widget/RowView$2;-><init>(Landroidx/slice/widget/RowView;)V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mRangeUpdater:Ljava/lang/Runnable;

    new-instance v0, Landroidx/slice/widget/RowView$3;

    invoke-direct {v0, p0}, Landroidx/slice/widget/RowView$3;-><init>(Landroidx/slice/widget/RowView;)V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_icon_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/RowView;->mIconSize:I

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$dimen;->abc_slice_small_image_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Landroidx/slice/widget/RowView;->mImageSize:I

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$layout;->abc_slice_small_template:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->addView(Landroid/view/View;)V

    sget v0, Landroidx/slice/view/R$id;->icon_frame:I

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    const v0, 0x1020002

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    const v0, 0x1020010

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    sget v0, Landroidx/slice/view/R$id;->last_updated:I

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    sget v0, Landroidx/slice/view/R$id;->bottom_divider:I

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mBottomDivider:Landroid/view/View;

    sget v0, Landroidx/slice/view/R$id;->action_divider:I

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mActionDivider:Landroid/view/View;

    sget v0, Landroidx/slice/view/R$id;->action_sent_indicator:I

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mActionSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mActionSpinner:Landroid/widget/ProgressBar;

    invoke-static {v0, v1}, Landroidx/slice/widget/SliceViewUtil;->tintIndeterminateProgressBar(Landroid/content/Context;Landroid/widget/ProgressBar;)V

    const v0, 0x1020018

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    return-void
.end method

.method private addAction(Landroidx/slice/core/SliceActionImpl;ILandroid/view/ViewGroup;Z)V
    .locals 15

    move-object v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p3

    new-instance v1, Landroidx/slice/widget/SliceActionView;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroidx/slice/widget/SliceActionView;-><init>(Landroid/content/Context;)V

    move-object v9, v1

    invoke-virtual {v8, v9}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual/range {p3 .. p3}, Landroid/view/ViewGroup;->getVisibility()I

    move-result v1

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-ne v1, v3, :cond_0

    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v10

    xor-int/lit8 v1, v10, 0x1

    move v11, v1

    if-eqz v10, :cond_1

    const/4 v1, 0x3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    move v12, v1

    new-instance v1, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getMode()I

    move-result v3

    iget v4, v0, Landroidx/slice/widget/RowView;->mRowIndex:I

    invoke-direct {v1, v3, v11, v12, v4}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    move-object v13, v1

    const/4 v14, 0x1

    if-eqz p4, :cond_2

    invoke-virtual {v13, v2, v2, v14}, Landroidx/slice/widget/EventInfo;->setPosition(III)V

    :cond_2
    iget-object v4, v0, Landroidx/slice/widget/RowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    iget-object v6, v0, Landroidx/slice/widget/RowView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    move-object v1, v9

    move-object/from16 v2, p1

    move-object v3, v13

    move/from16 v5, p2

    invoke-virtual/range {v1 .. v6}, Landroidx/slice/widget/SliceActionView;->setAction(Landroidx/slice/core/SliceActionImpl;Landroidx/slice/widget/EventInfo;Landroidx/slice/widget/SliceView$OnSliceActionListener;ILandroidx/slice/widget/SliceActionView$SliceActionLoadingListener;)V

    iget-object v1, v0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    invoke-virtual/range {p1 .. p1}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {v9, v14}, Landroidx/slice/widget/SliceActionView;->setLoading(Z)V

    :cond_3
    if-eqz v10, :cond_4

    iget-object v1, v0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    invoke-virtual {v1, v7, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    iget-object v1, v0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v1, v7, v9}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-void
.end method

.method private addItem(Landroidx/slice/SliceItem;IZ)Z
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    :goto_0
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v4

    const-string v5, "slice"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v4

    const-string v7, "action"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    :cond_1
    const-string v4, "shortcut"

    invoke-virtual {p1, v4}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    new-instance v4, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v4, p1}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    invoke-direct {p0, v4, p2, v3, p3}, Landroidx/slice/widget/RowView;->addAction(Landroidx/slice/core/SliceActionImpl;ILandroid/view/ViewGroup;Z)V

    return v5

    :cond_2
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-nez v4, :cond_3

    return v6

    :cond_3
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object p1, v4

    check-cast p1, Landroidx/slice/SliceItem;

    :cond_4
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v4

    const-string v7, "image"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v0

    const-string v4, "no_tint"

    invoke-virtual {p1, v4}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v4

    move v1, v4

    goto :goto_1

    :cond_5
    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v4

    const-string v7, "long"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v2, p1

    :cond_6
    :goto_1
    const/4 v4, 0x0

    if-eqz v0, :cond_a

    if-nez v1, :cond_7

    move v7, v5

    goto :goto_2

    :cond_7
    move v7, v6

    :goto_2
    new-instance v8, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v0, v9}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v7, :cond_8

    const/4 v9, -0x1

    if-eq p2, v9, :cond_8

    invoke-virtual {v8, p2}, Landroid/widget/ImageView;->setColorFilter(I)V

    :cond_8
    invoke-virtual {v3, v8}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v8}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v9

    check-cast v9, Landroid/widget/LinearLayout$LayoutParams;

    iget v10, p0, Landroidx/slice/widget/RowView;->mImageSize:I

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iput v10, v9, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v8, v9}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    if-eqz v7, :cond_9

    iget v10, p0, Landroidx/slice/widget/RowView;->mIconSize:I

    div-int/lit8 v10, v10, 0x2

    goto :goto_3

    :cond_9
    move v10, v6

    :goto_3
    invoke-virtual {v8, v10, v10, v10, v10}, Landroid/widget/ImageView;->setPadding(IIII)V

    move-object v4, v8

    goto :goto_4

    :cond_a
    if-eqz v2, :cond_c

    new-instance v7, Landroid/widget/TextView;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getLong()J

    move-result-wide v9

    invoke-static {v8, v9, v10}, Landroidx/slice/widget/SliceViewUtil;->getTimestampString(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v8, :cond_b

    iget-object v8, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v8}, Landroidx/slice/widget/SliceStyle;->getSubtitleSize()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {v7, v6, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v8, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v8}, Landroidx/slice/widget/SliceStyle;->getSubtitleColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_b
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object v4, v7

    goto :goto_5

    :cond_c
    :goto_4
    nop

    :goto_5
    if-eqz v4, :cond_d

    goto :goto_6

    :cond_d
    move v5, v6

    :goto_6
    return v5
.end method

.method private addRange()V
    .locals 8

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getFormat()Ljava/lang/String;

    move-result-object v0

    const-string v1, "action"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/widget/SeekBar;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;)V

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/widget/ProgressBar;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const v4, 0x1010078

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    :goto_0
    nop

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v3, p0, Landroidx/slice/widget/RowView;->mTintColor:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    if-eqz v2, :cond_2

    iget v3, p0, Landroidx/slice/widget/RowView;->mTintColor:I

    invoke-static {v2, v3}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_2
    iget v3, p0, Landroidx/slice/widget/RowView;->mRangeMaxValue:I

    iget v5, p0, Landroidx/slice/widget/RowView;->mRangeMinValue:I

    sub-int/2addr v3, v5

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setMax(I)V

    iget v3, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setProgress(I)V

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p0, v1}, Landroidx/slice/widget/RowView;->addView(Landroid/view/View;)V

    iput-object v1, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_5

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v3}, Landroidx/slice/widget/RowContent;->getInputRangeThumb()Landroidx/slice/SliceItem;

    move-result-object v3

    iget-object v5, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    check-cast v5, Landroid/widget/SeekBar;

    if-eqz v3, :cond_3

    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getIcon()Landroidx/core/graphics/drawable/IconCompat;

    move-result-object v6

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    if-eqz v6, :cond_3

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    invoke-virtual {v5}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-static {v6}, Landroidx/core/graphics/drawable/DrawableCompat;->wrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget v7, p0, Landroidx/slice/widget/RowView;->mTintColor:I

    if-eq v7, v4, :cond_4

    if-eqz v6, :cond_4

    iget v4, p0, Landroidx/slice/widget/RowView;->mTintColor:I

    invoke-static {v6, v4}, Landroidx/core/graphics/drawable/DrawableCompat;->setTint(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {v5, v6}, Landroid/widget/SeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mSeekBarChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v5, v4}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    :cond_5
    return-void
.end method

.method private addSelection(Landroidx/slice/SliceItem;)V
    .locals 7

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mSelectionOptionKeys:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mSelectionOptionValues:Ljava/util/ArrayList;

    invoke-virtual {p1}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/Slice;->getItems()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/slice/SliceItem;

    const-string v3, "selection_option"

    invoke-virtual {v2, v3}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    nop

    const-string v3, "text"

    const-string v4, "selection_option_key"

    invoke-static {v2, v3, v4}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v4

    nop

    const-string v5, "selection_option_value"

    invoke-static {v2, v3, v5}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    if-eqz v4, :cond_3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v5, p0, Landroidx/slice/widget/RowView;->mSelectionOptionKeys:Ljava/util/ArrayList;

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v5, p0, Landroidx/slice/widget/RowView;->mSelectionOptionValues:Ljava/util/ArrayList;

    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getSanitizedText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Landroidx/slice/view/R$layout;->abc_slice_row_selection:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Landroidx/slice/view/R$layout;->abc_slice_row_selection_text:I

    iget-object v4, p0, Landroidx/slice/widget/RowView;->mSelectionOptionValues:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    sget v2, Landroidx/slice/view/R$layout;->abc_slice_row_selection_dropdown_text:I

    invoke-virtual {v1, v2}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {p0, v2}, Landroidx/slice/widget/RowView;->addView(Landroid/view/View;)V

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method private addSubtitle(Z)V
    .locals 10

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getSummaryItem()Landroidx/slice/SliceItem;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getSubtitleItem()Landroidx/slice/SliceItem;

    move-result-object v0

    :goto_0
    nop

    const/4 v2, 0x0

    iget-boolean v3, p0, Landroidx/slice/widget/RowView;->mShowLastUpdated:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_2

    iget-wide v5, p0, Landroidx/slice/widget/RowView;->mLastUpdated:J

    const-wide/16 v7, -0x1

    cmp-long v3, v5, v7

    if-eqz v3, :cond_2

    iget-wide v5, p0, Landroidx/slice/widget/RowView;->mLastUpdated:J

    invoke-direct {p0, v5, v6}, Landroidx/slice/widget/RowView;->getRelativeTimeString(J)Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_2

    nop

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Landroidx/slice/view/R$string;->abc_slice_updated:I

    new-array v7, v1, [Ljava/lang/Object;

    aput-object v3, v7, v4

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSanitizedText()Ljava/lang/CharSequence;

    move-result-object v3

    goto :goto_1

    :cond_3
    const/4 v3, 0x0

    :goto_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    if-eqz v0, :cond_4

    const-string v5, "partial"

    invoke-virtual {v0, v5}, Landroidx/slice/SliceItem;->hasHint(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    :cond_4
    move v5, v4

    goto :goto_3

    :cond_5
    :goto_2
    move v5, v1

    :goto_3
    if-eqz v5, :cond_8

    iget-object v6, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v6, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v6, :cond_8

    iget-object v6, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    iget-boolean v7, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    if-eqz v7, :cond_6

    iget-object v7, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v7}, Landroidx/slice/widget/SliceStyle;->getHeaderSubtitleSize()I

    move-result v7

    int-to-float v7, v7

    goto :goto_4

    :cond_6
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v7}, Landroidx/slice/widget/SliceStyle;->getSubtitleSize()I

    move-result v7

    int-to-float v7, v7

    :goto_4
    invoke-virtual {v6, v4, v7}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v6, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    iget-object v7, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v7}, Landroidx/slice/widget/SliceStyle;->getSubtitleColor()I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setTextColor(I)V

    iget-boolean v6, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    if-eqz v6, :cond_7

    iget-object v6, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v6}, Landroidx/slice/widget/SliceStyle;->getVerticalHeaderTextPadding()I

    move-result v6

    goto :goto_5

    :cond_7
    iget-object v6, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v6}, Landroidx/slice/widget/SliceStyle;->getVerticalTextPadding()I

    move-result v6

    :goto_5
    nop

    iget-object v7, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v7, v4, v6, v4, v4}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_8
    const/4 v6, 0x2

    if-eqz v2, :cond_b

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_9

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " \u00b7 "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_9
    new-instance v7, Landroid/text/SpannableString;

    invoke-direct {v7, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v8, Landroid/text/style/StyleSpan;

    invoke-direct {v8, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v9

    invoke-virtual {v7, v8, v4, v9, v4}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    iget-object v8, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v8, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v8, :cond_b

    iget-object v8, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    iget-boolean v9, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    if-eqz v9, :cond_a

    iget-object v9, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v9}, Landroidx/slice/widget/SliceStyle;->getHeaderSubtitleSize()I

    move-result v9

    goto :goto_6

    :cond_a
    iget-object v9, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v9}, Landroidx/slice/widget/SliceStyle;->getSubtitleSize()I

    move-result v9

    :goto_6
    int-to-float v9, v9

    invoke-virtual {v8, v4, v9}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v8, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    iget-object v9, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v9}, Landroidx/slice/widget/SliceStyle;->getSubtitleColor()I

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_b
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    const/16 v9, 0x8

    if-eqz v8, :cond_c

    move v8, v9

    goto :goto_7

    :cond_c
    move v8, v4

    :goto_7
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v7, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    if-eqz v5, :cond_d

    move v9, v4

    :cond_d
    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setVisibility(I)V

    iget v7, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    if-gtz v7, :cond_f

    iget-boolean v7, p0, Landroidx/slice/widget/RowView;->mAllowTwoLines:Z

    if-eqz v7, :cond_e

    goto :goto_8

    :cond_e
    move v7, v4

    goto :goto_9

    :cond_f
    :goto_8
    move v7, v1

    :goto_9
    if-eqz v7, :cond_10

    if-nez p1, :cond_10

    if-eqz v5, :cond_10

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_10

    goto :goto_a

    :cond_10
    move v6, v1

    :goto_a
    iget-object v8, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    if-ne v6, v1, :cond_11

    goto :goto_b

    :cond_11
    move v1, v4

    :goto_b
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setSingleLine(Z)V

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setMaxLines(I)V

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->requestLayout()V

    return-void
.end method

.method private applyRowStyle()V
    .locals 4

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceStyle;->getRowStyle()Landroidx/slice/widget/RowStyle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v0}, Landroidx/slice/widget/SliceStyle;->getRowStyle()Landroidx/slice/widget/RowStyle;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroidx/slice/widget/RowStyle;->getTitleItemEndPadding()I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroidx/slice/widget/RowView;->setViewPaddingEnd(Landroid/view/View;I)V

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroidx/slice/widget/RowStyle;->getContentStartPadding()I

    move-result v2

    invoke-virtual {v0}, Landroidx/slice/widget/RowStyle;->getContentEndPadding()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Landroidx/slice/widget/RowView;->setViewSidePaddings(Landroid/view/View;II)V

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroidx/slice/widget/RowStyle;->getEndItemStartPadding()I

    move-result v2

    invoke-virtual {v0}, Landroidx/slice/widget/RowStyle;->getEndItemEndPadding()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Landroidx/slice/widget/RowView;->setViewSidePaddings(Landroid/view/View;II)V

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mBottomDivider:Landroid/view/View;

    invoke-virtual {v0}, Landroidx/slice/widget/RowStyle;->getBottomDividerStartPadding()I

    move-result v2

    invoke-virtual {v0}, Landroidx/slice/widget/RowStyle;->getBottomDividerEndPadding()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Landroidx/slice/widget/RowView;->setViewSideMargins(Landroid/view/View;II)V

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mActionDivider:Landroid/view/View;

    invoke-virtual {v0}, Landroidx/slice/widget/RowStyle;->getActionDividerHeight()I

    move-result v2

    invoke-direct {p0, v1, v2}, Landroidx/slice/widget/RowView;->setViewHeight(Landroid/view/View;I)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method private getRelativeTimeString(J)Ljava/lang/CharSequence;
    .locals 8

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p1

    const-wide v2, 0x7528ad000L

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-lez v4, :cond_0

    div-long v2, v0, v2

    long-to-int v2, v2

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroidx/slice/view/R$plurals;->abc_slice_duration_years:I

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v3, v4, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    const-wide/32 v2, 0x5265c00

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    div-long v2, v0, v2

    long-to-int v2, v2

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroidx/slice/view/R$plurals;->abc_slice_duration_days:I

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v3, v4, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    const-wide/32 v2, 0xea60

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    div-long v2, v0, v2

    long-to-int v2, v2

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Landroidx/slice/view/R$plurals;->abc_slice_duration_min:I

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v5

    invoke-virtual {v3, v4, v2, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    const/4 v2, 0x0

    return-object v2
.end method

.method private getRowContentHeight()I
    .locals 3

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v0, v1, v2}, Landroidx/slice/widget/RowContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v0

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v1}, Landroidx/slice/widget/SliceStyle;->getRowRangeHeight()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_0
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v1}, Landroidx/slice/widget/SliceStyle;->getRowSelectionHeight()I

    move-result v1

    sub-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method private measureChildWithExactHeight(Landroid/view/View;II)V
    .locals 2

    iget v0, p0, Landroidx/slice/widget/RowView;->mInsetTop:I

    add-int/2addr v0, p3

    iget v1, p0, Landroidx/slice/widget/RowView;->mInsetBottom:I

    add-int/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroidx/slice/widget/RowView;->measureChild(Landroid/view/View;II)V

    return-void
.end method

.method private populateViews(Z)V
    .locals 10

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    iget-boolean v2, p0, Landroidx/slice/widget/RowView;->mIsRangeSliding:Z

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez v2, :cond_1

    invoke-direct {p0}, Landroidx/slice/widget/RowView;->resetViewState()V

    :cond_1
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v3}, Landroidx/slice/widget/RowContent;->getLayoutDir()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v3}, Landroidx/slice/widget/RowContent;->getLayoutDir()I

    move-result v3

    invoke-virtual {p0, v3}, Landroidx/slice/widget/RowView;->setLayoutDirection(I)V

    :cond_2
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v3}, Landroidx/slice/widget/RowContent;->isDefaultSeeMore()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Landroidx/slice/widget/RowView;->showSeeMore()V

    return-void

    :cond_3
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v3}, Landroidx/slice/widget/RowContent;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_4

    iget-object v4, p0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_4
    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v4}, Landroidx/slice/widget/RowContent;->getStartItem()Landroidx/slice/SliceItem;

    move-result-object v4

    iput-object v4, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    iget-object v4, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-eqz v4, :cond_6

    iget v4, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    if-gtz v4, :cond_5

    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v4}, Landroidx/slice/widget/RowContent;->hasTitleItems()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_5
    move v4, v0

    goto :goto_1

    :cond_6
    move v4, v1

    :goto_1
    if-eqz v4, :cond_7

    iget-object v5, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    iget v6, p0, Landroidx/slice/widget/RowView;->mTintColor:I

    invoke-direct {p0, v5, v6, v0}, Landroidx/slice/widget/RowView;->addItem(Landroidx/slice/SliceItem;IZ)Z

    move-result v4

    :cond_7
    iget-object v5, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    if-eqz v4, :cond_8

    move v7, v1

    goto :goto_2

    :cond_8
    move v7, v6

    :goto_2
    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v5, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v5}, Landroidx/slice/widget/RowContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v5

    if-eqz v5, :cond_9

    iget-object v7, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroidx/slice/SliceItem;->getSanitizedText()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_9
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    if-eqz v7, :cond_b

    iget-object v7, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    iget-boolean v8, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    if-eqz v8, :cond_a

    iget-object v8, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v8}, Landroidx/slice/widget/SliceStyle;->getHeaderTitleSize()I

    move-result v8

    int-to-float v8, v8

    goto :goto_3

    :cond_a
    iget-object v8, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v8}, Landroidx/slice/widget/SliceStyle;->getTitleSize()I

    move-result v8

    int-to-float v8, v8

    :goto_3
    invoke-virtual {v7, v1, v8}, Landroid/widget/TextView;->setTextSize(IF)V

    iget-object v7, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    iget-object v8, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v8}, Landroidx/slice/widget/SliceStyle;->getTitleColor()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_b
    iget-object v7, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    if-eqz v5, :cond_c

    move v8, v1

    goto :goto_4

    :cond_c
    move v8, v6

    :goto_4
    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setVisibility(I)V

    if-eqz v5, :cond_d

    move v7, v0

    goto :goto_5

    :cond_d
    move v7, v1

    :goto_5
    invoke-direct {p0, v7}, Landroidx/slice/widget/RowView;->addSubtitle(Z)V

    iget-object v7, p0, Landroidx/slice/widget/RowView;->mBottomDivider:Landroid/view/View;

    iget-object v8, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v8}, Landroidx/slice/widget/RowContent;->hasBottomDivider()Z

    move-result v8

    if-eqz v8, :cond_e

    move v6, v1

    :cond_e
    invoke-virtual {v7, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v6, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v6}, Landroidx/slice/widget/RowContent;->getPrimaryAction()Landroidx/slice/SliceItem;

    move-result-object v6

    if-eqz v6, :cond_f

    iget-object v7, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-eq v6, v7, :cond_f

    new-instance v7, Landroidx/slice/core/SliceActionImpl;

    invoke-direct {v7, v6}, Landroidx/slice/core/SliceActionImpl;-><init>(Landroidx/slice/SliceItem;)V

    iput-object v7, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    iget-object v7, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v7}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v7

    if-eqz v7, :cond_f

    iget-object v7, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    iget v8, p0, Landroidx/slice/widget/RowView;->mTintColor:I

    iget-object v9, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    invoke-direct {p0, v7, v8, v9, v1}, Landroidx/slice/widget/RowView;->addAction(Landroidx/slice/core/SliceActionImpl;ILandroid/view/ViewGroup;Z)V

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v1, v0}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    return-void

    :cond_f
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->getRange()Landroidx/slice/SliceItem;

    move-result-object v1

    if-eqz v1, :cond_12

    iget-object v7, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v7, :cond_10

    iget-object v7, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v7, v0}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    :cond_10
    iput-object v1, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    if-nez v2, :cond_11

    invoke-direct {p0}, Landroidx/slice/widget/RowView;->setRangeBounds()V

    invoke-direct {p0}, Landroidx/slice/widget/RowView;->addRange()V

    :cond_11
    return-void

    :cond_12
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getSelection()Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_13

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mSelectionItem:Landroidx/slice/SliceItem;

    invoke-direct {p0, v0}, Landroidx/slice/widget/RowView;->addSelection(Landroidx/slice/SliceItem;)V

    return-void

    :cond_13
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->updateEndItems()V

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateActionSpinner()V

    return-void
.end method

.method private resetViewState()V
    .locals 5

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->setLayoutDirection(I)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mContent:Landroid/widget/LinearLayout;

    invoke-direct {p0, v0, v1}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mStartContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mPrimaryText:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSecondaryText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mLastUpdatedText:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    iput-object v3, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    iput-object v3, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mBottomDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActionDivider:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSeeMoreView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Landroidx/slice/widget/RowView;->mSeeMoreView:Landroid/view/View;

    :cond_0
    iput-boolean v1, p0, Landroidx/slice/widget/RowView;->mIsRangeSliding:Z

    iput-boolean v1, p0, Landroidx/slice/widget/RowView;->mRangeHasPendingUpdate:Z

    iput-object v3, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    iput v1, p0, Landroidx/slice/widget/RowView;->mRangeMinValue:I

    iput v1, p0, Landroidx/slice/widget/RowView;->mRangeMaxValue:I

    iput v1, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/slice/widget/RowView;->mLastSentRangeUpdate:J

    iput-object v3, p0, Landroidx/slice/widget/RowView;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActionSpinner:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    invoke-virtual {p0, v0}, Landroidx/slice/widget/RowView;->removeView(Landroid/view/View;)V

    iput-object v3, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    :cond_2
    iput-object v3, p0, Landroidx/slice/widget/RowView;->mSelectionItem:Landroidx/slice/SliceItem;

    return-void
.end method

.method private setRangeBounds()V
    .locals 7

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    const-string v1, "int"

    const-string v2, "min"

    invoke-static {v0, v1, v2}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getInt()I

    move-result v2

    :cond_0
    iput v2, p0, Landroidx/slice/widget/RowView;->mRangeMinValue:I

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    const-string v4, "max"

    invoke-static {v3, v1, v4}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v3

    const/16 v4, 0x64

    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroidx/slice/SliceItem;->getInt()I

    move-result v4

    :cond_1
    iput v4, p0, Landroidx/slice/widget/RowView;->mRangeMaxValue:I

    iget-object v5, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    const-string v6, "value"

    invoke-static {v5, v1, v6}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v1

    const/4 v5, 0x0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Landroidx/slice/SliceItem;->getInt()I

    move-result v6

    sub-int v5, v6, v2

    :cond_2
    iput v5, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    return-void
.end method

.method private setViewClickable(Landroid/view/View;Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    move-object v1, p0

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    if-eqz p2, :cond_1

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x101030e

    invoke-static {v0, v1}, Landroidx/slice/widget/SliceViewUtil;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_1

    :cond_1
    nop

    :goto_1
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private setViewHeight(Landroid/view/View;I)V
    .locals 1

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput p2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private setViewPaddingEnd(Landroid/view/View;I)V
    .locals 3

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingStart()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, v0, v1, p2, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    return-void
.end method

.method private setViewSideMargins(Landroid/view/View;II)V
    .locals 2

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-virtual {v0, p2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    invoke-virtual {v0, p3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mBottomDivider:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private setViewSidePaddings(Landroid/view/View;II)V
    .locals 2

    if-eqz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    :cond_0
    return-void
.end method

.method private showSeeMore()V
    .locals 3

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Landroidx/slice/view/R$layout;->abc_slice_row_show_more:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Landroidx/slice/widget/RowView$1;

    invoke-direct {v1, p0, v0}, Landroidx/slice/widget/RowView$1;-><init>(Landroidx/slice/widget/RowView;Landroid/widget/Button;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget v1, p0, Landroidx/slice/widget/RowView;->mTintColor:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Landroidx/slice/widget/RowView;->mTintColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    :cond_0
    iput-object v0, p0, Landroidx/slice/widget/RowView;->mSeeMoreView:Landroid/view/View;

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mSeeMoreView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v2}, Landroidx/slice/widget/RowContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateActionSpinner()V

    :cond_1
    return-void
.end method

.method private updateEndItems()V
    .locals 12

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getEndItems()Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mHeaderActions:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mHeaderActions:Ljava/util/List;

    :cond_1
    iget v1, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v1}, Landroidx/slice/widget/RowContent;->hasTitleItems()Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    const-string v7, "action"

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-ge v5, v6, :cond_8

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Landroidx/slice/SliceItem;

    if-eqz v6, :cond_3

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/slice/SliceItem;

    goto :goto_1

    :cond_3
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v6}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v6

    :goto_1
    nop

    const/4 v10, 0x3

    if-ge v1, v10, :cond_7

    iget v10, p0, Landroidx/slice/widget/RowView;->mTintColor:I

    invoke-direct {p0, v6, v10, v8}, Landroidx/slice/widget/RowView;->addItem(Landroidx/slice/SliceItem;IZ)Z

    move-result v10

    if-eqz v10, :cond_7

    if-nez v4, :cond_4

    invoke-static {v6, v7}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v10

    if-eqz v10, :cond_4

    move-object v4, v6

    :cond_4
    add-int/lit8 v1, v1, 0x1

    if-ne v1, v9, :cond_7

    iget-object v10, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v6}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v10

    const-string v11, "image"

    invoke-static {v10, v11}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/Slice;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v10

    if-nez v10, :cond_5

    move v10, v9

    goto :goto_2

    :cond_5
    move v10, v8

    :goto_2
    move v2, v10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v10

    if-ne v10, v9, :cond_6

    invoke-static {v6, v7}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v7

    if-eqz v7, :cond_6

    move v8, v9

    goto :goto_3

    :cond_6
    nop

    :goto_3
    move v3, v8

    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_8
    iget-object v5, p0, Landroidx/slice/widget/RowView;->mEndContainer:Landroid/widget/LinearLayout;

    const/16 v6, 0x8

    if-lez v1, :cond_9

    move v10, v8

    goto :goto_4

    :cond_9
    move v10, v6

    :goto_4
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v5, p0, Landroidx/slice/widget/RowView;->mActionDivider:Landroid/view/View;

    iget-object v10, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v10, :cond_b

    if-nez v2, :cond_a

    iget-object v10, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v10}, Landroidx/slice/widget/RowContent;->hasActionDivider()Z

    move-result v10

    if-eqz v10, :cond_b

    if-eqz v3, :cond_b

    :cond_a
    move v6, v8

    goto :goto_5

    :cond_b
    nop

    :goto_5
    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Landroidx/slice/widget/RowView;->mStartItem:Landroidx/slice/SliceItem;

    if-eqz v5, :cond_c

    invoke-static {v5, v7}, Landroidx/slice/core/SliceQuery;->find(Landroidx/slice/SliceItem;Ljava/lang/String;)Landroidx/slice/SliceItem;

    move-result-object v5

    if-eqz v5, :cond_c

    move v5, v9

    goto :goto_6

    :cond_c
    move v5, v8

    :goto_6
    if-eqz v4, :cond_d

    move v6, v9

    goto :goto_7

    :cond_d
    move v6, v8

    :goto_7
    const/4 v7, 0x0

    iget-object v10, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v10, :cond_e

    iget-object v8, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v8, v9}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    goto :goto_9

    :cond_e
    if-eq v6, v5, :cond_12

    if-eq v1, v9, :cond_f

    if-eqz v5, :cond_12

    :cond_f
    const/4 v7, 0x1

    iget-object v10, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_10

    iget-object v8, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    invoke-virtual {v8}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/slice/core/SliceActionImpl;

    iput-object v8, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    goto :goto_8

    :cond_10
    iget-object v10, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_11

    iget-object v10, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v10}, Landroid/util/ArrayMap;->size()I

    move-result v10

    if-ne v10, v9, :cond_11

    iget-object v10, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    invoke-virtual {v10, v8}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/slice/widget/SliceActionView;

    invoke-virtual {v8}, Landroidx/slice/widget/SliceActionView;->getAction()Landroidx/slice/core/SliceActionImpl;

    move-result-object v8

    iput-object v8, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    :cond_11
    :goto_8
    iget-object v8, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v8, v9}, Landroidx/slice/widget/RowView;->setViewClickable(Landroid/view/View;Z)V

    :cond_12
    :goto_9
    iget-object v8, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v8, :cond_13

    if-nez v7, :cond_13

    iget-object v10, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    invoke-virtual {v8}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v8

    invoke-interface {v10, v8}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_13

    iput-boolean v9, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    :cond_13
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->getActionItem()Landroidx/slice/SliceItem;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0}, Landroidx/slice/core/SliceActionImpl;->isToggle()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mToggles:Landroid/util/ArrayMap;

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceActionView;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActions:Landroid/util/ArrayMap;

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/slice/widget/SliceActionView;

    :goto_0
    nop

    if-eqz v0, :cond_2

    instance-of v1, p1, Landroidx/slice/widget/SliceActionView;

    if-nez v1, :cond_2

    invoke-virtual {v0}, Landroidx/slice/widget/SliceActionView;->sendAction()V

    goto :goto_1

    :cond_2
    iget v1, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    if-nez v1, :cond_3

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->performClick()Z

    goto :goto_1

    :cond_3
    :try_start_0
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v1}, Landroidx/slice/core/SliceActionImpl;->getActionItem()Landroidx/slice/SliceItem;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroidx/slice/SliceItem;->fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz v1, :cond_4

    new-instance v1, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getMode()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    iget v5, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    invoke-direct {v1, v2, v3, v4, v5}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v3}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v3

    invoke-interface {v2, v1, v3}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V

    :cond_4
    iget-boolean v1, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    if-eqz v1, :cond_5

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v2}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v2

    iget v3, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    invoke-interface {v1, v2, v3}, Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;->onSliceActionLoading(Landroidx/slice/SliceItem;I)V

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v2}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_5
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateActionSpinner()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "RowView"

    const-string v3, "PendingIntent for slice cannot be sent"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void

    :cond_6
    :goto_2
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSelectionItem:Landroidx/slice/SliceItem;

    if-eqz v0, :cond_4

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    if-ne p1, v0, :cond_4

    if-ltz p3, :cond_4

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSelectionOptionKeys:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p3, v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getMode()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x6

    iget v4, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mSelectionItem:Landroidx/slice/SliceItem;

    invoke-interface {v1, v0, v2}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V

    :cond_1
    iget-object v0, p0, Landroidx/slice/widget/RowView;->mSelectionOptionKeys:Ljava/util/ArrayList;

    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :try_start_0
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mSelectionItem:Landroidx/slice/SliceItem;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    const/high16 v4, 0x10000000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    const-string v4, "android.app.slice.extra.SELECTION"

    invoke-virtual {v3, v4, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroidx/slice/SliceItem;->fireActionInternal(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mLoadingListener:Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v3}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v3

    iget v4, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    invoke-interface {v2, v3, v4}, Landroidx/slice/widget/SliceActionView$SliceActionLoadingListener;->onSliceActionLoading(Landroidx/slice/SliceItem;I)V

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRowAction:Landroidx/slice/core/SliceActionImpl;

    invoke-virtual {v3}, Landroidx/slice/core/SliceActionImpl;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_2
    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateActionSpinner()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "RowView"

    const-string v3, "PendingIntent for slice cannot be sent"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 6

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getPaddingLeft()I

    move-result v0

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    iget v2, p0, Landroidx/slice/widget/RowView;->mInsetTop:I

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v3

    add-int/2addr v3, v0

    invoke-direct {p0}, Landroidx/slice/widget/RowView;->getRowContentHeight()I

    move-result v4

    iget v5, p0, Landroidx/slice/widget/RowView;->mInsetTop:I

    add-int/2addr v4, v5

    invoke-virtual {v1, v0, v2, v3, v4}, Landroid/widget/LinearLayout;->layout(IIII)V

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v1}, Landroidx/slice/widget/SliceStyle;->getRowRangeHeight()I

    move-result v1

    iget v2, p0, Landroidx/slice/widget/RowView;->mMeasuredRangeHeight:I

    sub-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0}, Landroidx/slice/widget/RowView;->getRowContentHeight()I

    move-result v2

    add-int/2addr v2, v1

    iget v3, p0, Landroidx/slice/widget/RowView;->mInsetTop:I

    add-int/2addr v2, v3

    iget v3, p0, Landroidx/slice/widget/RowView;->mMeasuredRangeHeight:I

    add-int/2addr v3, v2

    iget-object v4, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    invoke-virtual {v4}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v0

    invoke-virtual {v4, v0, v2, v5, v3}, Landroid/widget/ProgressBar;->layout(IIII)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroidx/slice/widget/RowView;->getRowContentHeight()I

    move-result v1

    iget v2, p0, Landroidx/slice/widget/RowView;->mInsetTop:I

    add-int/2addr v1, v2

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getMeasuredHeight()I

    move-result v2

    add-int/2addr v2, v1

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v4, v0

    invoke-virtual {v3, v0, v1, v4, v2}, Landroid/widget/Spinner;->layout(IIII)V

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    const/4 v0, 0x0

    invoke-direct {p0}, Landroidx/slice/widget/RowView;->getRowContentHeight()I

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-direct {p0, v3, p1, v1}, Landroidx/slice/widget/RowView;->measureChildWithExactHeight(Landroid/view/View;II)V

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRootView:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_0
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    if-eqz v3, :cond_2

    sget-boolean v4, Landroidx/slice/widget/RowView;->sCanSpecifyLargerRangeBarHeight:Z

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v4}, Landroidx/slice/widget/SliceStyle;->getRowRangeHeight()I

    move-result v4

    invoke-direct {p0, v3, p1, v4}, Landroidx/slice/widget/RowView;->measureChildWithExactHeight(Landroid/view/View;II)V

    goto :goto_1

    :cond_1
    nop

    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v4

    invoke-virtual {p0, v3, p1, v4}, Landroidx/slice/widget/RowView;->measureChild(Landroid/view/View;II)V

    :goto_1
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMeasuredHeight()I

    move-result v3

    iput v3, p0, Landroidx/slice/widget/RowView;->mMeasuredRangeHeight:I

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRangeBar:Landroid/widget/ProgressBar;

    invoke-virtual {v3}, Landroid/widget/ProgressBar;->getMeasuredWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_2

    :cond_2
    iget-object v3, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    if-eqz v3, :cond_3

    iget-object v4, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    invoke-virtual {v4}, Landroidx/slice/widget/SliceStyle;->getRowSelectionHeight()I

    move-result v4

    invoke-direct {p0, v3, p1, v4}, Landroidx/slice/widget/RowView;->measureChildWithExactHeight(Landroid/view/View;II)V

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mSelectionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3}, Landroid/widget/Spinner;->getMeasuredWidth()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v0

    :cond_3
    :goto_2
    iget v3, p0, Landroidx/slice/widget/RowView;->mInsetStart:I

    add-int/2addr v3, v0

    iget v4, p0, Landroidx/slice/widget/RowView;->mInsetEnd:I

    add-int/2addr v3, v4

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getSuggestedMinimumWidth()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    iget-object v3, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v3, :cond_4

    iget-object v4, p0, Landroidx/slice/widget/RowView;->mSliceStyle:Landroidx/slice/widget/SliceStyle;

    iget-object v5, p0, Landroidx/slice/widget/RowView;->mViewPolicy:Landroidx/slice/widget/SliceViewPolicy;

    invoke-virtual {v3, v4, v5}, Landroidx/slice/widget/RowContent;->getHeight(Landroidx/slice/widget/SliceStyle;Landroidx/slice/widget/SliceViewPolicy;)I

    move-result v3

    goto :goto_3

    :cond_4
    move v3, v2

    :goto_3
    invoke-static {v0, p1, v2}, Landroidx/slice/widget/RowView;->resolveSizeAndState(III)I

    move-result v2

    iget v4, p0, Landroidx/slice/widget/RowView;->mInsetTop:I

    add-int/2addr v4, v3

    iget v5, p0, Landroidx/slice/widget/RowView;->mInsetBottom:I

    add-int/2addr v4, v5

    invoke-virtual {p0, v2, v4}, Landroidx/slice/widget/RowView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method

.method public resetView()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    invoke-direct {p0}, Landroidx/slice/widget/RowView;->resetViewState()V

    return-void
.end method

.method sendSliderValue()V
    .locals 5

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroidx/slice/widget/RowView;->mLastSentRangeUpdate:J

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v2

    const-string v3, "android.app.slice.extra.RANGE_VALUE"

    iget v4, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroidx/slice/SliceItem;->fireAction(Landroid/content/Context;Landroid/content/Intent;)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    if-eqz v0, :cond_1

    new-instance v0, Landroidx/slice/widget/EventInfo;

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->getMode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x4

    iget v4, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    invoke-direct {v0, v1, v2, v3, v4}, Landroidx/slice/widget/EventInfo;-><init>(IIII)V

    iget v1, p0, Landroidx/slice/widget/RowView;->mRangeValue:I

    iput v1, v0, Landroidx/slice/widget/EventInfo;->state:I

    iget-object v1, p0, Landroidx/slice/widget/RowView;->mObserver:Landroidx/slice/widget/SliceView$OnSliceActionListener;

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRangeItem:Landroidx/slice/SliceItem;

    invoke-interface {v1, v0, v2}, Landroidx/slice/widget/SliceView$OnSliceActionListener;->onSliceAction(Landroidx/slice/widget/EventInfo;Landroidx/slice/SliceItem;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "RowView"

    const-string v2, "PendingIntent for slice cannot be sent"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method public setAllowTwoLines(Z)V
    .locals 1

    iput-boolean p1, p0, Landroidx/slice/widget/RowView;->mAllowTwoLines:Z

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/slice/widget/RowView;->populateViews(Z)V

    :cond_0
    return-void
.end method

.method public setInsets(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroidx/slice/widget/SliceChildView;->setInsets(IIII)V

    invoke-virtual {p0, p1, p2, p3, p4}, Landroidx/slice/widget/RowView;->setPadding(IIII)V

    return-void
.end method

.method public setLastUpdated(J)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroidx/slice/widget/SliceChildView;->setLastUpdated(J)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    invoke-virtual {v0}, Landroidx/slice/widget/RowContent;->getTitleItem()Landroidx/slice/SliceItem;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/slice/SliceItem;->getSanitizedText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-direct {p0, v0}, Landroidx/slice/widget/RowView;->addSubtitle(Z)V

    :cond_1
    return-void
.end method

.method public setLoadingActions(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/slice/SliceItem;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    goto :goto_0

    :cond_0
    iput-object p1, p0, Landroidx/slice/widget/RowView;->mLoadingActions:Ljava/util/Set;

    :goto_0
    invoke-direct {p0}, Landroidx/slice/widget/RowView;->updateEndItems()V

    invoke-virtual {p0}, Landroidx/slice/widget/RowView;->updateActionSpinner()V

    return-void
.end method

.method public setShowLastUpdated(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setShowLastUpdated(Z)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/slice/widget/RowView;->populateViews(Z)V

    :cond_0
    return-void
.end method

.method public setSliceActions(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/slice/core/SliceAction;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/slice/widget/RowView;->mHeaderActions:Ljava/util/List;

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Landroidx/slice/widget/RowView;->updateEndItems()V

    :cond_0
    return-void
.end method

.method public setSliceItem(Landroidx/slice/widget/SliceContent;ZIILandroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 8

    invoke-virtual {p0, p5}, Landroidx/slice/widget/RowView;->setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_4

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Landroidx/slice/widget/RowContent;->isValid()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v2, :cond_0

    new-instance v3, Landroidx/slice/SliceStructure;

    invoke-virtual {v2}, Landroidx/slice/widget/RowContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v2

    invoke-direct {v3, v2}, Landroidx/slice/SliceStructure;-><init>(Landroidx/slice/SliceItem;)V

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    move-object v2, v3

    new-instance v3, Landroidx/slice/SliceStructure;

    invoke-virtual {p1}, Landroidx/slice/widget/SliceContent;->getSliceItem()Landroidx/slice/SliceItem;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/slice/SliceItem;->getSlice()Landroidx/slice/Slice;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/slice/SliceStructure;-><init>(Landroidx/slice/Slice;)V

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-virtual {v2, v3}, Landroidx/slice/SliceStructure;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v1

    :goto_1
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroidx/slice/SliceStructure;->getUri()Landroid/net/Uri;

    move-result-object v6

    if-eqz v6, :cond_2

    invoke-virtual {v2}, Landroidx/slice/SliceStructure;->getUri()Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v3}, Landroidx/slice/SliceStructure;->getUri()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v1

    :goto_2
    if-eqz v6, :cond_3

    if-eqz v5, :cond_3

    goto :goto_3

    :cond_3
    move v4, v1

    :goto_3
    move v0, v4

    :cond_4
    iput-boolean v1, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    iput-boolean p2, p0, Landroidx/slice/widget/RowView;->mIsHeader:Z

    move-object v1, p1

    check-cast v1, Landroidx/slice/widget/RowContent;

    iput-object v1, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    iput p3, p0, Landroidx/slice/widget/RowView;->mRowIndex:I

    invoke-direct {p0, v0}, Landroidx/slice/widget/RowView;->populateViews(Z)V

    return-void
.end method

.method public setStyle(Landroidx/slice/widget/SliceStyle;)V
    .locals 0

    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setStyle(Landroidx/slice/widget/SliceStyle;)V

    invoke-direct {p0}, Landroidx/slice/widget/RowView;->applyRowStyle()V

    return-void
.end method

.method public setTint(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/ColorInt;
        .end annotation
    .end param

    invoke-super {p0, p1}, Landroidx/slice/widget/SliceChildView;->setTint(I)V

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mRowContent:Landroidx/slice/widget/RowContent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/slice/widget/RowView;->populateViews(Z)V

    :cond_0
    return-void
.end method

.method updateActionSpinner()V
    .locals 2

    iget-object v0, p0, Landroidx/slice/widget/RowView;->mActionSpinner:Landroid/widget/ProgressBar;

    iget-boolean v1, p0, Landroidx/slice/widget/RowView;->mShowActionSpinner:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, 0x8

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method
