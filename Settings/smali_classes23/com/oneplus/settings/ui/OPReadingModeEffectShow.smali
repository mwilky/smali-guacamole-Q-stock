.class public Lcom/oneplus/settings/ui/OPReadingModeEffectShow;
.super Landroidx/preference/Preference;
.source "OPReadingModeEffectShow.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEffectImage:Landroid/widget/ImageView;

.field private mLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d0208

    iput v0, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mLayoutResId:I

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0d0208

    iput v0, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mLayoutResId:I

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroidx/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f0d0208

    iput v0, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mLayoutResId:I

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mContext:Landroid/content/Context;

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 1

    iget v0, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mLayoutResId:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->setLayoutResource(I)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Landroidx/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0229

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mEffectImage:Landroid/widget/ImageView;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v1}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Hans"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "zh_CN"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const-string v2, "Hant"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    const-string v2, "zh_TW"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mEffectImage:Landroid/widget/ImageView;

    const v3, 0x7f080594

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_2
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mEffectImage:Landroid/widget/ImageView;

    const v3, 0x7f080595

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mEffectImage:Landroid/widget/ImageView;

    const v3, 0x7f080596

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_4
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mEffectImage:Landroid/widget/ImageView;

    const v3, 0x7f080597

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_5
    :goto_1
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v2

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mEffectImage:Landroid/widget/ImageView;

    const v3, 0x7f080592

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_6
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPReadingModeEffectShow;->mEffectImage:Landroid/widget/ImageView;

    const v3, 0x7f080593

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    return-void
.end method
