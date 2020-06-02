.class public Lcom/oneplus/settings/OPColorPickerActivity;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPColorPickerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;
.implements Lcom/oneplus/settings/OnBackPressListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/OPColorPickerActivity$ViewAdapter;
    }
.end annotation


# static fields
.field private static final KEY_CUSTOM_ACCENT_COLOR:Ljava/lang/String; = "persist.sys.theme.accentcolor"

.field private static final OEM_BLACK_MODE_ACCENT_COLOR:Ljava/lang/String; = "oem_black_mode_accent_color"

.field private static final OEM_BLACK_MODE_ACCENT_COLOR_INDEX:Ljava/lang/String; = "oem_black_mode_accent_color_index"

.field private static final OEM_WHITE_MODE_ACCENT_COLOR:Ljava/lang/String; = "oem_white_mode_accent_color"

.field private static final OEM_WHITE_MODE_ACCENT_COLOR_INDEX:Ljava/lang/String; = "oem_white_mode_accent_color_index"

.field private static final OP_THEME_PACKAGE:Ljava/lang/String; = "com.oneplus.skin"

.field private static final SAVE_NEMU:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OPFullScreenGestureGuidePage"


# instance fields
.field private mBlackColorStringIds:[I

.field private mBlackColors:[Ljava/lang/String;

.field private mBottomIndicator:Landroid/view/View;

.field private mColorEditButton:Landroid/view/View;

.field private mColorEditView:Landroid/widget/EditText;

.field private mColors:[Ljava/lang/String;

.field private mCurrentColor:Ljava/lang/String;

.field private mCurrentTempColor:Ljava/lang/String;

.field private mCustomView:Landroid/view/View;

.field private mDisabledCellColor:I

.field private mEditColorDialog:Landroid/app/AlertDialog;

.field private mIndicator1:Landroid/view/View;

.field private mIndicator2:Landroid/view/View;

.field private mIsCustomColor:Z

.field protected mLastIndex:I

.field private mModifyColorPicker:Lcom/oneplus/lib/widget/button/OPButton;

.field private mPickerView:Lcom/oneplus/settings/ui/ColorPickerView;

.field private mPresetView:Landroid/view/View;

.field private mPreviewAdvanceDark:Landroid/widget/TextView;

.field private mPreviewAdvanceLight:Landroid/widget/TextView;

.field private mPreviewColorDark:Landroid/widget/TextView;

.field private mPreviewColorLight:Landroid/widget/TextView;

.field private mPreviewRadio1Dark:Lcom/oneplus/lib/widget/button/OPRadioButton;

.field private mPreviewRadio1Light:Lcom/oneplus/lib/widget/button/OPRadioButton;

.field private mPreviewRadio2Dark:Lcom/oneplus/lib/widget/button/OPRadioButton;

.field private mPreviewRadio2Light:Lcom/oneplus/lib/widget/button/OPRadioButton;

.field private mPreviewRadio3Dark:Lcom/oneplus/lib/widget/button/OPRadioButton;

.field private mPreviewRadio3Light:Lcom/oneplus/lib/widget/button/OPRadioButton;

.field private mPreviewRadio4Dark:Lcom/oneplus/lib/widget/button/OPRadioButton;

.field private mPreviewRadio4Light:Lcom/oneplus/lib/widget/button/OPRadioButton;

.field private mPreviewSeekbarDark:Landroid/widget/SeekBar;

.field private mPreviewSeekbarLight:Landroid/widget/SeekBar;

.field private mPreviewText:Landroid/widget/TextView;

.field private mPreviewText1Dark:Landroid/widget/TextView;

.field private mPreviewText1Light:Landroid/widget/TextView;

.field private mPreviewText2Dark:Landroid/widget/TextView;

.field private mPreviewText2Light:Landroid/widget/TextView;

.field private mPreviewText3Dark:Landroid/widget/TextView;

.field private mPreviewText3Light:Landroid/widget/TextView;

.field private mPreviewText4Dark:Landroid/widget/TextView;

.field private mPreviewText4Light:Landroid/widget/TextView;

.field private mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

.field private mPreviewcoldDark:Landroid/widget/TextView;

.field private mPreviewcoldLight:Landroid/widget/TextView;

.field private mPreviewwarmDark:Landroid/widget/TextView;

.field private mPreviewwarmLight:Landroid/widget/TextView;

.field private mRippleEffectColor:I

.field private mSelectIndex:I

.field private mViews:[Landroid/view/View;

.field private mWhiteColorStringIds:[I

.field private mWhiteColors:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIsCustomColor:Z

    iput v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/OPColorPickerActivity;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPColorPickerActivity;->setIndicator(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/settings/OPColorPickerActivity;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIsCustomColor:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/oneplus/settings/OPColorPickerActivity;Landroid/widget/EditText;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPColorPickerActivity;->setEditTextAtLastLocation(Landroid/widget/EditText;)V

    return-void
.end method

.method static synthetic access$102(Lcom/oneplus/settings/OPColorPickerActivity;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIsCustomColor:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/oneplus/settings/OPColorPickerActivity;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPColorPickerActivity;->isColorCodeValid(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/oneplus/settings/OPColorPickerActivity;)Lcom/oneplus/settings/ui/ColorPickerView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPickerView:Lcom/oneplus/settings/ui/ColorPickerView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/app/AlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mEditColorDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPresetView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCustomView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/OPColorPickerActivity;)Lcom/oneplus/lib/widget/button/OPButton;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mModifyColorPicker:Lcom/oneplus/lib/widget/button/OPButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/OPColorPickerActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$602(Lcom/oneplus/settings/OPColorPickerActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$702(Lcom/oneplus/settings/OPColorPickerActivity;I)I
    .locals 0

    iput p1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    return p1
.end method

.method static synthetic access$800(Lcom/oneplus/settings/OPColorPickerActivity;ILjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/OPColorPickerActivity;->refreshUI(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/settings/OPColorPickerActivity;)Landroid/widget/EditText;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditView:Landroid/widget/EditText;

    return-object v0
.end method

.method public static convertToColorInt(Ljava/lang/String;)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private convertToRGB(I)Ljava/lang/String;
    .locals 6

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "0"

    const/4 v5, 0x1

    if-ne v3, v5, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private initAccentColorView(Landroid/view/View;)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColors:[Ljava/lang/String;

    const/16 v1, 0xc

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    array-length v2, v0

    new-array v2, v2, [Landroid/view/View;

    iput-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mViews:[Landroid/view/View;

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    iget-object v3, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mViews:[Landroid/view/View;

    aget v4, v1, v2

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mViews:[Landroid/view/View;

    aget-object v3, v3, v2

    aget-object v4, v0, v2

    invoke-virtual {p0, v4}, Lcom/oneplus/settings/OPColorPickerActivity;->createRippleDrawable(Ljava/lang/String;)Landroid/graphics/drawable/RippleDrawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object v3, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mViews:[Landroid/view/View;

    aget-object v3, v3, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    iget-object v3, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mViews:[Landroid/view/View;

    aget-object v3, v3, v2

    new-instance v4, Lcom/oneplus/settings/OPColorPickerActivity$4;

    invoke-direct {v4, p0, v0}, Lcom/oneplus/settings/OPColorPickerActivity$4;-><init>(Lcom/oneplus/settings/OPColorPickerActivity;[Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->init()V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a0160
        0x7f0a0161
        0x7f0a0164
        0x7f0a0165
        0x7f0a0166
        0x7f0a0167
        0x7f0a0168
        0x7f0a0169
        0x7f0a016a
        0x7f0a016b
        0x7f0a0162
        0x7f0a0163
    .end array-data
.end method

.method private initAccentColors(Landroid/content/res/Resources;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/16 v2, 0xc

    new-array v3, v2, [Ljava/lang/String;

    const v4, 0x7f0603d2

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const v4, 0x7f0603d6

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    aput-object v4, v3, v6

    const v4, 0x7f0603dd

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x2

    aput-object v4, v3, v7

    const v4, 0x7f0603d8

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x3

    aput-object v4, v3, v8

    const v4, 0x7f0603d0

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x4

    aput-object v4, v3, v9

    const v4, 0x7f0603e1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v10, 0x5

    aput-object v4, v3, v10

    const v4, 0x7f0603ed

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v11, 0x6

    aput-object v4, v3, v11

    const v4, 0x7f0603d4

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v12, 0x7

    aput-object v4, v3, v12

    const v4, 0x7f0603df

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v13, 0x8

    aput-object v4, v3, v13

    const v4, 0x7f0603cc

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v14, 0x9

    aput-object v4, v3, v14

    const v4, 0x7f0603db

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v15, 0xa

    aput-object v4, v3, v15

    const v4, 0x7f0603ce

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/16 v16, 0xb

    aput-object v4, v3, v16

    iput-object v3, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mWhiteColors:[Ljava/lang/String;

    new-array v3, v2, [Ljava/lang/String;

    const v4, 0x7f0603d1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    const v4, 0x7f0603d5

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v6

    const v4, 0x7f0603dc

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    const v4, 0x7f0603d7

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    const v4, 0x7f0603cf

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v9

    const v4, 0x7f0603e0

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v10

    const v4, 0x7f0603ec

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v11

    const v4, 0x7f0603d3

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v12

    const v4, 0x7f0603de

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v13

    const v4, 0x7f0603cb

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v14

    const v4, 0x7f0603da

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v15

    const v4, 0x7f0603cd

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v16

    iput-object v3, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mBlackColors:[Ljava/lang/String;

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPColorPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isWhiteModeOn(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mWhiteColors:[Ljava/lang/String;

    iput-object v3, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mColors:[Ljava/lang/String;

    goto :goto_0

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/settings/OPColorPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mBlackColors:[Ljava/lang/String;

    iput-object v3, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mColors:[Ljava/lang/String;

    :cond_1
    :goto_0
    new-array v3, v2, [I

    fill-array-data v3, :array_0

    iput-object v3, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mWhiteColorStringIds:[I

    new-array v2, v2, [I

    fill-array-data v2, :array_1

    iput-object v2, v0, Lcom/oneplus/settings/OPColorPickerActivity;->mBlackColorStringIds:[I

    return-void

    :array_0
    .array-data 4
        0x7f121072
        0x7f121078
        0x7f12107e
        0x7f12107b
        0x7f12106e
        0x7f121083
        0x7f121086
        0x7f121075
        0x7f12107f    # 1.9415294E38f
        0x7f121080
        0x7f12106f
        0x7f1204f9
    .end array-data

    :array_1
    .array-data 4
        0x7f121070
        0x7f121076
        0x7f12107c
        0x7f121079
        0x7f12106c
        0x7f121081
        0x7f121084
        0x7f121073
        0x7f12107f    # 1.9415294E38f
        0x7f121080
        0x7f12106f
        0x7f1204f9
    .end array-data
.end method

.method private initDarkView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a0467

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewColorDark:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewColorDark:Landroid/widget/TextView;

    const v1, 0x7f06033a

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPColorPickerActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0466

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewAdvanceDark:Landroid/widget/TextView;

    const v0, 0x7f0a045e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPRadioButton;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewRadio1Dark:Lcom/oneplus/lib/widget/button/OPRadioButton;

    const v0, 0x7f0a045f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPRadioButton;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewRadio2Dark:Lcom/oneplus/lib/widget/button/OPRadioButton;

    const v0, 0x7f0a0460

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPRadioButton;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewRadio3Dark:Lcom/oneplus/lib/widget/button/OPRadioButton;

    const v0, 0x7f0a0461

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPRadioButton;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewRadio4Dark:Lcom/oneplus/lib/widget/button/OPRadioButton;

    const v0, 0x7f0a0462

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText1Dark:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText1Dark:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPColorPickerActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0463

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText2Dark:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText2Dark:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPColorPickerActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0464

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText3Dark:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText3Dark:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPColorPickerActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0465

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText4Dark:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText4Dark:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPColorPickerActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0469

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewcoldDark:Landroid/widget/TextView;

    const v0, 0x7f0a046a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewwarmDark:Landroid/widget/TextView;

    const v0, 0x7f0a0468

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewSeekbarDark:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewSeekbarDark:Landroid/widget/SeekBar;

    new-instance v1, Lcom/oneplus/settings/OPColorPickerActivity$6;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPColorPickerActivity$6;-><init>(Lcom/oneplus/settings/OPColorPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private initLightView(Landroid/view/View;)V
    .locals 3

    const v0, 0x7f0a0467

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewColorLight:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewColorLight:Landroid/widget/TextView;

    const v1, 0x7f06033c

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPColorPickerActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0466

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewAdvanceLight:Landroid/widget/TextView;

    const v0, 0x7f0a045e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPRadioButton;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewRadio1Light:Lcom/oneplus/lib/widget/button/OPRadioButton;

    const v0, 0x7f0a045f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPRadioButton;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewRadio2Light:Lcom/oneplus/lib/widget/button/OPRadioButton;

    const v0, 0x7f0a0460

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPRadioButton;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewRadio3Light:Lcom/oneplus/lib/widget/button/OPRadioButton;

    const v0, 0x7f0a0461

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/widget/button/OPRadioButton;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewRadio4Light:Lcom/oneplus/lib/widget/button/OPRadioButton;

    const v0, 0x7f0a0462

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText1Light:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText1Light:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPColorPickerActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0463

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText2Light:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText2Light:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPColorPickerActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0464

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText3Light:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText3Light:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPColorPickerActivity;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0465

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText4Light:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText4Light:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/OPColorPickerActivity;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    const v0, 0x7f0a0469

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewcoldLight:Landroid/widget/TextView;

    const v0, 0x7f0a046a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewwarmLight:Landroid/widget/TextView;

    const v0, 0x7f0a0468

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewSeekbarLight:Landroid/widget/SeekBar;

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewSeekbarLight:Landroid/widget/SeekBar;

    new-instance v1, Lcom/oneplus/settings/OPColorPickerActivity$5;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/OPColorPickerActivity$5;-><init>(Lcom/oneplus/settings/OPColorPickerActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private isColorCodeValid(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "^#([0-9a-fA-F]{6})"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    return v2
.end method

.method private refreshUI(ILjava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewAdvanceLight:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewcoldLight:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewwarmLight:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewSeekbarLight:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewSeekbarLight:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewSeekbarLight:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewRadio1Light:Lcom/oneplus/lib/widget/button/OPRadioButton;

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPRadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewRadio2Light:Lcom/oneplus/lib/widget/button/OPRadioButton;

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPRadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewRadio3Light:Lcom/oneplus/lib/widget/button/OPRadioButton;

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPRadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewRadio4Light:Lcom/oneplus/lib/widget/button/OPRadioButton;

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPRadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewAdvanceDark:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewcoldDark:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewwarmDark:Landroid/widget/TextView;

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewSeekbarDark:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewSeekbarDark:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewSeekbarDark:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewRadio1Dark:Lcom/oneplus/lib/widget/button/OPRadioButton;

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPRadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewRadio2Dark:Lcom/oneplus/lib/widget/button/OPRadioButton;

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPRadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewRadio3Dark:Lcom/oneplus/lib/widget/button/OPRadioButton;

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPRadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewRadio4Dark:Lcom/oneplus/lib/widget/button/OPRadioButton;

    invoke-static {p2}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/button/OPRadioButton;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private saveColorInfo()V
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    const/4 v1, -0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    const-string v3, "oem_black_mode_accent_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-boolean v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIsCustomColor:Z

    const-string v2, "oem_black_mode_accent_color_index"

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    const-string v3, "oem_white_mode_accent_color"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-boolean v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIsCustomColor:Z

    const-string v2, "oem_white_mode_accent_color_index"

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :goto_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForAccentColor()V

    return-void
.end method

.method private sendTheme()V
    .locals 7

    invoke-direct {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->saveColorInfo()V

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set accentColor "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OPFullScreenGestureGuidePage"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oneplus_accent_color"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, ""

    if-nez v1, :cond_0

    const-string v1, "#"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    const-string v1, "persist.sys.theme.accentcolor"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    new-instance v3, Lcom/oneplus/sdk/utils/OpTheme;

    invoke-direct {v3, p0}, Lcom/oneplus/sdk/utils/OpTheme;-><init>(Landroid/content/Context;)V

    const-string v4, "oneplus_accentcolor"

    invoke-virtual {v1, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v3, v1}, Lcom/oneplus/sdk/utils/OpTheme;->enableTheme(Ljava/util/HashMap;)I

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lcom/oneplus/settings/OPColorPickerActivity$7;

    invoke-direct {v4, p0}, Lcom/oneplus/settings/OPColorPickerActivity$7;-><init>(Lcom/oneplus/settings/OPColorPickerActivity;)V

    const-wide/16 v5, 0x64

    invoke-virtual {v2, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setEditTextAtLastLocation(Landroid/widget/EditText;)V
    .locals 3

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    instance-of v1, v0, Landroid/text/Spannable;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Landroid/text/Spannable;

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    invoke-static {v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    :cond_0
    return-void
.end method

.method private setIndicator(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f080673

    const v1, 0x7f080671

    if-nez p1, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIndicator1:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIndicator2:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIndicator2:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIndicator1:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    const v0, 0x7f080674

    const v1, 0x7f080672

    if-nez p1, :cond_2

    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIndicator1:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIndicator2:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIndicator2:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIndicator1:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method addOptionsMenuItems(Landroid/view/Menu;)V
    .locals 2

    const/4 v0, 0x0

    const v1, 0x7f121840

    invoke-interface {p1, v0, v0, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0804ae

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    return-void
.end method

.method public createRippleDrawable(Ljava/lang/String;)Landroid/graphics/drawable/RippleDrawable;
    .locals 6

    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mDisabledCellColor:I

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v1

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    new-instance v1, Landroid/content/res/ColorStateList;

    const/4 v2, 0x1

    new-array v3, v2, [[I

    const/4 v4, 0x0

    new-array v5, v4, [I

    aput-object v5, v3, v4

    new-array v2, v2, [I

    iget v5, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mRippleEffectColor:I

    aput v5, v2, v4

    invoke-direct {v1, v3, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance v2, Landroid/graphics/drawable/RippleDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v0, v3}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v2
.end method

.method public init()V
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "oem_black_mode_accent_color"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "oem_black_mode_accent_color_index"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "oem_white_mode_accent_color"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "oem_white_mode_accent_color_index"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    :goto_0
    iget v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    iput v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mLastIndex:I

    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "oneplus_accent_color"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "#FF2196F3"

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColors:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    if-ltz v2, :cond_2

    iget-object v3, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    iget v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    if-ltz v2, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->setSelectionVisible()V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPickerView:Lcom/oneplus/settings/ui/ColorPickerView;

    if-eqz v2, :cond_4

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v2, v0}, Lcom/oneplus/settings/ui/ColorPickerView;->setColor(I)V

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/oneplus/settings/OPColorPickerActivity;->refreshUI(ILjava/lang/String;)V

    return-void
.end method

.method protected needShowWarningDialog()Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentColor:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public onBackPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->finish()V

    return-void
.end method

.method public onCancelPressed()V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 0

    return-void
.end method

.method public onColorChanged(I)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    const-string v1, "#"

    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/oneplus/settings/OPColorPickerActivity;->convertToRGB(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->setSelectionGone()V

    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    invoke-direct {p0, p1, v1}, Lcom/oneplus/settings/OPColorPickerActivity;->refreshUI(ILjava/lang/String;)V

    return-void
.end method

.method public onConfirmPressed()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->sendTheme()V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0d017c

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPColorPickerActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isAndroidModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120c31

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->finish()V

    return-void

    :cond_0
    invoke-virtual {p0, p0}, Lcom/oneplus/settings/OPColorPickerActivity;->setOnBackPressListener(Lcom/oneplus/settings/OnBackPressListener;)V

    const v0, 0x7f0a0558

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPColorPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/viewpager/widget/ViewPager;

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    const v0, 0x7f0a00e7

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPColorPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mBottomIndicator:Landroid/view/View;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x7f0d017d

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v3

    const v5, 0x7f080676

    const v6, 0x7f080677

    const v7, 0x7f0a0764

    if-eqz v3, :cond_1

    const-string v3, "#282828"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v8, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mBottomIndicator:Landroid/view/View;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-direct {p0, v2}, Lcom/oneplus/settings/OPColorPickerActivity;->initLightView(Landroid/view/View;)V

    invoke-direct {p0, v4}, Lcom/oneplus/settings/OPColorPickerActivity;->initDarkView(Landroid/view/View;)V

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setBackgroundResource(I)V

    goto :goto_0

    :cond_1
    const-string v3, "#f5f5f5"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v4, v8}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v8

    invoke-virtual {v2, v8}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v8, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mBottomIndicator:Landroid/view/View;

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v8, v3}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-direct {p0, v4}, Lcom/oneplus/settings/OPColorPickerActivity;->initLightView(Landroid/view/View;)V

    invoke-direct {p0, v2}, Lcom/oneplus/settings/OPColorPickerActivity;->initDarkView(Landroid/view/View;)V

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/View;->setBackgroundResource(I)V

    :goto_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    new-instance v3, Lcom/oneplus/settings/OPColorPickerActivity$ViewAdapter;

    invoke-direct {v3, p0, v0}, Lcom/oneplus/settings/OPColorPickerActivity$ViewAdapter;-><init>(Lcom/oneplus/settings/OPColorPickerActivity;Ljava/util/List;)V

    iget-object v5, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    invoke-virtual {v5, v3}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    iget-object v5, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewViewPager:Landroidx/viewpager/widget/ViewPager;

    new-instance v6, Lcom/oneplus/settings/OPColorPickerActivity$1;

    invoke-direct {v6, p0}, Lcom/oneplus/settings/OPColorPickerActivity$1;-><init>(Lcom/oneplus/settings/OPColorPickerActivity;)V

    invoke-virtual {v5, v6}, Landroidx/viewpager/widget/ViewPager;->setOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    const v5, 0x7f0a0467

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPColorPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    iput-object v5, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPreviewText:Landroid/widget/TextView;

    const v5, 0x7f0a045c

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPColorPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/oneplus/settings/ui/ColorPickerView;

    iput-object v6, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPickerView:Lcom/oneplus/settings/ui/ColorPickerView;

    iget-object v6, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPickerView:Lcom/oneplus/settings/ui/ColorPickerView;

    invoke-virtual {v6, p0}, Lcom/oneplus/settings/ui/ColorPickerView;->setOnColorChangedListener(Lcom/oneplus/settings/ui/ColorPickerView$OnColorChangedListener;)V

    const v6, 0x7f0600de

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/OPColorPickerActivity;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mRippleEffectColor:I

    const v6, 0x7f0600dd

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/OPColorPickerActivity;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mDisabledCellColor:I

    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/oneplus/settings/OPColorPickerActivity;->initAccentColors(Landroid/content/res/Resources;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/oneplus/settings/OPColorPickerActivity;->initAccentColorView(Landroid/view/View;)V

    const v6, 0x7f0a04ff

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/OPColorPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIndicator1:Landroid/view/View;

    const v6, 0x7f0a0500

    invoke-virtual {p0, v6}, Lcom/oneplus/settings/OPColorPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mIndicator2:Landroid/view/View;

    const/4 v6, 0x0

    invoke-direct {p0, v6}, Lcom/oneplus/settings/OPColorPickerActivity;->setIndicator(I)V

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPColorPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCustomView:Landroid/view/View;

    const v5, 0x7f0a045d

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPColorPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mPresetView:Landroid/view/View;

    const v5, 0x7f0a0174

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPColorPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/oneplus/lib/widget/button/OPButton;

    iput-object v5, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mModifyColorPicker:Lcom/oneplus/lib/widget/button/OPButton;

    iget-object v5, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mModifyColorPicker:Lcom/oneplus/lib/widget/button/OPButton;

    new-instance v6, Lcom/oneplus/settings/OPColorPickerActivity$2;

    invoke-direct {v6, p0}, Lcom/oneplus/settings/OPColorPickerActivity$2;-><init>(Lcom/oneplus/settings/OPColorPickerActivity;)V

    invoke-virtual {v5, v6}, Lcom/oneplus/lib/widget/button/OPButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v5, 0x7f0a0178

    invoke-virtual {p0, v5}, Lcom/oneplus/settings/OPColorPickerActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iput-object v5, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditButton:Landroid/view/View;

    iget-object v5, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditButton:Landroid/view/View;

    new-instance v6, Lcom/oneplus/settings/OPColorPickerActivity$3;

    invoke-direct {v6, p0}, Lcom/oneplus/settings/OPColorPickerActivity$3;-><init>(Lcom/oneplus/settings/OPColorPickerActivity;)V

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v5, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditButton:Landroid/view/View;

    const/16 v6, 0x8

    invoke-virtual {v5, v6}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    invoke-virtual {p0, p1}, Lcom/oneplus/settings/OPColorPickerActivity;->addOptionsMenuItems(Landroid/view/Menu;)V

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->sendTheme()V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPColorPickerActivity;->finish()V

    const/4 v0, 0x1

    return v0
.end method

.method public setSelectionGone()V
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iget v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mViews:[Landroid/view/View;

    if-eqz v2, :cond_0

    aget-object v2, v2, v1

    aget v1, v0, v1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    nop

    :array_0
    .array-data 4
        0x7f0a0134
        0x7f0a0135
        0x7f0a0138
        0x7f0a0139
        0x7f0a013a
        0x7f0a013b
        0x7f0a013c
        0x7f0a013d
        0x7f0a013e
        0x7f0a013f
        0x7f0a0136
        0x7f0a0137
    .end array-data
.end method

.method public setSelectionVisible()V
    .locals 3

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iget v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mSelectIndex:I

    if-ltz v1, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mViews:[Landroid/view/View;

    if-eqz v2, :cond_0

    aget-object v2, v2, v1

    aget v1, v0, v1

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_0
    return-void

    :array_0
    .array-data 4
        0x7f0a0134
        0x7f0a0135
        0x7f0a0138
        0x7f0a0139
        0x7f0a013a
        0x7f0a013b
        0x7f0a013c
        0x7f0a013d
        0x7f0a013e
        0x7f0a013f
        0x7f0a0136
        0x7f0a0137
    .end array-data
.end method

.method public showColotEditDialog()V
    .locals 6

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const v2, 0x7f0d01b0

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v2, 0x7f0a04ef

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/OPEditText;

    iput-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditView:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditView:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->requestFocus()Z

    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditView:Landroid/widget/EditText;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setSingleLine(Z)V

    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mCurrentTempColor:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    const/16 v5, 0x9

    if-ne v4, v5, :cond_0

    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_0
    iget-object v4, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditView:Landroid/widget/EditText;

    invoke-virtual {v4, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v4, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditView:Landroid/widget/EditText;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setSelection(I)V

    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mColorEditView:Landroid/widget/EditText;

    new-instance v4, Lcom/oneplus/settings/OPColorPickerActivity$8;

    invoke-direct {v4, p0}, Lcom/oneplus/settings/OPColorPickerActivity$8;-><init>(Lcom/oneplus/settings/OPColorPickerActivity;)V

    invoke-virtual {v2, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f121045

    invoke-virtual {v2, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f120b9f

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f120105

    new-instance v3, Lcom/oneplus/settings/OPColorPickerActivity$9;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/OPColorPickerActivity$9;-><init>(Lcom/oneplus/settings/OPColorPickerActivity;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mEditColorDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mEditColorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    iget-object v1, p0, Lcom/oneplus/settings/OPColorPickerActivity;->mEditColorDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    new-instance v2, Lcom/oneplus/settings/OPColorPickerActivity$10;

    invoke-direct {v2, p0}, Lcom/oneplus/settings/OPColorPickerActivity$10;-><init>(Lcom/oneplus/settings/OPColorPickerActivity;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method
