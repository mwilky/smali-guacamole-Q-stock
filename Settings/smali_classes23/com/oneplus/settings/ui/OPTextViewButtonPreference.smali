.class public Lcom/oneplus/settings/ui/OPTextViewButtonPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "OPTextViewButtonPreference.java"


# instance fields
.field protected mButtonEnable:Z

.field protected mButtonString:Ljava/lang/String;

.field private mButtonVisible:Z

.field private mContext:Landroid/content/Context;

.field protected mIcon:Landroid/graphics/drawable/Drawable;

.field private mLeftIcon:Landroid/widget/ImageView;

.field private mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnRightIconClickListener:Landroid/view/View$OnClickListener;

.field private mRightButton:Landroid/widget/TextView;

.field private mRightIcon:Landroid/widget/ImageView;

.field private mRightIconVisible:Z

.field private mSummary:Landroid/widget/TextView;

.field private mSummaryString:Ljava/lang/String;

.field private mSummaryVisible:Z

.field private mTextButtonColor:Landroid/content/res/ColorStateList;

.field private mTextTitle:Landroid/widget/TextView;

.field private mTextTitleString:Ljava/lang/String;

.field private resid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d022c

    iput v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->resid:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const v0, 0x7f0d022c

    iput v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->resid:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const v0, 0x7f0d022c

    iput v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->resid:I

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->initViews(Landroid/content/Context;)V

    return-void
.end method

.method private initViews(Landroid/content/Context;)V
    .locals 2

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mContext:Landroid/content/Context;

    iget v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->resid:I

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->setLayoutResource(I)V

    const-string v0, ""

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mTextTitleString:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mSummaryString:Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mButtonString:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mButtonEnable:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mButtonVisible:Z

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mSummaryVisible:Z

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->creatOneplusPrimaryColorStateList(Landroid/content/Context;)Landroid/content/res/ColorStateList;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mTextButtonColor:Landroid/content/res/ColorStateList;

    return-void
.end method


# virtual methods
.method public getButtonString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mButtonString:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getLeftButton()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mRightButton:Landroid/widget/TextView;

    return-object v0
.end method

.method public getLeftTextTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mTextTitleString:Ljava/lang/String;

    return-object v0
.end method

.method public bridge synthetic getSummary()Ljava/lang/CharSequence;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->getSummary()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSummary()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mSummaryString:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mTextTitleString:Ljava/lang/String;

    return-object v0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    const v0, 0x7f0a0395

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mLeftIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a05b0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mRightButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mRightButton:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mButtonVisible:Z

    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mRightButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mTextButtonColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mRightButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mRightButton:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mButtonEnable:Z

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mRightButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mButtonString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a039a

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mTextTitle:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mTextTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mTextTitleString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0a0696

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mSummary:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mSummary:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mSummaryString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mSummary:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mSummaryVisible:Z

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_1

    :cond_1
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    const v0, 0x7f0a05b1

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mRightIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mRightIcon:Landroid/widget/ImageView;

    iget-boolean v1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mRightIconVisible:Z

    if-eqz v1, :cond_2

    goto :goto_2

    :cond_2
    move v2, v3

    :goto_2
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mRightIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mOnRightIconClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mLeftIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    return-void
.end method

.method public setButtonEnable(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mButtonEnable:Z

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->notifyChanged()V

    return-void
.end method

.method public setButtonString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mButtonString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->notifyChanged()V

    return-void
.end method

.method public setButtonVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mButtonVisible:Z

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->notifyChanged()V

    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->notifyChanged()V

    return-void
.end method

.method public setLeftTextTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mTextTitleString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->notifyChanged()V

    return-void
.end method

.method public setOnButtonClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mOnClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnRightIconClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mOnRightIconClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setRightIconVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mRightIconVisible:Z

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->notifyChanged()V

    return-void
.end method

.method public setSummary(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mSummaryString:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->notifyChanged()V

    return-void
.end method

.method public setSummaryVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->mSummaryVisible:Z

    invoke-virtual {p0}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->notifyChanged()V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPTextViewButtonPreference;->setLeftTextTitle(Ljava/lang/String;)V

    return-void
.end method
