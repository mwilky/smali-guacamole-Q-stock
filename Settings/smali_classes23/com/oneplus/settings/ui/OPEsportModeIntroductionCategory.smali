.class public Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;
.super Landroidx/preference/Preference;
.source "OPEsportModeIntroductionCategory.java"


# instance fields
.field private mContentResolver:Landroid/content/ContentResolver;

.field private mContext:Landroid/content/Context;

.field private mEsportmodeIntroductionImageView:Landroid/widget/ImageView;

.field private mEsportmodeIntroductionSummary:Landroid/widget/TextView;

.field private mLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d01a2

    iput v0, p0, Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;->mLayoutResId:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0d01a2

    iput v0, p0, Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;->mLayoutResId:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f0d01a2

    iput v0, p0, Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;->mLayoutResId:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;->mContentResolver:Landroid/content/ContentResolver;

    iget v0, p0, Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;->mLayoutResId:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroidx/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    const v0, 0x7f0a024c

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;->mEsportmodeIntroductionImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a024d

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;->mEsportmodeIntroductionSummary:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;->mContentResolver:Landroid/content/ContentResolver;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;->mEsportmodeIntroductionImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080493

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;->mEsportmodeIntroductionImageView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPEsportModeIntroductionCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f080494

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :goto_0
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    return-void
.end method
